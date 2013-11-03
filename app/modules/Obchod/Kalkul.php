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
	private $t_ceny = 'ceny';


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
			return dibi::query("EXECUTE costsCalculate $id, $idsso");
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
	
	/**
	 * Return all type of product's costs
	 * @param type $id_produkt
	 * @return type
	 */
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
			$sql_cmd = "UPDATE material  
						SET cena_kc2 = cena_kc * $koeficient
						FROM material m
									LEFT JOIN vazby v ON m.id=v.id_material 
									LEFT JOIN meny me ON m.id_meny = me.id
									WHERE v.id_vyssi=$idproduktu";
			dibi::query($sql_cmd);
			
			// cena s mezemi - kalkulační
			if($nacenu){$pole_cena = "cena_kc3";} else {$pole_cena = "cena_kc";}
			$sql_cmd = "UPDATE material SET cena_kc3 = CASE";
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
						FROM material m
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
//			dibi::query($sql_cmd);
			// cena kalkulační
			if($nacenu === FALSE){
				$sql_cmd = "UPDATE material  
							SET cena_kc2 = cena_kc * $koeficient, cena_kc3 = cena_kc * $koeficient
							FROM material m
										LEFT JOIN vazby v ON m.id=v.id_material 
										LEFT JOIN meny me ON m.id_meny = me.id
										WHERE v.id_vyssi=$idproduktu";
			} else {
				$sql_cmd = "UPDATE material  
							SET cena_kc2 = cena_kc * $koeficient
							FROM material m
										LEFT JOIN vazby v ON m.id=v.id_material 
										LEFT JOIN meny me ON m.id_meny = me.id
										WHERE v.id_vyssi=$idproduktu";
			}
		}
		dd($sql_cmd,"Sql command");
		return dibi::query($sql_cmd);
	}
		
	/**
	 * Vrací pole s hodnotami koeficinetu ZasR, MatM, vzorec pro cenu materiálu a výsledný koeficient
	 * @param type $idnabidka
	 * @return type array
	 */
	public function getMatCoef($idnabidka){
		$data = dibi::query("SELECT t.zkratka, s.hodnota, k.mater_c, COALESCE(s.pravidlo,'') [pravidlo]
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


