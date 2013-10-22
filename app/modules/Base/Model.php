<?php

/**
 * Model base class.
 */

use Nette\DI\Container;

class Model extends DibiRow
{
	/** @var Dibi\Connection */
	public $connection;
	
	public $limit = 0;
	public $offset = 0;
	public $filter = '';

    public function __construct($arr = array())
    {
        parent::__construct($arr);
		
		$this->connection = dibi::getConnection();
		
	}


	public function createAuthenticatorService()
	{
		$autent = new Authenticator(dibi::dataSource('SELECT u.*, r.nazev [nrole] FROM users u LEFT JOIN role r ON u.role=r.id'));
		return $autent;

	}

	/**
	 * Creates a new DataSource
	 * @return DibiDataSource
	 */
	public function getDataSource($name, $connection)
	{
		return new DibiDataSource($name, $connection);
	}

	public function updateCis($table, $id, $data = array())
	{
		return $this->connection->update($table, $data)->where('id=%i', $id)->execute();
	}

	public function insertCis($table, $data = array())
	{
		return $this->connection->insert($table, $data)->execute(dibi::IDENTIFIER);
	}
	
	public function getPrefixedFormFields($hashData, $prefix = '_', $prefpos = 1){
				$pole = (array) $hashData;
				$dlprefix = strlen($prefix);
				$return = array();
				if ($dlprefix>1){
					$prefpos = 0;
					foreach($pole as $a => $v) {
						if(substr($a,$prefpos,$dlprefix)==$prefix){
							$b = str_replace($prefix,'',$a);
							$return[$b] = $v ;
						};
					}
				} else {
					foreach($pole as $a => $v) {
						if(substr($a,$prefpos,$dlprefix)<>$prefix){
							$return[$a] = $v;
						};
					}
				}
				return $return;
	 }


	 public function getDateStringForInsertDB($datestring){
		if($datestring=='' || $datestring=='0'){
			return null;
		} else {
			//$ddate = strtotime($datestring);
			//return date("Y-m-d", $ddate);
			//vyřazeno z důvodu použití komponenty Calendar
			return $datestring;
		}
	 }

	 public function getFloatForInsertDB($floatstring){
	   $floatstring = str_replace(' ', '', $floatstring);
	   $floatstring = str_replace(',', '.', $floatstring);
	   return floatval($floatstring);
	 }
 
	public function getActualPurchaseRates() {
		$nkurz = dibi::fetchPairs("SELECT k.id [id_kurzy], zkratka+ ' ['+RTRIM(CONVERT(varchar, ROUND(k.kurz_nakupni,4)))+']' [KURZ] FROM kurzy k 
								LEFT JOIN meny m ON k.id_meny=m.id
								WHERE k.platnost_do < '19710101' OR k.platnost_do > GETDATE() OR k.platnost_do IS NULL");
		return $nkurz;
	}

	public function getActualSalesRates() {
		$nkurz = dibi::fetchPairs("SELECT k.id [id_kurzy], zkratka+ ' ['+RTRIM(CONVERT(varchar, ROUND(k.kurz_prodejni,4)))+']' [KURZ] FROM kurzy k 
								LEFT JOIN meny m ON k.id_meny=m.id
								WHERE k.platnost_do < '19710101' OR k.platnost_do > GETDATE() OR k.platnost_do IS NULL");
		return $nkurz;
	}

	public function getMeasureUnits() {
		$units = dibi::fetchPairs("SELECT id, zkratka from merne_jednotky ORDER BY id");
		return $units;
	}

	public function getCurrencyRates() {
		$units = dibi::fetchPairs("SELECT m.id [id_meny],  
									(CASE WHEN k.kurz_prodejni is null
											THEN zkratka 
											ELSE zkratka +' [' + replace(replace(convert(varchar,cast(k.kurz_prodejni as money),1),',',' '),'.',',')+ '] '
											END) [KURZ] 
									FROM meny m 
									LEFT JOIN kurzy k ON m.id = k.id_meny
									WHERE k.platnost_do < '19710101' OR k.platnost_do > GETDATE() OR k.platnost_do IS NULL");
		return $units;
	}

	public function getBatches($id_nabidky, $id_produkty) {
		$units = dibi::fetchPairs("SELECT id, vyrobni_davka FROM pocty WHERE id_nabidky=$id_nabidky AND id_produkty=$id_produkty");
		return $units;
	}

	public function getCalculs() {
		$units = dibi::fetchPairs("SELECT id, zkratka+' : '+nazev [nazev] FROM kalkulace");
		return $units;
	}

	public function getKalkVzorce() {
		return dibi::query("SELECT * FROM kalkulace")->fetchAll();
	}
	
	
	public function getQuantities($id_nabidky, $id_produkty) {
		$units = dibi::fetchPairs("SELECT id, mnozstvi FROM pocty WHERE id_nabidky=$id_nabidky AND id_produkty=$id_produkty");
		return $units;
	}

	public function getCompany() {
		$units = dibi::fetchPairs("SELECT id, nazev from firmy ORDER BY id");
		return $units;
	}

	public function getOsloveni() {
		$units = dibi::fetchPairs("SELECT id, nazev from osloveni ORDER BY id");
		return $units;
	}
	public function getSetR() {
		$units = dibi::fetchPairs("SELECT id, nazev from set_sazeb ORDER BY id");
		return $units;
	}
	public function getSetO() {
		$units = dibi::fetchPairs("SELECT id, nazev from set_sazeb_o ORDER BY id");
		return $units;
	}
	public function getCurrency() {
		$units = dibi::fetchPairs("SELECT id, zkratka from meny ORDER BY id");
		return $units;
	}
	public function getCompanyKind() {
		$units = dibi::fetchPairs("SELECT id, zkratka from druhy_firem ORDER BY id");
		return $units;
	}
	public function getCity() {
		$units = dibi::fetchPairs("SELECT id, nazev+' ('+psc+')' [obec] from obce ORDER BY id");
		return $units;
	}
	public function getProvince() {
		$units = dibi::fetchPairs("SELECT id, nazev+' ('+zkratka+')' [kraj] from kraje ORDER BY id");
		return $units;
	}
	public function getCountry() {
		$units = dibi::fetchPairs("SELECT id, nazev+' ('+zkratka+')' [stat] from staty ORDER BY id");
		return $units;
	}
	public function getRole() {
		$units = dibi::fetchPairs("SELECT id, popis from role ORDER BY id");
		return $units;
	}
	public function getOperationKind() {
		$units = dibi::fetchPairs("SELECT id, nazev from druhy_operaci ORDER BY poradi");
		return $units;
	}
	public function getOperationType($idd = 0) {
		$cond = "";
		if($idd > 0){$cond = " WHERE id_druhy_operaci = $idd";}
		$units = dibi::fetchPairs("SELECT id, nazev FROM typy_operaci $cond ORDER BY poradi");
		return $units;
	}
	public function getOperAllKind($id = 0) {
		$cond = "";
		if($id > 0){$cond = " WHERE id = $id";}
		$units = dibi::query("SELECT * FROM druhy_operaci $cond ORDER BY poradi")->fetchAll();
		return $units;
	}
	public function getSablony() {
		$units = dibi::fetchPairs("SELECT id, nazev from tp_sablony");
		return $units;
	}
	public function getProduktSablony($id_produkty = 0) {
		$cond = "";
		if($id_produkty > 0){$cond = " WHERE tp.id_produkty = $id_produkty";}
		$units = dibi::fetchPairs("SELECT DISTINCT sa.id, sa.zkratka, sa.nazev
										FROM tpostupy_sablony ps 
										LEFT JOIN tp_sablony sa ON ps.id_sablony = sa.id
										LEFT JOIN tpostupy tp ON ps.id_tpostup = tp.id
										$cond ORDER BY sa.id"
		);
		return $units;
	}
	
	public function getContactType($id) {
		$units = dibi::fetchPairs("SELECT id, nazev
                                            FROM typy_kontaktu
                                            WHERE id NOT IN 
                                            (SELECT id_typy_kontaktu 
                                            FROM kontakty 
                                            WHERE id_osoby=$id)");
		return $units;
	}	

	public function getStatus($role) {
		$cond="";
		if(strtoupper($role)<>"ADMIN"){$cond=" WHERE r.nazev Like '%$role%'";}
		$stavs = dibi::fetchPairs("SELECT s.id, s.zkratka + ' --- ' + CAST(s.popis as nvarchar) [nazev] FROM stav_role sr
										LEFT JOIN stav s ON sr.id_stav = s.id
										LEFT JOIN role r ON sr.id_role = r.id
										$cond
										ORDER BY sr.id_stav");
		return $stavs;
	}

	public function getOfferHistory($id_nabidka) {
		
		$stavs = dibi::query("SELECT sn.id_nabidky, sn.datum_zmeny [datzmeny], st.zkratka, st.popis, st.id [id_stav], 
								u.username, u.prijmeni+' '+left(u.jmeno,1)+'.' [uzivatel], sn.id_user
								FROM stav_nabidka sn
									LEFT JOIN stav st ON sn.id_stav = st.id
									LEFT JOIN users u ON sn.id_user = u.id
								WHERE sn.id_nabidky=$id_nabidka
								ORDER BY datzmeny DESC")->fetchAll();
		return $stavs;
	}	

	
	/** @return recordset
	 *  @param int int id_product, type = 0..all history, <>0..last by id_stav
	 * 
	 */
	public function getProductHistory($id_produkt, $type = 0) {
		$cond = "";
		$range = "";
		if($type>0){
			$cond = " AND sp.id_stav = $type";
			$range = " TOP 1 ";
		}
		$stavs = dibi::query("SELECT $range sp.id_produkty, sp.datum_zmeny [datzmeny], st.zkratka, st.popis, st.id [id_stav], sp.id_user, 
								u.username, u.prijmeni+' '+left(u.jmeno,1)+'.' [uzivatel]
								FROM stav_produkt sp
									LEFT JOIN stav st ON sp.id_stav = st.id
									LEFT JOIN users u ON sp.id_user = u.id
								WHERE sp.id_produkty=$id_produkt $cond
								ORDER BY datzmeny DESC")->fetchAll();
		return $stavs;
	}	
	
	/**
	 *
	 * @param type $data pairs of data name - value
	 * @param type $like_percent 0..no, 1..yes
	 * @param type $like_type 0..list of data, 1..array name_data, 2..categ+data, ...
	 * @param type $round number of decimal
	 * @return type 
	 */
	
	public function dataPairsForGraph($data, $like_percent = 0, $like_type = 0, $round = 1){
		if(!$data){return "";}
		$ret = array();
		$sum = 0;
		foreach($data as $k=>$v){
			$sum += $v['value'];
			$ret[$v['name']] = (string) $v['value'];
		}
		$retstr='';
		$catstr='';
		$i=0;
		foreach($ret as $k => $v){
			if($like_percent==1){
				$ret[$k] = (string) round($v/$sum * 100,$round);
			} else {
				$ret[$k] = (string) round($v,$round);
			}
			if($like_type==0){
				//simple list
				$retstr .=  "['".$k."',".$ret[$k]."],";
			}
			if($like_type==1){
				//array: name, data
				$retstr .=  "{name: '".$k."', data: [".$ret[$k]."]}, ";
			}
			if($like_type==2){
				//array: category + data string
				$i++;
				$retstr .=  "{name: '$k', y: $ret[$k]}, ";
				$catstr .=  "'$i', ";
			}
			
		}
		if($like_type==2){
			return '[' . substr($catstr,0,strlen($catstr)-1) . '][' . substr($retstr,0,strlen($retstr)-1) . ']';		
		} else {
			return '[' . substr($retstr,0,strlen($retstr)-1) . ']';		
		}
	}
	

	public function dataMoreForGraph($data, $like_percent = 0, $like_type = 0, $round = 1){
		if(!$data){return "";}
		$ret = array();
		$catstr="";
		$sum = 0;
		foreach($data as $k=>$v){
			$sum += $v['value'];
			$ret[$v['name']] = (string) $v['value'];
			$catstr .=  "'".$v['category']."', ";
		}
		$retstr='';
		$i=0;
		foreach($ret as $k => $v){
			if($like_percent==1){
				$ret[$k] = (string) round($v/$sum * 100,$round);
			} else {
				$ret[$k] = (string) round($v,$round);
			}
			if($like_type==0){
				//simple list
				$retstr .=  "['".$k."',".$ret[$k]."],";
			}
			if($like_type==1){
				//array: name, data
				$retstr .=  "{name: '".$k."', data: [".$ret[$k]."]}, ";
			}
			if($like_type==2){
				//array: category + data string
				$i++;
				$retstr .=  "{name: '$k', y: $ret[$k]}, ";
			}
			
		}
		if($like_type==2){
			return '[' . substr($catstr,0,strlen($catstr)-1) . '][' . substr($retstr,0,strlen($retstr)-1) . ']';		
		} else {
			return '[' . substr($retstr,0,strlen($retstr)-1) . ']';		
		}
	}
	/**
	 * Vrací pole s hodnotami koeficinetu ZasR, MatM, vzorec pro cenu materiálu a výsledný koeficient
	 * @param type $idnabidka
	 * @return type array
	 */
	public function getMatCoef($idnabidka){
		$data = dibi::query("SELECT t.zkratka, s.hodnota, k.mater_c
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
		foreach ($data as $d){
			if($d['zkratka']=="ZasR"){
				$zasr = $d['hodnota'];
			}
			if($d['zkratka']=="MatM"){
				$matm = $d['hodnota'];
			}
			$vzor = $d['mater_c'];
		}
		
		$vzorec = str_replace("MaterialN", "1", $vzor);
		$vzorec = str_replace("ZasR", (string)$zasr, $vzorec);
		$vzorec = str_replace("MatM", (string)$matm, $vzorec);
		eval("\$koef = $vzorec;");	//vzhodnotí string výraz jako php kód
		$ret['zasr'] = $zasr;
		$ret['matm'] = $matm;
		$ret['vzor'] = $vzorec;
		$ret['koef'] = $koef;
		return $ret;
	}

	/**
	 * Test, zda je produkt uzamčen
	 * @param type $id
	 * @return type
	 */
	
	public function isProductLocked($id){
		$cnt1 = dibi::query("SELECT count(*) FROM stav_produkt WHERE id_produkty=$id AND id_stav=21")->fetchSingle();
		$cnt2 = dibi::query("SELECT count(*) FROM stav_produkt WHERE id_produkty=$id AND id_stav=22")->fetchSingle();
		if ($cnt2>0){
			return 0;
		} elseif ($cnt1>0){
			return 1;
		} else {
			return 0;
		}
	}

	/**
	 * Test, zda je nabídka uzamčena
	 * @param type $id
	 * @return type
	 */
	
	public function isOfferLocked($id){
		$cnt1 = dibi::query("SELECT count(*) FROM stav_nabidka WHERE id_nabidky=$id AND id_stav=21")->fetchSingle();
		$cnt2 = dibi::query("SELECT count(*) FROM stav_nabidka WHERE id_nabidky=$id AND id_stav=22")->fetchSingle();
		if ($cnt2>0){
			return 0;
		} elseif ($cnt1>0){
			return 1;
		} else {
			return 0;
		}
	}

	/**
	 * Vrací upravený SQL command pro potřeby stránkování
	 * @param type $sql_cmd .. SQL dotaz
	 * @param type $ordsql .. třídění výsledku
	 * @param string $ordovr .. třídění stránkování
	 * @return string
	 */
	public function pagedSql($sql_cmd, $ordsql='', $ordovr='1'){

		if($ordsql <> ''){
			$ordovr = $ordsql . ", " . $ordovr;
			$ordr = " ORDER BY " . $ordovr;
		} else {
			$ordr = " ORDER BY " . $ordovr;
		}
		
		$ret_sql = $sql_cmd . $ordr;
		
		if($this->limit==0 && $this->offset==0){
			// bez stránkování
			return $ret_sql;

		} else {
			//implementace stránkování			
			$start = $this->offset + 1;
			$end = $this->offset + $this->limit;
			$rw = "SELECT ROW_NUMBER() OVER(ORDER BY $ordovr) AS RowNum, ";
			$sql_cmd = $this->replaceFirstSelect($sql_cmd, $rw);
			$ret_sql = "SELECT * FROM ($sql_cmd) tmp WHERE tmp.RowNum BETWEEN $start AND $end";
			return $ret_sql;
		}		
		
	}

	/**
	 * Přepíše uvodní SELECT na SELECT ROW_NUMBER() OVER(ORDER BY ...) AS RowNum, 
	 * @param type $sqlstr .. původní SQL
	 * @param type $repstr .. čím se má SELECT přepsat
	 * @return string
	 */
	protected function replaceFirstSelect($sqlstr, $repstr) {
		$sstr = ltrim($sqlstr);
		if(strtoupper(substr($sstr, 0, 6))=='SELECT'){
			$sstr = $repstr . substr($sstr, 6, strlen($sstr));
		}
		return $sstr;
	}
	
}
