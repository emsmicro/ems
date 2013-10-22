<?php

use Nette\Object;
/*
 * Model Produkt class
 */
class Produkt extends Model
{
	/** 
	 * @var string
	 * @table
	 */
	private $table = 'produkty';

	/** 
	 * full query for detailed product data 
	 * @var type string
	 */
	private $full_detail_query = "SELECT 
									COALESCE(n.popis,'.. nepřiřazen ..') [nabidka], 
									COALESCE(n.id,0) [idn], 
									d.vyrobni_davka [davka], 
									d.mnozstvi [ks],
									COALESCE(s.id_stav,0) [id_stav], 
									COALESCE(s.zkratka,'žádný') [stav], 
									s.popis [nstav], 
									s.username, s.uzivatel, s.id_user, s.datzmeny, 
									n.prij_datum [ze_dne],
									p.*, p.id [idp],
									f.id [idf], 
									f.nazev [firma], 
									f.zkratka [zfirma], 
									n.id_set_sazeb [idss], 
									n.id_set_sazeb_o [idsso],
									ss.nazev [sazby], 
									ss.kalkulace [vzorec],
									so.nazev [sazby_o],
									ka.zkratka [kalkzkratka],
									ka.nazev [kalknazev]
									FROM produkty p 
										LEFT JOIN firmy f ON p.id_firmy=f.id
										LEFT JOIN (SELECT DISTINCT id_produkty, id_nabidky FROM ceny) c ON p.id = c.id_produkty 
											LEFT JOIN nabidky n ON c.id_nabidky = n.id 
											LEFT JOIN set_sazeb ss ON n.id_set_sazeb=ss.id
											LEFT JOIN kalkulace ka ON ss.kalkulace=ka.id
											LEFT JOIN set_sazeb_o so ON n.id_set_sazeb_o=so.id
										LEFT JOIN (SELECT id_nabidky, id_produkty, vyrobni_davka, mnozstvi,
											ROW_NUMBER() OVER (PARTITION BY id_nabidky, id_produkty ORDER BY mnozstvi DESC) AS rd
											FROM pocty
											) d ON n.id=d.id_nabidky AND p.id=d.id_produkty AND rd=1
										LEFT JOIN (SELECT sp.id_produkty, sp.datum_zmeny [datzmeny], st.zkratka, st.popis, st.id [id_stav],
													u.username, u.jmeno+' '+u.prijmeni [uzivatel], u.id [id_user],
											ROW_NUMBER() OVER (PARTITION BY sp.id_produkty ORDER BY sp.datum_zmeny DESC) AS rn
											FROM stav_produkt sp
											LEFT JOIN stav st ON sp.id_stav = st.id
											LEFT JOIN users u ON sp.id_user = u.id
											) s ON p.id = s.id_produkty AND rn=1";
		

    public function __construct($arr = array())
    {
        parent::__construct($arr);
    }
	
	/**
	 * 
	 *	Vrací obsah tabulky 
	 *  @return record set
	 */

	public function show()
	{
		if($this->filter<>''){
			$sql_cmd = $this->full_detail_query . "	WHERE CAST(n.popis as varchar)+p.zkratka+p.nazev+f.nazev LIKE '%$this->filter%'";
			
		} else {
			$sql_cmd = $this->full_detail_query;
		}
		if($this->limit==0 && $this->offset==0){
			return dibi::query($sql_cmd);
		} else {
			$sql_pgs = $this->pagedSql($sql_cmd, '', 'p.id DESC');
			return dibi::query($sql_pgs);
		}
	}
	
	
	/**
	 *
	 * @param type $id_firmy
	 * @param type $id_nabidky
	 *	Vrací atributy tabulky pro konkrétní firmu
	 *  @return record set
	 */
	public function showProduct($id_firmy=0, $id_nabidky=0)
	{	
		$cond="";
		if($id_nabidky==0){
			$cond=" WHERE p.id_firmy=$id_firmy";
		}
		if($id_firmy==0){
			$cond=" WHERE c.id_nabidky=$id_nabidky";
		}
		return dibi::query($this->full_detail_query . $cond);
	}
		
	/**
	 *
	 * @param type $limitStatus  .. number of id status
	 * @param type $isIn .. NOT = id NOT IN list of id status, "" = is in list
	 * @return type records
	 */
	public function showByStatus($limitStatus = 0, $isIn="NOT"){
		$cond = "";
		if($limitStatus>0){
			$cond=" WHERE id_stav=$limitStatus";
		}
		$sql = "$this->full_detail_query WHERE 
						p.id $isIn IN (SELECT id_produkty FROM stav_produkt $cond)";
		return dibi::query( $sql );
	}
	
	/**
	 * 
	 * Vrací detalní data pro konkrétní produkt
	 * @param int
	 * @return record set
	 */		
	public function find($id=0)
	{
		return dibi::query($this->full_detail_query . "	WHERE p.id=$id");
		
	}


		/**
	 * 
	 * Vrací detailní data o cene dle id ceny
	 * @param int
	 * @return record set
	 */		
	public function findPrice($id)
	{
		return dibi::query("
						SELECT DISTINCT
							c.id_nabidky,
							c.id_produkty,
							n.id_set_sazeb,
							c.id_meny,
							c.id_pocty,
							c.id_vzorec,
							n.id_set_sazeb_o,
							k.param
						FROM ceny c
						LEFT JOIN nabidky n ON c.id_nabidky = n.id
						LEFT JOIN kalkulace k ON c.id_vzorec = k.id
						WHERE c.id=$id
				")->fetch();
	}

	
	
	/**
	 * 
	 * Vrací náklady vybraného produktu
	 * @param int
	 * @return record set
	 */		
	public function costs($id)
	{

		return dibi::query("SELECT tn.nazev, tn.zkratka, n.hodnota
									FROM naklady n
									LEFT JOIN typy_nakladu tn ON n.id_typy_nakladu=tn.id
								WHERE n.id_produkty=$id
								ORDER BY tn.poradi")->fetchAll();
	}

	/**
	 * 
	 * Vrací ceny vybraného produktu + nabídky
	 * @param int
	 * @return record set
	 */		
	public function prices($id, $id_nabidky)
	{
		if($id>0 && $id_nabidky>0){
			return dibi::query("SELECT c.id_produkty [id], c.id_nabidky [idn], n.popis [nabidka], c.aktivni, c.id_vzorec, c.id [id_cena],
									t.zkratka, RTRIM(t.zkratka2) [zkratka2], t.id [idt], t.nazev, c.hodnota, c.hodnota_cm, 
									m.zkratka [mena], m.nazev [n_mena], m.id [idm], 
									COALESCE(k.kurz_prodejni,1) [kurz],
									p.id [idpoc], p.vyrobni_davka [davka], p.mnozstvi, t.poradi, 
									v.zkratka [kvzorec], v.nazev [nvzorec], v.popis [pvzorec]
									FROM ceny c
										LEFT JOIN typy_cen	t ON c.id_typy_cen=t.id
										LEFT JOIN meny		m ON c.id_meny=m.id
										LEFT JOIN kurzy		k ON c.id_kurzy=k.id
										LEFT JOIN pocty		p ON c.id_pocty=p.id
										LEFT JOIN nabidky	n ON c.id_nabidky=n.id
										LEFT JOIN kalkulace v ON c.id_vzorec=v.id
								 WHERE c.hodnota>0 AND c.id_produkty=$id AND c.id_nabidky=$id_nabidky
									ORDER BY id, c.id, m.id, p.id, t.poradi
									")->fetchAll();
		}else{
			return null;
		}
		//return $this->connection->select('*')->from($this->table)->where('id_produkty=%i', $idp);

	}

	/**
	 * Nastavuje jako aktivní zvolenou cenu
	 * @param type $id
	 * @param type $id_nabidky
	 * @param type $id_cena
	 * @return boolean
	 */
	public function activateProductPrice($id, $id_nabidky, $id_cena)
	{
		if($id_nabidky>0 && $id>0 && $id_cena>0){
			$d1 = dibi::query("UPDATE ceny SET aktivni = 0
								WHERE	id_nabidky = $id_nabidky AND id_produkty = $id");
			if ($d1) {
				$d2 = dibi::query("UPDATE ceny SET aktivni = 1
									WHERE	id_nabidky = $id_nabidky 
											AND id_produkty = $id
											AND id = $id_cena");
				return $d2;
			} else {
				return FALSE;
			}
		} else {
			return FALSE;
		}
		
	}
	
	/**
	 * Updates data in the table
	 * @params int, array
	 * @return mixed
	 */
	public function update($id, $data = array())
	{
		return $this->connection->update($this->table, $data)->where('id=%i', $id)->execute();
	}

	/**
	 * Inserts data to the table
	 * @param array
	 * @return Identifier
	 */
	public function insert($data = array())
	{
		return $this->connection->insert($this->table, $data)->execute(dibi::IDENTIFIER);
	}

	/**
	 * Deletes record in the table
	 * @param int
	 * @return mixed
	 */
	public function delete($id)
	{
		// výmaz kusovníků produktu
		$mat = new Material;
		$rmat = $mat->delete(0, $id);
		$ope = new Operace;
		$rope = $ope->delete(0, $id);
		$rdel = $this->connection->delete($this->table)->where('id=%i', $id)->execute();
		return $rdel;
	}

	/**
	 * Asigns product to offer
	 * @param int, int id_product, id_nabidky
	 * @return void
	 */
	public function assign2offer($idp, $idn)
	{
		$result = dibi::query("SELECT count(*) FROM ceny WHERE id_nabidky=$idn AND id_produkty=$idp");
		$cnt = $result->fetchSingle();
		if ($cnt==0)
		{
			// k přiřazení dojde, pakliže už nebylo přiřazení produkt -> nabídka pprovedeno již dříve
			$data = array('id_nabidky' => $idn, 'id_produkty' => $idp, 'id_typy_cen' => 1, 'id_meny' => 1 );
			$this->connection->insert('ceny', $data)->execute();
		} 
	}

	/**
	 * Asigns product to offer
	 * @param int, int id_product, id_nabidky
	 * @return void
	 */
	public function remove4offer($idp, $idn)
	{
		$this->connection->delete("ceny")->where("id_nabidky=$idn AND id_produkty=$idp")->execute();
	}

	/**
	 * Recalculate costs of products
	 * @param int, int id_product, id_set_sazeb_operací
	 * @return void
	 */
	public function costsCalc($id, $idsso)
	{
		if($id>0 && $idsso>0){
			return dibi::query("EXECUTE costsCalculate $id, $idsso");
		} else {
			return false;
		}

	}

	/**
	 * Recalculate prices of products by currency
	 * @param int, int, int, int, int $id_nabidka, $id_produkt, , $id_set_sazeb, $id_meny, $id_pocty, $id_vzorec
	 * @return void
	 */
	public function pricesCalc($id_nabidka, $id_produkt, $id_set_sazeb, $id_meny, $id_pocty, $id_vzorec = 0)
	{
		if($id_nabidka>0 && $id_produkt>0 && $id_set_sazeb>0 && $id_meny>0 && $id_pocty>0){
			//zjištění dalších parametrů výpočtu
			if ($id_vzorec>0){
				$proc = dibi::query("SELECT id [kid], procedura [procedura], RTRIM(param) [param]
										FROM kalkulace
										WHERE id = $id_vzorec")->fetchAll();
			} else {
				$proc = dibi::query("SELECT COALESCE(k.id,0) [kid], k.procedura [procedura], RTRIM(k.param) [param]
										FROM nabidky n
										LEFT JOIN set_sazeb s ON n.id_set_sazeb=s.id
										LEFT JOIN kalkulace k ON s.kalkulace=k.id
										WHERE n.id = $id_nabidka")->fetchAll();
			}
			if($proc){
				$procedura = $proc[0]['procedura'];
				if ($id_vzorec == 0) {
					$id_vzorec = $proc[0]['kid'];
				}
				$parameter = trim($proc[0]['param']);
				if ($parameter==""){$parameter = "0";}
				$result = dibi::query("
									DECLARE @r_ins int, @r_upd int
									EXECUTE $procedura	
												$id_nabidka, 
												$id_produkt, 
												$id_set_sazeb, 
												$id_meny, 
												$id_pocty,
												$id_vzorec,
												$parameter,
												@r_ins OUTPUT,
												@r_upd OUTPUT
									SELECT @r_ins [r_ins], @r_upd [r_upd]
									")->fetch();
				return $result;
			} else {
				return false;
			}
		} else {
			return false;
		}

	}
	
	/**
	 * Produkty a ceny nabídky
	 * @param type $id_nabidka
	 * @param type $id_mena
	 * @param type $id_produkt
	 * @return type 
	 */
	public function getOfferPrices($id_nabidka, $aktivni = 1, $id_produkt = 0){
		$cond1 = "";
		$cond2 = "";
		if($id_produkt>0)	{$cond1 = " AND c.id_produkty=$id_produkt ";}
		if($aktivni>0)		{$cond2 = " AND c.aktivni=$aktivni ";}
		return dibi::query("SELECT c.id_nabidky, c.id_produkty, c.id_typy_cen [idtc], t.zkratka, c.hodnota, c.hodnota_cm, c.id_meny, 
								c.id_pocty, n.mnozstvi, n.vyrobni_davka, m.zkratka [mena],
								p.zkratka, p.nazev, t.nazev [nceny], c.aktivni
								FROM ceny c
								LEFT JOIN produkty p ON c.id_produkty=p.id
								LEFT JOIN typy_cen t ON c.id_typy_cen=t.id
								LEFT JOIN pocty n ON c.id_pocty=n.id
								LEFT JOIN meny m ON c.id_meny=m.id
							WHERE c.id_nabidky=$id_nabidka $cond1 $cond2 AND c.id_typy_cen>6
							ORDER BY c.id_produkty, c.id, t.poradi, c.aktivni DESC")->fetchAll();
	}

	/**
	 * Return all prices for product on offer
	 * @param type $id_produkt
	 * @param type $id_nabidka
	 * @param type $id_cena
	 * @return type
	 */
	public function getProductPrices($id_produkt, $id_nabidka, $id_cena = 0){
		$cond1 = "";
		if($id_cena>0)	{$cond1 = " AND ce.id = $id_cena ";}
		return dibi::query("
								SELECT	ce.id, ce.id_nabidky, ce.id_produkty, ce.id_typy_cen, tc.zkratka, 
										ce.hodnota, ce.hodnota_cm, po.mnozstvi, po.vyrobni_davka, tc.poradi
									FROM ceny ce
									LEFT JOIN typy_cen tc ON ce.id_typy_cen = tc.id
									LEFT JOIN pocty po ON ce.id_pocty = po.id
									WHERE	ce.id_nabidky = $id_nabidka 
											AND ce.id_produkty = $id_produkt $cond1
									ORDER BY ce.id, poradi			
			")->fetchAll();
	}
	
	
	public function getProductCosts($id_produkt){
		return dibi::query("
								SELECT na.id, na.id_produkty, na.id_typy_nakladu, tn.zkratka, na.hodnota, tn.poradi
									FROM naklady na
									LEFT JOIN typy_nakladu tn ON na.id_typy_nakladu = tn.id
									WHERE na.id_produkty = $id_produkt
									ORDER BY poradi		
			")->fetchAll();
	}
	
	/**
	 * Calculate abolute and relative parameters of price
	 * @param type $id_produkt
	 * @param type $id_nabidka
	 * @param type $id_cena
	 * @return type
	 */
	public function calcAddedValue($id_produkt, $id_nabidka, $id_cena = 0)
	{
		$des_mist = 2;
		$naklady = $this->getProductCosts($id_produkt);
		$ceny = $this->getProductPrices($id_produkt, $id_nabidka, $id_cena);
		$aval = array();
		//náklady do proměnných
		$matn = 0;
		$matc = 0;
		$rucp = 0;
		$rucd = 0;
		$strp = 0;
		$strd = 0;
		$monp = 0;
		$mond = 0;
		$ostp = 0;
		$jedn = 0;
		foreach ($naklady as $naklad) {
			$k = trim($naklad->zkratka);
			switch(true){
				case ($k == 'MaterialN'):
					$matn = round((float) $naklad->hodnota, $des_mist);
					break;
				case ($k == 'MaterialC'):
					$matc = round((float) $naklad->hodnota, $des_mist);
					break;
				case ($k == 'OperRucPN'):
					$rucp = round((float) $naklad->hodnota, $des_mist);
					break;
				case ($k == 'OperRucDN'):
					$rucd = round((float) $naklad->hodnota, $des_mist);
					break;
				case ($k == 'OperMontPN'):
					$monp = round((float) $naklad->hodnota, $des_mist);
					break;
				case ($k == 'OperMontDN'):
					$mond = round((float) $naklad->hodnota, $des_mist);
					break;
				case ($k == 'OperStrPN'):
					$strp = round((float) $naklad->hodnota, $des_mist);
					break;
				case ($k == 'OperStrDN'):
					$strd = round((float) $naklad->hodnota, $des_mist);
					break;
				case ($k == 'OstatniPN'):
					$ostp = round((float) $naklad->hodnota, $des_mist);
					break;
				case ($k == 'JednorazN'):
					$jedn = round((float) $naklad->hodnota, $des_mist);
			}
		}
		// ceny do promennych
		$i=0;
		$ic = 0;
		$cmat = 0;
		$cruc = 0;
		$cstr = 0;
		$cost = 0;
		$cvyr = 0;
		$crsp = 0;
		$czsk = 0;
		$cpro = 0;
		$cnab = 0;
		$cjed = 0;
		$mnoz = 0;
		$davk = 0;
		$best = 0;
		$proc = 0;
		foreach ($ceny as $cena) {
			if($ic == 0){$ic = $cena->id;}
			//zapsani AVAL do pole
			if($cena->id <> $ic && $davk>0 && $cnab>0) 
			{
				$i++;
				$aval[$ic] = array();
				$aval[$ic]['mnozstvi']	= $mnoz;
				$aval[$ic]['davka']		= $davk;
				$aval[$ic]['maternak']	= $mnoz * $matn;
				$aval[$ic]['rucninak']	= $mnoz * ($rucp + $rucd/$davk);
				$aval[$ic]['montanak']	= $mnoz * ($monp + $mond/$davk);
				$aval[$ic]['strojnak']	= $mnoz * ($strp + $strd/$davk);
				$aval[$ic]['ostatnak']	= $mnoz * $ostp;
				$aval[$ic]['jednonak']	= $jedn;
				$aval[$ic]['vyrobnak']	= $mnoz * $cvyr;
				$aval[$ic]['sluzbnak']	= $mnoz * ($cvyr-$matn);
				$aval[$ic]['trzba']		= $mnoz * $cnab;
				$aval[$ic]['trzbamat']	= $mnoz * $cmat;
				$aval[$ic]['trzbajed']	= $cjed;
				$aval[$ic]['kalkzisk']	= $mnoz * $czsk;
				$aval[$ic]['spravrez']	= $mnoz * $crsp;
				$aval[$ic]['avalkalk']	= $aval[$ic]['trzba'] - $aval[$ic]['vyrobnak'] + ($aval[$ic]['trzbamat'] - $aval[$ic]['maternak']);
				$aval[$ic]['avalcist']	= $aval[$ic]['trzba'] + $aval[$ic]['trzbajed']
											- $aval[$ic]['maternak'] 
											- $aval[$ic]['strojnak'] 
											- $aval[$ic]['rucninak']
											- $aval[$ic]['montanak']
											- $aval[$ic]['ostatnak']
											- $aval[$ic]['jednonak'];
				$matnproc = $matn/$cnab * 100;
				$sluzproc = ($cvyr-$matn)/$cnab * 100;
				$sprvproc = $crsp/$cnab * 100;
				$ziskproc = $czsk/$cnab * 100;
				$aval[$ic]['matnproc']	= $matnproc;
				$aval[$ic]['matcproc']	= ($cmat/$matn - 1) * 100;
				$aval[$ic]['sluzproc']	= $sluzproc;
				$aval[$ic]['sprvproc']	= $sprvproc;
				$aval[$ic]['ziskproc']	= $ziskproc;
				$aval[$ic]['avalproc']	= $aval[$ic]['avalcist']/$aval[$ic]['trzba']*100;
				$aval[$ic]['avalbest']	= false;
				$aval[$ic]['id_cena']	= $ic;
				$aval[$ic]['c_poradi']	= $i;
				$aval[$ic]['datagraf']	=  "[['Material',".round($matnproc,2)."],['Vyr. sluzby',".round($sluzproc,2)."],['Spr. rezie',".round($sprvproc,2)."],['Zisk',".round($ziskproc,2)."]]";
				
				if($aval[$ic]['avalproc'] > $proc){
					$best = $ic;
					$proc = $aval[$ic]['avalproc'];
				}
				
				$ic = $cena->id;
				$cmat = 0;
				$cruc = 0;
				$cmon = 0;
				$cstr = 0;
				$cost = 0;
				$cvyr = 0;
				$crsp = 0;
				$czsk = 0;
				$cpro = 0;
				$cnab = 0;
				$cjed = 0;
				$mnoz = 0;
				$davk = 0;
			}
			
			$k = trim($cena->zkratka);
			switch(true){
				case ($k == 'MaterialC'):
					$cmat = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'RucPraceC'):
					$cruc = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'MontPraceC'):
					$cmon = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'StrPraceC'):
					$cstr = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'OstSluzbC'):
					$cost = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'VyrobniC'):
					$cvyr = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'SprvRezie'):
					$crsp = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'Zisk'):
					$czsk = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'ProdCenaP'):
					$cpro = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'CenaNab'):
					$cnab = round((float) $cena->hodnota, $des_mist);
					break;
				case ($k == 'JednorazC'):
					$cjed = round((float) $cena->hodnota, $des_mist);
			}
			$mnoz = (float) $cena->mnozstvi;
			$davk = (float) $cena->vyrobni_davka;
		}

		//zapsani last AVAL do pole
		if($ic > 0 && $davk>0 && $cnab>0) {
			$i++;
			$aval[$ic] = array();
			$aval[$ic]['mnozstvi']	= $mnoz;
			$aval[$ic]['davka']		= $davk;
			$aval[$ic]['maternak']	= $mnoz * $matn;
			$aval[$ic]['rucninak']	= $mnoz * ($rucp + $rucd/$davk);
			$aval[$ic]['montanak']	= $mnoz * ($monp + $mond/$davk);
			$aval[$ic]['strojnak']	= $mnoz * ($strp + $strd/$davk);
			$aval[$ic]['ostatnak']	= $mnoz * $ostp;
			$aval[$ic]['jednonak']	= $jedn;
			$aval[$ic]['vyrobnak']	= $mnoz * $cvyr;
			$aval[$ic]['sluzbnak']	= $mnoz * ($cvyr-$matn);
			$aval[$ic]['trzba']		= $mnoz * $cnab;
			$aval[$ic]['trzbamat']	= $mnoz * $cmat;
			$aval[$ic]['trzbajed']	= $cjed;
			$aval[$ic]['kalkzisk']	= $mnoz * $czsk;
			$aval[$ic]['spravrez']	= $mnoz * $crsp;
			$aval[$ic]['avalkalk']	= $aval[$ic]['trzba'] - $aval[$ic]['vyrobnak'] + ($aval[$ic]['trzbamat'] - $aval[$ic]['maternak']);
			$aval[$ic]['avalcist']	= $aval[$ic]['trzba'] + $aval[$ic]['trzbajed']
										- $aval[$ic]['maternak'] 
										- $aval[$ic]['strojnak'] 
										- $aval[$ic]['rucninak']
										- $aval[$ic]['montanak']
										- $aval[$ic]['ostatnak']
										- $aval[$ic]['jednonak'];
			$matnproc = $matn/$cnab * 100;
			$sluzproc = ($cvyr-$matn)/$cnab * 100;
			$sprvproc = $crsp/$cnab * 100;
			$ziskproc = $czsk/$cnab * 100;
			$aval[$ic]['matnproc']	= $matnproc;
			$aval[$ic]['matcproc']	= ($cmat/$matn - 1) * 100;
			$aval[$ic]['sluzproc']	= $sluzproc;
			$aval[$ic]['sprvproc']	= $sprvproc;
			$aval[$ic]['ziskproc']	= $ziskproc;
			$aval[$ic]['avalproc']	= $aval[$ic]['avalcist']/$aval[$ic]['trzba']*100;
			$aval[$ic]['avalbest']	= false;
			$aval[$ic]['id_cena']	= $ic;
			$aval[$ic]['c_poradi']	= $i;
			$aval[$ic]['datagraf']	=  "[['Material',".round($matnproc,2)."],['Vyr. sluzby',".round($sluzproc,2)."],['Spr. rezie',".round($sprvproc,2)."],['Zisk',".round($ziskproc,2)."]]";
				
			if($aval[$ic]['avalproc'] > $proc){
				$best = $ic;
				$proc = $aval[$ic]['avalproc'];
			}
		}
		if($best > 0){
			$aval[$best]['avalbest'] = $best;
		}
		return $aval;
	}

	/**
	 * Produkty a ceny všech nabídek firmy
	 * @param type $id_nabidka
	 * @param type $id_mena
	 * @param type $id_produkt
	 * @return type 
	 */
	public function getOffersCompany($id_firma, $id_mena, $id_produkt = 0){
		$cond = "";
		if($id_produkt>0){$cond = " AND c.id_produkty=$id_produkt ";}
		return dibi::query("SELECT c.id_nabidky, c.id_produkty, c.id_typy_cen [idtc], t.zkratka, c.hodnota, c.hodnota_cm, c.id_meny, 
								c.id_pocty, n.mnozstvi, n.vyrobni_davka, m.zkratka [mena],
								p.zkratka, p.nazev, t.nazev [nceny]
								FROM ceny c
								LEFT JOIN nabidky o  ON c.id_nabidky=o.id
								LEFT JOIN produkty p ON c.id_produkty=p.id
								LEFT JOIN typy_cen t ON c.id_typy_cen=t.id
								LEFT JOIN pocty n ON c.id_pocty=n.id
								LEFT JOIN meny m ON c.id_meny=m.id
							WHERE o.id_firmy=$id_firma $cond  AND c.id_typy_cen>6
							ORDER BY c.id_produkty, c.id_meny, c.id_pocty");
	}
	
	/**
	 *
	 * @param type $id_nabidka
	 * @param type $id_produkt
	 * @param type $id_meny
	 * @param type $id_pocty
	 * @return type 
	 */
	public function pricesErase($id_cena)
	{
		if($id_cena>0){
			return dibi::query("DELETE FROM ceny WHERE id=$id_cena");
		} else {
			return false;
		}
	}

	/**
	 *
	 * @param type $id_nabidka
	 * @param type $id_produkt
	 * @param type $id_meny
	 * @param type $id_pocty
	 * @return type 
	 */
	public function getPriceNabOld($id_nabidka, $id_produkt, $id_meny, $id_pocty)
	{
		if($id_nabidka>0 && $id_produkt>0 && $id_meny>0 && $id_pocty>0){
		return dibi::query("SELECT	c.*
									, COALESCE(k.kurz_prodejni,1) [kurz]
									, COALESCE(m.zkratka, 'Kč') [mena] 
									, t.id [tid]
							FROM ceny c
								LEFT JOIN typy_cen t ON c.id_typy_cen=t.id 
								LEFT JOIN kurzy	k ON c.id_kurzy=k.id
								LEFT JOIN meny	m ON c.id_meny=m.id
								WHERE t.zkratka = 'CenaNab'
									AND c.id_nabidky=$id_nabidka AND c.id_produkty=$id_produkt 
									AND c.id_meny=$id_meny AND c.id_pocty=$id_pocty");
		} else {
			return false;
		}
	}

	/**
	 * 
	 * @param type $id
	 * @return boolean
	 */
	public function getPriceNab($id)
	{
		if($id > 0){
		return dibi::query("SELECT	c.*
									, COALESCE(k.kurz_prodejni,1) [kurz]
									, COALESCE(m.zkratka, 'Kč') [mena] 
									, t.id [tid]
							FROM ceny c
								LEFT JOIN typy_cen t ON c.id_typy_cen=t.id 
								LEFT JOIN kurzy	k ON c.id_kurzy=k.id
								LEFT JOIN meny	m ON c.id_meny=m.id
								WHERE t.zkratka = 'CenaNab' AND c.id=$id");
		} else {
			return false;
		}
	}
	

	public function updPriceNab($id, $id_typceny, $hodnota, $hodnota_cm)
	{
		if($id > 0){
		return dibi::query("UPDATE ceny SET hodnota = $hodnota, hodnota_cm = $hodnota_cm
								WHERE id_typy_cen = $id_typceny AND	id = $id");
		} else {
			return false;
		}
	}	
	
	
	
	/**
	 *
	 * @param type $id_nabidka
	 * @param type $id_produkt
	 * @param type $id_meny
	 * @param type $id_pocty
	 * @return type 
	 */
	public function updPriceNabOld($id_nabidka, $id_produkt, $id_meny, $id_pocty, $id_typceny, $hodnota, $hodnota_cm)
	{
		if($id_nabidka>0 && $id_produkt>0 && $id_meny>0 && $id_pocty>0){
		return dibi::query("UPDATE ceny SET hodnota = $hodnota, hodnota_cm = $hodnota_cm
							WHERE	id_typy_cen = $id_typceny
									AND id_nabidky = $id_nabidka AND id_produkty = $id_produkt 
									AND id_meny = $id_meny AND id_pocty = $id_pocty");
		} else {
			return false;
		}
	}	
	
	/**
	 * Insert status of product
	 * @param int int int id_produktu, typ stavu / viz číselník stavy, id_user
	 * @return mixed
	 */
	public function insertProductStatus($id, $status, $id_user)
	{
		if($id==0){return false;}
		//("INSERT id_nabidky, id_stav, datum_zmeny, id_user");
		$result = dibi::query("SELECT count(*) FROM stav_produkt WHERE id_produkty=$id AND id_stav=$status");
		$cnt = $result->fetchSingle();
		if ($cnt>0)
		{
			//mozna update?? co, pokud se vrati stav o krok zpet?? asi delete
			dibi::query("DELETE FROM stav_produkt WHERE id_produkty=$id AND id_stav=$status");
		} 
		if ($status == 21){
			//vymazat případný status "ODEMČENO"
			dibi::query("DELETE FROM stav_produkt WHERE id_produkty=$id AND id_stav=22");
		}
		if ($status == 22){
			//vymazat případný status "UZAMČENO"
			dibi::query("DELETE FROM stav_produkt WHERE id_produkty=$id AND id_stav=21");
		}
		$data = array('id_produkty' => $id, 'id_stav' => $status, 'datum_zmeny' => date("Ymd H:i:s"), 'id_user' => $id_user );
		return $this->connection->insert('stav_produkt', $data)->execute();

	}
	

	/**
	 * Nastaví hromadně status všem produktům, které patří do zadané nabídky
	 * @param type $id_nabidky
	 * @return type array
	 */
	public function setStatusProdsByOffers($id_nabidky, $status, $id_user)
	{
		$prods = dibi::query("SELECT DISTINCT id_produkty FROM ceny WHERE id_nabidky = $id_nabidky")->fetchAll();
		$i=0;
		foreach ($prods as $prod){
			$res = $this->insertProductStatus($prod['id_produkty'], $status, $id_user);
			if($res){$i++;}
		}		
		return $i>0;
	}
	
	
	/**
	 * Erase status of product
	 * @param int int id_produktu, id_stavu, id_user
	 * @return mixed
	 */
	public function deleteProductStatus($id=0, $status=0, $id_user=0)
	{
		if($iprod>0 && $istat>0 && $iuser>0){
			return	dibi::query("DELETE FROM stav_produkt WHERE id_produkty=$id AND id_stav=$status AND id_user=$id_user");
		}

	}
	
	/**
	 *
	 * @param type $id
	 * @param type $id_meny
	 * @param type $id_pocty
	 * @param type $round
	 * @return type 
	 */

	public function getProdPrice4PieGraph($id, $id_meny=1, $id_pocty=1, $round = 2){
		$data = $this->getProductPriceDetail($id, $id_meny, $id_pocty, $round);
		return $this->dataPairsForGraph($data, 1);
	}

	/**
	 *
	 * @param type $id
	 * @param type $id_meny
	 * @param type $id_pocty
	 * @param type $round
	 * @return type 
	 */
	public function getProdPrice4BarGraph($id, $id_meny=1, $id_pocty=1, $round = 2){
		$data = $this->getProductPriceDetail($id, $id_meny, $id_pocty, $round, 1);
		return $this->dataPairsForGraph($data, 0, 1, $round);
	}
	
	
	/**
	 *
	 * @param type $id
	 * @param type $id_meny
	 * @param type $id_pocty
	 * @param type $round
	 * @return type pair data name, value
	 */
	
	public function getProductPriceDetail($id, $id_meny=1, $id_pocty=1, $round = 2, $desc_order = 0){
		$order = "";
		if($desc_order==1){$order = " ORDER BY tc.id DESC";}
		/*
		$data = dibi::query("SELECT tc.zkratka2 [name], ROUND(c.hodnota,$round) [value] 
								FROM ceny c
								LEFT JOIN typy_cen tc ON c.id_typy_cen = tc.id
								WHERE 
									c.id_pocty = (SELECT MIN(id) FROM pocty WHERE id_produkty=$id) 
									AND c.id_produkty = $id 
									AND c.id_meny = $id_meny 
									AND c.id_typy_cen<7  
								$order
							")->fetchAll();
		*/
		$data = dibi::query("SELECT tc.zkratka2 [name], ROUND(c.hodnota,$round) [value] 
								FROM ceny c
								LEFT JOIN typy_cen tc ON c.id_typy_cen = tc.id
								WHERE	c.id_produkty = $id 
										AND c.aktivni = 1 
										AND c.id_typy_cen<7  
								$order
							")->fetchAll();
		return $data;
	}
	
	
	/**
	 * Copy product include materials, operations
	 * @param type $id
	 * @param type $id_user
	 * @return type 
	 */
	public function copyProdukt($id, $id_user)
	{
		if($id>0 && $id_user>0){
			$res = dibi::query("
								DECLARE @id_prod int
								EXECUTE copyProduct $id, $id_user, @id_prod OUTPUT
								SELECT @id_prod [p_id]
								")->fetch();
			return $res->p_id;
		} else {
			return false;
		}

	}
		
	
}


