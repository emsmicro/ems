<?php

use Nette\Object;
/**
 * Model Sazeb operaci class
 */
class SazbaO extends Model // DibiRow obstará korektní načtení dat
{
	/**
	 *  @var string
	 * @table
	 */
	private $table = 'sazby_o';


    public function __construct($arr = array())
    {
        parent::__construct($arr);
    }

	/**
	 * 	Vrací vybrané sloupce
	 * @param int
	 * @return record set
	 */
	public function show($id=0)
	{
		return $this->CONN->query("SELECT ts.id [tid], ts.nazev [typ], s.id [sid], ROUND(s.hodnota,4) [hodnota], s.id_set_sazeb_o [idss], ts.poradi
								FROM typy_operaci ts
								LEFT JOIN (SELECT * FROM sazby_o WHERE id_set_sazeb_o=$id) s ON ts.id=s.id_typy_operaci
								LEFT JOIN druhy_operaci ds ON ts.id_druhy_operaci=ds.id
								WHERE ds.zkratka NOT IN ('Ostatní','Jednorázové')
								ORDER BY poradi"
								);
	}

	/**
	 * Vrací data pro konkrétní záznam
	 * @param int
	 * @return record set
	 */
	public function find($id)
	{
		return $this->CONN->select('*')->from($this->table)->where('id=%i', $id);
	}
	
	/**
	 * Updates data in the table
	 * @params int, array
	 * @return mixed
	 */
	public function update($id, $data = array())
	{
		return $this->CONN->update($this->table, $data)->where('id=%i', $id)->execute();
	}
	
	/**
	 * Inserts data to the table
	 * @param array
	 * @return Identifier
	 */
	public function insert($data = array())
	{
		return $this->CONN->insert($this->table, $data)->execute(dibi::IDENTIFIER);
	}
	
	/**
	 * Deletes record in the table
	 * @param int
	 * @return mixed
	 */
	public function delete($id)
	{
		return $this->CONN->delete($this->table)->where('id=%i', $id)->execute();
	}
	
	/**
	 * Vrací název konkrétního typu operace
	 * @param int
	 * @return string
	 */
	public function getTypSazby($id) {
		//return $this->CONN->select('nazev')->from('typy_sazeb')->where('id=%i', $id);
		$pom = $this->CONN->fetchPairs('SELECT nazev FROM typy_operaci WHERE id='.$id);
		return $pom[0];
	}
	
	/**
	 * 	Vrací vybrané sloupce pro hromadné zadávání operací
	 * @return record set
	 */
	public function getTypesOper($id_set_sazeb_o)
	{
		return $this->CONN->query("SELECT COALESCE(so.id,0) [idso], ts.nazev [typ], ts.id [idto], d.zkratka, ts.poradi, so.hodnota
									FROM typy_operaci ts
									LEFT JOIN druhy_operaci d ON ts.id_druhy_operaci=d.id
									LEFT JOIN sazby_o so ON ts.id = so.id_typy_operaci
									WHERE d.zkratka NOT IN ('Ostatní','Jednorázové')
											AND (so.id_set_sazeb_o = $id_set_sazeb_o OR so.id_set_sazeb_o is null)
									ORDER BY poradi
								");
	}

	public function getIdTypesOper()
	{
		return $this->CONN->fetchPairs("SELECT t.id, t.nazev
									FROM typy_operaci t 
									LEFT JOIN druhy_operaci d ON t.id_druhy_operaci=d.id
									WHERE d.zkratka NOT IN ('Ostatní','Jednorázové')
									ORDER BY poradi
									");
		 
	}
	

	/**
	 * Ukládá set sazeb operaci hromadně
	 * @param type $data	- mpole z formulare pro hromadnou zmenu
	 * @param type $idss	- id_set_sazeb rezii
	 * @param type $new		= 1 .. zalozit kopii setu sazeb, = 0 .. jen ulozit zmeny
	 * @return string
	 */
	public function saveGroupRate($data, $idss, $new=0) 
	{
		$ret['id']=$idss;
		$ret['message'] = "";
		if($new > 0){
			// nutno zalozit kopii setu sazeb a pak ulozit data jako nova
			$ss = new SetSazebO();
			$rowa = $ss->find($idss)->fetch();
			if(!$rowa){
				$ret['message'] = "Není možné založit kopii setu sazeb, zdrojový set sazeb nebyl nalezen.";
				return $ret;
			}
			$sdata['nazev'] = 'KOPIE: '.$rowa->nazev;
			$sdata['platnost_od'] = date("Y-m-d");
			$sdata['platnost_do'] = null;
			$idss = $ss->insert($sdata);
			$ret['id'] = $idss;
		}
		
		// zpracovani dat
		$oper = new SazbaO;
		$rows = $data;
		$gdata = array();
		$idata = array();
		$j = 0;
		$r = 0;
		$h = 0;
		$h0 = 0;
		$idto = 0;
		$idso = 0;
		foreach($rows as $k => $v ){
			$j++;
			switch($j){
				case 1:
					$h = floatval($v);
				case 2:
					$h0 = floatval($v);
				case 3:
					$idto = intval($v);
				case 4:
					$idso = intval($v);
			}
			if($j == 4) {
				if ($h <> $h0 or $new>0){
					$r++;
					$idata[$r]['idso'] = $new==0 ? $idso : 0;
					$gdata[$r]['hodnota'] = $h;
					$gdata[$r]['id_typy_operaci'] = $idto;
					$gdata[$r]['id_set_sazeb_o'] = (int) $idss;
				}
				$j = 0;
				$h = 0;
				$h0 = 0;
				$idto = 0;
				$idso = 0;
			}
		}
		if($r > 0){
			$pocet = $this->insUpdGroupo($gdata, $idata, $idss, $r);
			$instext = "";
			if($pocet['i'] > 0){$instext = ", vloženo ".$pocet['i'];}
			$ret['message'] = "Bylo aktualizováno ".$pocet['u'].$instext." záznamů sazeb typových operací.";
		} else {
			$ret = 'Hromadné uložení sazeb typových operací nebylo provedeno, neboť nebyly změněny žádné údaje.';
		}
		return $ret;
	}
	
	
	

	
	/**
	 * Inserts data to the table
	 * @param array
	 * @return Identifier
	 */
	public function insUpdGroupo($data = array(), $idata = array(), $idss = 0, $pocet = 0)
	{
		$c = array();
		$c['i'] = 0;
		$c['u'] = 0;
		$c['T'] = 0;
		if ($idss > 0){
			for($i = 1; $i <= $pocet; $i++){
				$adata = $data[$i];
				if($adata){
					$r = $this->insertSO($adata, $idata[$i]['idso']);
					if ($r[0]==1){$c['i']++;}
					if ($r[0]==2){$c['u']++;}
					if($r){$c['T']++;}
				}
				unset($adata);
			}
		}
		return $c;
	}

	public function insertSO($data = array(), $id_sazby_o = 0)
	{
		$p = array();
		if($id_sazby_o == 0){
			$id_sazby_o = $this->insert($data);
			$p[0] = 1;
		} else {
			$this->update($id_sazby_o, $data);
			$p[0] = 2;
		}
		$p[1] = $id_sazby_o;
		return $p;
		
	}	
	
	/**
	 * Inserts data to the table
	 * @param array
	 * @return Identifier
	 */
	public function insertGroupo($data = array(), $idss=0, $pocet=0)
	{
			$cnt=0;
			//stavajici sazby nejprve smazeme
			$this->CONN->delete($this->table)->where('id_set_sazeb_o=%i', $idss)->execute();
			for($i=1; $i<=$pocet; $i++){
				$opdata = $data[$i];
				if($opdata){
					$this->insert($opdata);
					$cnt++;
				}
				unset($opdata);
			}
		return $cnt;
	}
}


