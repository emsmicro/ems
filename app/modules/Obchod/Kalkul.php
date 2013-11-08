<?php

use Nette\Object;

/**
 * Model Kalkul class
 * Kalkulace cen produktu
 */
class Kalkul extends Model
{
	/** @var string
	 * @table
	 */
	private $t_mater = 'material';
	private $t_nakl = 'naklady';
	private $t_ceny = 'ceny';

	private $pravidlaString = 'PRAVIDLA';

	public function __construct($arr = array())
    {
        parent::__construct($arr);
    }
	
	/**
	 * Recalculate costs of products
	 * @param int, int id_product, id_set_sazeb_operací
	 * @return void
	 */
	public function costsCalc($id, $idsso)
	{
		if($id>0 && $idsso>0){
			return $this->CONN->query("EXECUTE costsCalculate $id, $idsso");
		} else {
			return false;
		}

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
		return $this->CONN->query("
								SELECT	ce.id, ce.id_nabidky, ce.id_produkty, ce.id_typy_cen, tc.zkratka, 
										ce.hodnota, ce.hodnota_cm, po.mnozstvi, po.vyrobni_davka, tc.poradi
									FROM $this->t_ceny ce
									LEFT JOIN typy_cen tc ON ce.id_typy_cen = tc.id
									LEFT JOIN pocty po ON ce.id_pocty = po.id
									WHERE	ce.id_nabidky = $id_nabidka 
											AND ce.id_produkty = $id_produkt $cond1
									ORDER BY ce.id, poradi			
			")->fetchAll();
	}
	
	/**
	 * Return all type of product's costs
	 * @param type $id_produkt
	 * @return type
	 */
	public function getProductCosts($id_produkt){
		return $this->CONN->query("
								SELECT na.id, na.id_produkty, na.id_typy_nakladu, tn.zkratka, na.hodnota, tn.poradi
									FROM $this->t_nakl na
									LEFT JOIN typy_nakladu tn ON na.id_typy_nakladu = tn.id
									WHERE na.id_produkty = $id_produkt
									ORDER BY poradi		
			")->fetchAll();
	}
	
	/**
	 * Recaclutate prices of material BOM of product
	 * @param type $idproduktu
	 * @param type $koeficient
	 * @param type $meze - pole s hranicemi nakladu pro stanoveni prirazky
	 * @param type $nacenu - bude se aplikovat prirazka jiz na spoctenou PC? tj. cena_kc3
	 * @return type 
	 */
	public function recalMatPrices($idproduktu, $koeficient, $meze=FALSE, $nacenu=FALSE)
	{
		if($meze & $meze<>''){
			// alternativní cena
			$sql_cmd = "UPDATE $this->t_mater  
						SET cena_kc2 = cena_kc * $koeficient
						FROM $this->t_mater m
									LEFT JOIN vazby v ON m.id=v.id_material 
									LEFT JOIN meny me ON m.id_meny = me.id
									WHERE v.id_vyssi=$idproduktu";
			$this->CONN->query($sql_cmd);
			
			// cena s mezemi - kalkulační
			if($nacenu){$pole_cena = "cena_kc3";} else {$pole_cena = "cena_kc";}
			$sql_cmd = "UPDATE $this->t_mater SET cena_kc3 = CASE";
			$case = '';
			for($i = 0; $i < count($meze); ++$i) {
				$do = $meze[$i]['mez'];
				$koef = 1 + $meze[$i]['sazba']/100;
				$max = 0;
				if($do>0){
					// menší než
					if($max<$do){$max=$do;}
					$case .= " WHEN cena_kc < $do THEN $pole_cena * $koef";
				} else {
					// větší nebo rovno max
					$case .= " WHEN cena_kc >= $max THEN $pole_cena * $koef";
				}
			}
			$sql_cmd .= $case .	" END
						FROM $this->t_mater m
									LEFT JOIN vazby v ON m.id=v.id_material 
									LEFT JOIN meny me ON m.id_meny = me.id
									WHERE v.id_vyssi=$idproduktu";
		} else {
			// alternativní cena - vynulování
//			$sql_cmd = "UPDATE material  
//						SET cena_kc3 = 0
//						FROM material m
//									LEFT JOIN vazby v ON m.id=v.id_material 
//									LEFT JOIN meny me ON m.id_meny = me.id
//									WHERE v.id_vyssi=$idproduktu";
//			$this->CONN->query($sql_cmd);
			// cena kalkulační
			if($nacenu === FALSE){
				$sql_cmd = "UPDATE $this->t_mater  
							SET cena_kc2 = cena_kc * $koeficient, cena_kc3 = cena_kc * $koeficient
							FROM $this->t_mater m
										LEFT JOIN vazby v ON m.id=v.id_material 
										LEFT JOIN meny me ON m.id_meny = me.id
										WHERE v.id_vyssi=$idproduktu";
			} else {
				$sql_cmd = "UPDATE $this->t_mater  
							SET cena_kc2 = cena_kc * $koeficient
							FROM $this->t_mater m
										LEFT JOIN vazby v ON m.id=v.id_material 
										LEFT JOIN meny me ON m.id_meny = me.id
										WHERE v.id_vyssi=$idproduktu";
			}
		}
		//dd($sql_cmd,"Sql command");
		return $this->CONN->query($sql_cmd);
	}
		
	/**
	 * Vrací pole s hodnotami koeficinetu ZasR, MatM, vzorec pro cenu materiálu a výsledný koeficient
	 * @param type $idnabidka
	 * @return type array
	 */
	public function getMatCoef($idnabidka){
		$data = $this->CONN->query("SELECT t.zkratka, s.hodnota, k.mater_c, COALESCE(s.pravidlo,'') [pravidlo]
								FROM sazby s
								left join typy_sazeb t ON s.id_typy_sazeb = t.id
								left join set_sazeb ss ON s.id_set_sazeb = ss.id
								left join kalkulace k ON ss.kalkulace = k.id
								left join nabidky n ON ss.id = n.id_set_sazeb
								WHERE n.id = $idnabidka AND t.zkratka IN ('ZasR','MatM')
							")->fetchAll();
		$zasr = 0;
		$matm = 0;
		$vzor = "";
		$koef = 0;
		$przr = "";	// pravidlo u zasobovaci režie
		$prmm = "";	// pravidlo u materiálové marže
		foreach ($data as $d){
			if($d['zkratka']=="ZasR"){
				$zasr = $d['hodnota'];
				$przr = trim($d['pravidlo']);
			}
			if($d['zkratka']=="MatM"){
				$matm = $d['hodnota'];
				$prmm = trim($d['pravidlo']);
			}
			$vzor = $d['mater_c'];
		}
		
		$vzorec = str_replace("MaterialN", "1", $vzor);
		$vzorec = str_replace("ZasR", (string)$zasr, $vzorec);
		$vzorec = str_replace("MatM", (string)$matm, $vzorec);
		eval("\$koef = $vzorec;");	//vyhodnotí string výraz jako php kód
		$ret['zasr'] = $zasr;
		$ret['matm'] = $matm;
		$ret['vzor'] = $vzorec;
		$ret['koef'] = $koef;
		$ret['przr'] = $przr;
		$ret['prmm'] = $prmm;
		return $ret;
	}

	public function parsePravidlo($pravidlo){
		$ret = array();
		if ($pravidlo==''){
			return false;
		}
		$meze = explode(';', $pravidlo);
		$i = 0;
		foreach ($meze as $m){
			$m = str_replace(' ', '', $m);
			$m = str_replace(',', '.', $m);
			$m = str_replace(')', '', $m);
			$p = explode('(', $m);
			$ret[$i]['mez'] = floatval($p[0]);
			$ret[$i]['sazba'] = floatval($p[1]);
			$i++;
		}
		return $ret;
	}	
	
	/**
	 * Kalkuluje ceny produktu dle definice v kalkulačním vzorci (zadaném nebo aktuálním) 
	 * a aktuálního (nebo zadaného) setu sazeb, vrací veškeré spočítané parametry cen
	 * @param type $id_nabidka
	 * @param type $id_produkt
	 * @param type $id_vzorec
	 * @param type $id_set_sazeb
	 * @param type $id_pocty
	 * @param type $id_meny
	 * @return boolean or array
	 */
	public function kalkulPrices($id_nabidka, $id_produkt, $id_vzorec = 0, $id_set_sazeb = 0, $id_pocty = 0, $id_meny = 1)
	// old version:	pricesCalc($id_nabidka, $id_produkt, $id_set_sazeb, $id_meny, $id_pocty, $id_vzorec);

	{
		if($id_nabidka==0 or $id_produkt==0){
			throw new Nette\Application\BadRequestException("CHYBA: Výpočet nelze provést, není definován produkt a/nebo nabídka.");
			return FALSE;
		}
		if($id_set_sazeb==0){
			$id_set_sazeb = $this->CONN->fetchSingle("SELECT id_set_sazeb FROM nabidky WHERE id=$id_nabidka");
		}
		if(!$id_set_sazeb){
			throw new Nette\Application\BadRequestException("CHYBA: Výpočet nelze provést, není definován set sazeb režií.");
			return FALSE;
		}
		if($id_vzorec==0){
			$id_vzorec = $this->CONN->fetchSingle("SELECT kalkulace FROM set_sazeb WHERE id=$id_set_sazeb");
		}
		if(!$id_vzorec){
			throw new Nette\Application\BadRequestException("CHYBA: Výpočet nelze provést, není definován kalkulační vzorec.");
			return FALSE;
		}
		if($id_pocty==0){
			$id_pocty = $this->CONN->fetchSingle("SELECT top 1 id FROM pocty WHERE id_nabidky=$id_nabidka AND id_produkty=$id_produkt");
		}
		$id_kurzy	= 1;
		$kurz		= 1.0;
		//$id_meny	= 2; //jen pro test
		if($id_meny>0){
			$kurzy	= $this->CONN->fetchAll("SELECT TOP 1 id, kurz = COALESCE(kurz_prodejni,1.0) FROM kurzy
											WHERE	(platnost_do < '19710101' OR
											platnost_do > GETDATE() OR
											platnost_do IS NULL)
											AND id_meny=$id_meny");
			if($kurzy){
				$id_kurzy = $kurzy[0]['id'];
				$kurz	  = $kurzy[0]['kurz'];
			} else {
				$id_kurzy	= 1;	// CZK
				$kurz		= 1.0;
				$id_meny	= 1;
			}
		}
		
		$vzorec		= $this->CONN->fetchAll("SELECT id, ltrim(rtrim(definice)) [definice], ltrim(rtrim(procedura)) [procedura] FROM kalkulace WHERE id=$id_vzorec");
		
		$tceny		= $this->CONN->fetchAll("SELECT id_typy_cen = id, zkratka [cena], hodnota = 0, hodnota_cm = 0,
										id_nabidky = $id_nabidka, id_produkty = $id_produkt, id_meny = $id_meny,
										id_kurzy = $id_kurzy, id_pocty = $id_pocty, id_vzorec = $id_vzorec, id = 0, aktivni = 0
										FROM typy_cen ORDER BY poradi");
		$tnaklady	= $this->CONN->fetchAll("SELECT tk.id [id], zkratka [naklad], COALESCE(hodnota, 0) [hodnota]
										FROM typy_nakladu tk
										LEFT JOIN naklady nk ON tk.id = nk.id_typy_nakladu AND nk.id_produkty = $id_produkt
										ORDER BY poradi");
		$tsazby		= $this->CONN->fetchAll("SELECT tb.id [id], zkratka [sazba], COALESCE(hodnota, 0) [hodnota], COALESCE(pravidlo,'') [pravidlo], zakladna 
										FROM typy_sazeb tb
										LEFT JOIN sazby sb on tb.id = sb.id_typy_sazeb AND sb.id_set_sazeb = $id_set_sazeb
										ORDER BY poradi");
		$tdavka		= $this->CONN->fetchAll("SELECT id, davka = 'Davka', vyrobni_davka [hodnota] FROM pocty WHERE id=$id_pocty");
		$tmena		= $this->CONN->fetchAll("SELECT id, zkratka [mena] FROM meny WHERE id=$id_meny");

		$ret['ceny']	= $tceny;
		$ret['naklady'] = $tnaklady;
		$ret['sazby']	= $tsazby;
		$ret['davka']	= $tdavka;
		$ret['mena']	= $tmena;
		$ret['vzorec']	= $vzorec;
		$ret['kurz']	= $kurz;

		$vzor = $vzorec[0]['definice'];
		$proc = $vzorec[0]['procedura'];
		if($vzor==''){
			if($proc<>''){
				// kalkulace cen dle uložené procedury - STARÝ způsob
				return $this->pricesCalc($id_nabidka, $id_produkt, $id_set_sazeb, $id_meny, $id_pocty, $id_vzorec);
			} else {
				throw new Nette\Application\BadRequestException("CHYBA: Výpočet nelze provést chybí definice vzorce či procedury.");
				return FALSE;
			}
		}
		
		$vzor = $this->replVzorec($vzor, $tnaklady, 'naklad', 'hodnota');
		if($this->isPravidlaUse($vzor)){
			$vzor = $this->replPravidla($vzor, $tsazby, 'sazba', 'hodnota', 'pravidlo', 'zakladna');
		} else {
			$vzor = $this->replVzorec($vzor, $tsazby, 'sazba', 'hodnota');
		}
		$vzor = $this->replVzorec($vzor, $tdavka, 'davka', 'hodnota');
		$vzor = $this->replVzorec($vzor, $tceny, 'cena', 'cena', '$ceny["','"]');
		$ret['vzor'] = $vzor;
		$ceny = FALSE;
		try {
			eval($vzor);	//vyhodnotí string výraz jako php kód
			if(!isset($ceny['CenaNab']) or $ceny['CenaNab'] == 0){
				$ceny['CenaNab'] = ceil($ceny['ProdCenaP']); // prida vypocet nabidkove ceny
			}
		} catch (Exception $e) {
			$ceny = FALSE;
			throw new Nette\Application\BadRequestException("CHYBA: Nepodařilo se validovat definici vzorce.");
			return FALSE;
		}
		
		$ids = $this->CONN->fetchAll("EXECUTE getIdPrices
									@nabidka_id = $id_nabidka,
									@product_id = $id_produkt,
									@id_meny	= $id_meny,
									@id_kurzy	= $id_kurzy,
									@id_pocty	= $id_pocty,
									@id_vzorec	= $id_vzorec");

		$ret['IDs'] = $ids;
		if($ceny){
			// doplnime hodnoty do pole a upravime pole
			$tceny = $this->addPriceData($tceny, $ceny, $kurz, $ids);
			$ret['CENY'] = $ceny;
			// save data into db
			//dd($ret,'PRED');
			$ret = $this->savePrices($tceny, $ids);
			//dd($ret,'PO');
			//exit();
		} else {
			$ret = FALSE;
		}
		return $ret;
	}
	
	/**
	 * Insert prices data into ceny table
	 * @param type $data
	 * @param type $ids
	 * @return type
	 */
	private function savePrices($data, $ids){
		$idCen = $ids[0]['id'];
		$isNew = $ids[0]['isnew']>0;
		$rupd = 0;
		$rins = count($data);
		$this->CONN->begin();
		try {
			// smazeme pouhe prirazeni produktu k nabidce (vznikne nove ulozenim cen)
			$idp = $data[0]['id_produkty'];
			$this->CONN->query("DELETE FROM $this->t_ceny WHERE id_produkty = $idp AND (id is null OR id=0)");
			if(!$isNew and $idCen > 0){
				// odstranime "stare" ceny poku id existuje
				$this->CONN->query("DELETE FROM $this->t_ceny WHERE id=$idCen");
				$rupd = $rins;
				$rins = 0;
			}
			// vlozime nove ceny s novym id
			$this->CONN->query("INSERT INTO $this->t_ceny %ex", $data);
			$this->CONN->commit();
		} catch (DibiException $e) {
			$this->CONN->rollback();
			throw new Nette\Application\BadRequestException("Uložení cen se nezdařilo (Rollback transaction.)");
			return FALSE;
		}
		$r = array();
		$r['id'] = $idCen;
		$r['r_ins'] = $rins;
		$r['r_upd'] = $rupd;
		return $r;
	}
	
	/**
	 * Replace vzorec with values and prefixes
	 * @param type $vzorec
	 * @param type $data
	 * @param type $field
	 * @param type $repl_field
	 * @param type $prefix
	 * @return type string
	 */
	
	private function replVzorec($formula, $data, $field, $repl_field, $prefix='', $suffix='') 
	{
		for($i = 0; $i < count($data); ++$i) {
			$s = '';
			foreach ($data[$i] as $k => $v) {
				if($k == $field){$s = $v;}
				if($k == $repl_field){
					$formula = str_replace($s, $prefix.$v.$suffix, $formula);
					$s = '';
				}
			}
		}
		return $formula;
	}

	private function replPravidla($formula, $data, $field, $repl_field, 
								  $rule_field='', $base_field='', $prefix='', $suffix='') 
	{
		$isRules = ($rule_field <> '' and $base_field <> '');
		
		$debug = 0;
		
		if ($debug>0){
			echo "<div style='width:60%; font-family: Courier; font-size: 14px; margin:10px; padding: 10px;'>";
		}
		foreach ($data as $d) {
			$s = $d[$field];		// s = sazba - zkratka nazvu, ma byt nahrazena hodnotou
			$h = $d[$repl_field];	// h = hodnota - vyse sazby
			if($isRules){
				$b = $d[$base_field];	// b  = zakladna - nazev - test zda neni MATER
				$r = $d[$rule_field];	// r  = pravidlo - hodnota (musi byt prevdeno na cislo)

				if ($debug>0){
					echo "<div style='border: dotted 1px; margin:5px; padding: 5px; color:blue;'>";
					echo "s=[$s], b=[$b], r=[$r]<br />";
					echo "--- vzorec_pred ----------------------------------------------------- <br />"
							.str_replace(';',';<br/>',$formula)."<br />";
					echo "<p style='color:darkgreen'>";
				}

				if ($r<>'' and strtoupper(substr($b,0,5)) <> 'MATER'){
					$r = $this->jakoDesCislo($r);
					if($r==''){$q = $h;} else {$q = $r;}
					$formula = str_replace($s, $prefix.$q.$suffix, $formula);
					if ($debug>0){echo "1: zmeneno = $s => $q ($r)</p>";}
				} else {
					$formula = str_replace($s, $prefix.$h.$suffix, $formula);
					if ($debug>0){echo "2: zmeneno = $s => $h def.</p>";}
				}
				if ($debug>0){
					echo "<p style='color:darkgreen'>"
							. "--- vzorec_po -------------------------------------------------------<br /> "
							.str_replace(';',';<br/>',$formula)."</p>";
					echo "</div>";
				}
			} else {
				$formula = str_replace($s, $prefix.$h.$suffix, $formula);
			}
			if ($debug>0){
				echo "<div style='border: solid 2px darkred; margin:5px; padding: 5px;'>";
				echo "f=$field, s=[$s], h=[$h], b=[$b], r=[$r]<br />";
				echo "--- vzorec_final --------------------------------------------------------<br />"
						.str_replace(';',';<br/>',$formula)."<br />";
				echo "</div>";
			}

		}
		if ($debug>0){
			echo "</div>";
		}

		return $formula;
	}		
	
	private function replPravidla2($formula, $data, $field, $repl_field, 
								$prefix='', $suffix='', $rule_field='', $base_field='') 
	{
		$debug = 1;
		
		if ($debug>0){
			echo "<div style='width:60%; font-family: Courier; font-size: 14px; margin:10px; padding: 10px;'>";
		}
		for($i = 0; $i < count($data); ++$i) {
			$s = ''; $t = ''; $r = ''; $b = ''; $h = '';
			foreach ($data[$i] as $k => $v) {
				if($rule_field <> '' and $base_field <> ''){
					if($k == $field)	 {$s = $v;}		// s1 = sazba - zkratka nazvu, ma byt nahrazena hodnotou
					if($k == $repl_field){$h = $v;}		// s1 = sazba - zkratka nazvu, ma byt nahrazena hodnotou
					if($k == $base_field){$b = $v;}		// b  = zakladna - nazev - test zda neni MATER
					if($k == $rule_field){$r = $v;}		// r  = pravidlo - hodnota (musi byt prevdeno na cislo)

					if($s<>'' and $h<>'' and $b<>''){

						if ($debug>0){
							echo "<div style='border: dotted 1px; margin:5px; padding: 5px; color:blue;'>";
							echo "s=[$s], b=[$b], r=[$r]<br />";
							echo "--- vzorec_pred ----------------------------------------------------- <br />"
									.str_replace(';',';<br/>',$formula)."<br />";
							echo "<p style='color:darkgreen'>";
						}
						
						if ($r<>'' and strtoupper(substr($b,0,5)) <> 'MATER'){
							$r = $this->jakoDesCislo($r);
							if($r==''){$q = $h;} else {$q = $r;}
							$formula = str_replace($s, $prefix.$q.$suffix, $formula);
							if ($debug>0){echo "1: zmeneno = $s => $q ($r)</p>";}
						} else {
							$formula = str_replace($s, $prefix.$h.$suffix, $formula);
							if ($debug>0){echo "2: zmeneno = $s => $h def.</p>";}
						}
						if ($debug>0){
							echo "<p style='color:darkgreen'>"
									. "--- vzorec_po -------------------------------------------------------<br /> "
									.str_replace(';',';<br/>',$formula)."</p>";
							echo "</div>";
						}

						$s = ''; $h = ''; $r = ''; $b = '';
						
					} else {
						//if($k == $repl_field){$formula = str_replace($s, $prefix.$v.$suffix, $formula);}
					}
				} else {
					if($k == $field){$t = $v;}
					if($k == $repl_field){$formula = str_replace($t, $prefix.$v.$suffix, $formula);}
				}
				if ($debug>0){
					echo "<div style='border: solid 2px darkred; margin:5px; padding: 5px;'>";
					echo "i=$i, f=$field, k=$k, v=$v, s=[$s], h=[$h], t=[$t], b=[$b], r=[$r]<br />";
					echo "--- vzorec_final --------------------------------------------------------<br />"
							.str_replace(';',';<br/>',$formula)."<br />";
					echo "</div>";
				}

			}
		}
		if ($debug>0){
			echo "</div>";
		}

		return $formula;
	}	
	
	/**
	 * If PRAVIDLA is in formula string
	 * @param type $formula
	 * @return boolean
	 */
	private function isPravidlaUse($formula){
		$pos = strrpos(strtoupper($formula), $this->pravidlaString);
		if ($pos === false) { 
			return FALSE;
		} else {
			return TRUE;
		}		
	}

	private function jakoDesCislo($cislo){
		if(trim($cislo)==''){
			return '';
		} else {
			$cislo = str_replace('(', '', $cislo);
			$cislo = str_replace(')', '', $cislo);
			$cislo = str_replace(',', '.', $cislo);
			if(is_numeric($cislo)){
				$c = (float) $cislo;
				$c = $c/100;
				return number_format($c, 6);
			} else {
				return '';
			}
		}
	}	
	
	/**
	 * Insert data into ceny array
	 * @param type $data_into
	 * @param type $data_from
	 * @param type $kurz
	 * @param type $ids
	 * @return type array
	 */
	private function addPriceData($data_into, $data_from, $kurz, $ids){
		// doplnime hodnoty do pole
		if($data_into){
			for($i = 0; $i < count($data_into); ++$i) {
				foreach ($data_from as $key => $value) {
					if($data_into[$i]['cena'] == $key) {
						$data_into[$i]['hodnota'] = $value;
						$data_into[$i]['hodnota_cm'] = $value/$kurz;
					}
					$data_into[$i]['id'] = $ids[0]['id'];
					$data_into[$i]['aktivni'] = $ids[0]['aktivni'];
				}
			}
			// vyradime pole key = cena
			for($i = 0; $i < count($data_into); ++$i) {
				foreach ($data_into[$i] as $key => $value) {
					if($key == 'cena') {unset($data_into[$i][$key]);}
				}
			}
		}		
		return $data_into;
	}	
	
	/**
	 * Recalculate prices of products by currency 
	 * !!! USING STORED PROICEDUREs !!!
	 * @param int, int, int, int, int $id_nabidka, $id_produkt, , $id_set_sazeb, $id_meny, $id_pocty, $id_vzorec
	 * @return void
	 */
	public function pricesCalc($id_nabidka, $id_produkt, $id_set_sazeb, $id_meny, $id_pocty, $id_vzorec = 0)
	{
		if($id_nabidka>0 && $id_produkt>0 && $id_set_sazeb>0 && $id_meny>0 && $id_pocty>0){
			//zjištění dalších parametrů výpočtu
			if ($id_vzorec>0){
				$proc = $this->CONN->query("SELECT id [kid], procedura [procedura], RTRIM(param) [param]
										FROM kalkulace
										WHERE id = $id_vzorec")->fetchAll();
			} else {
				$proc = $this->CONN->query("SELECT COALESCE(k.id,0) [kid], k.procedura [procedura], RTRIM(k.param) [param]
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
				$result = $this->CONN->query("
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
	 * 
	 * Vrací detailní data o cene dle id ceny
	 * @param int
	 * @return record set
	 */		
	public function findPrice($id)
	{
		return $this->CONN->query("
						SELECT 
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
	

}


