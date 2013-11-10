<?php

use Nette\Object;
/**
 * Model Operace class
 */
class Operace extends Model // DibiRow obstará korektní načtení dat
{
	/**
	 *  @var string
	 * @table
	 */
	private $table = 'operace';


    public function __construct($arr = array())
    {
        parent::__construct($arr);
    }
	
	/**
	 * 
	 * @param type $id_produktu
	 * @param type $notempl .. nemá šablonu a postup
	 * @return type
	 */
	public function show($id_produktu=0, $notempl = false, $id_tpostup=0)
	{
		$cond = "";
		if($notempl){
			$cond = " AND (o.id_sablony is null OR o.id_tpostup is null) ";
		}
		return $this->CONN->query("SELECT o.*, COALESCE(o.poradi, tp.poradi) [oporadi], COALESCE(o.id_tpostup, $id_tpostup) [id_tpostup],
								tp.nazev, tp.poradi [tporadi], a.pocet 
							FROM operace o 
							LEFT JOIN typy_operaci tp ON o.id_typy_operaci=tp.id				
							LEFT JOIN vazby v ON o.id=v.id_operace 
							LEFT JOIN 
								(SELECT id_typy_operaci, COUNT(id) [pocet] FROM atr_typy_oper
									GROUP BY id_typy_operaci
								) a
									 ON a.id_typy_operaci = tp.id
							WHERE v.id_vyssi = $id_produktu $cond 
							ORDER BY oporadi");
	}
	
	/**
	 * Vrací data pro konkrétní záznam
	 * @param int
	 * @return record set
	 */
	public function find($id)
	{
		return $this->CONN->dataSource("SELECT o.*, tp.nazev [typ], tp.ta_min, tp.ta_rezerva,
										COALESCE(sb.nazev,'') [nsablona], COALESCE(tt.nazev,'') [npostup]
									FROM operace o
                                        LEFT JOIN typy_operaci	tp ON o.id_typy_operaci=tp.id
										LEFT JOIN tp_sablony	sb ON o.id_sablony = sb.id
										LEFT JOIN tpostupy		tt ON o.id_tpostup = tt.id
                                    WHERE o.id = $id");
	}

	
	/**
	 * 	Vrací vybrané sloupce pro hromadné zadávání operací
	 * @return record set
	 */
	
	
	public function getTypesOper($id_produktu, $id_tpostup=0, $id_sablony=0)
	{
		if($id_produktu>0){
			if($id_tpostup == 0 || $id_sablony == 0){
				return $this->CONN->query("SELECT tp.id [idto]
									, tp.zkratka [ztyp]
									, tp.nazev [typ]
									, tp.poradi [poradi]
									, do.zkratka [zkratka]
									, COALESCE(op.id, 0) [ido]
									, COALESCE(op.popis, tp.nazev) [popis]
									, COALESCE(ROUND(op.ta_cas,2), 0) [ta_cas]
									, COALESCE(ROUND(op.tp_cas,2), 0) [tp_cas]
									, COALESCE(ROUND(op.naklad,2), 0) [naklad]
									, ao.atr_ks
									, op.id_sablony
									, op.id_tpostup
								FROM typy_operaci tp
								LEFT JOIN 
									(SELECT * FROM operace o 
										LEFT JOIN vazby va ON o.id=va.id_operace
										WHERE va.id_vyssi = $id_produktu) op
									ON tp.id=op.id_typy_operaci
								LEFT JOIN druhy_operaci do ON tp.id_druhy_operaci=do.id
								LEFT JOIN 
									(SELECT id_typy_operaci, COUNT(id) [atr_ks] FROM atr_typy_oper
											GROUP BY id_typy_operaci
									) ao
									 ON tp.id = ao.id_typy_operaci
								ORDER BY tp.poradi			
							")->fetchAll();
			} else {
				return $this->CONN->query("SELECT tp.id [idto]
									, tp.zkratka [ztyp]
									, tp.nazev [typ]
									, tp.poradi [poradi]
									, do.zkratka [zkratka]
									, COALESCE(op.id, 0) [ido]
									, COALESCE(op.popis, tp.nazev) [popis]
									, COALESCE(ROUND(op.ta_cas,2), 0) [ta_cas]
									, COALESCE(ROUND(op.tp_cas,2), 0) [tp_cas]
									, COALESCE(ROUND(op.naklad,2), 0) [naklad]
									, ao.atr_ks
									, op.id_sablony
									, op.id_tpostup
									, tp.npostup
									, tp.nsablona
								FROM 
									(SELECT sat.id_typy_operaci [id], sat.poradi, sat.nazev, sat.id_tp_sablony, tyo.ta_min, tyo.ta_rezerva, tyo.tp_default, 
											tyo.id_druhy_operaci, tyo.zkratka, tpo.nazev [npostup], sab.nazev [nsablona]
										FROM tp_sablony_typy sat
											LEFT JOIN typy_operaci tyo ON sat.id_typy_operaci = tyo.id
											LEFT JOIN tpostupy_sablony tsa ON sat.id_tp_sablony = tsa.id_sablony
											LEFT JOIN tpostupy tpo ON tsa.id_tpostup = tpo.id
											LEFT JOIN tp_sablony sab ON tsa.id_sablony = sab.id
										WHERE tpo.id_produkty = $id_produktu AND tsa.id_tpostup = $id_tpostup AND tsa.id_sablony = $id_sablony		
									) tp
								LEFT JOIN 
									(SELECT * FROM operace o 
										LEFT JOIN vazby va ON o.id=va.id_operace
										WHERE va.id_vyssi = $id_produktu) op
									ON tp.id=op.id_typy_operaci
								LEFT JOIN druhy_operaci do ON tp.id_druhy_operaci=do.id
								LEFT JOIN 
									(SELECT id_typy_operaci, COUNT(id) [atr_ks] FROM atr_typy_oper
											GROUP BY id_typy_operaci
									) ao
									 ON tp.id = ao.id_typy_operaci
								ORDER BY tp.poradi			
							")->fetchAll();
			}
		} else {
			return false;
		}
	}

	public function getIdTypesOper()
	{
		return $this->CONN->fetchPairs("SELECT tp.id, tp.nazev
									FROM typy_operaci tp 
									LEFT JOIN druhy_operaci d ON tp.id_druhy_operaci=d.id
									ORDER BY d.zkratka DESC
									");
		 
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
	public function insertSimple($data = array())
	{
		return $this->CONN->insert($this->table, $data)->execute(dibi::IDENTIFIER);
	}

	/**
	 * Insert / update table operace
	 * @param type $data
	 * @param type $id_produkty
	 * @param type $id_operace
	 * @return type
	 */
	public function insert($data = array(), $id_produkty = 0, $id_operace = 0)
	{
		$p = array();
		if($id_operace==0){
			$ido = $this->CONN->insert($this->table, $data)->execute(dibi::IDENTIFIER);
			$p[0] = 1;
			if($id_produkty>0){
				$datav = array('id_vyssi' => $id_produkty, 'id_operace' => $ido);
				$this->CONN->insert('vazby', $datav)->execute();
			}
		} else {
			$ido = $id_operace;
			$this->update($ido, $data);
			$p[0] = 2;
		}
		$p[1] = $ido;
		return $p;
	}
	
	
	/**
	 * Deletes 1 record [or each assignet to product in table vazby] in the table
	 * @param int
	 * @return mixed
	 */
	public function delete($id = 0, $id_produkt = 0)
	{
		// delete one operation
		if($id>0){
			return $this->CONN->delete($this->table)->where('id=%i', $id)->execute();
		}
		// delete all product operations
		if($id==0 && $id_produkt>0){
			return $this->CONN->query("DELETE FROM operace 
									WHERE id IN 
									(SELECT id_operace FROM vazby WHERE id_vyssi=$id_produkt 
											AND id_operace is not null)
								");
		}
		// delete plonk operations
		if($id<0 && $id_produkt>0){
			return $this->CONN->query("DELETE FROM operace 
									WHERE id IN 
									(SELECT id_operace FROM vazby WHERE id_vyssi=$id_produkt 
											AND id_operace is not null)
									AND id_sablony is null AND id_tpostup is null
								");
		}
		
	}
	
		
	/**
	 * Inserts data to the table
	 * @param array
	 * @return Identifier
	 */
	public function insUpdGroupOper($data = array(), $idata = array(), $id_product=0, $pocet=0)
	{
		$c = array();
		$c['i'] = 0;
		$c['u'] = 0;
		$c['T'] = 0;
		if($id_product>0){
			for($i=1; $i<=$pocet; $i++){
				$opdata = $data[$i];
				if($opdata){
					$kusdata['id_vyssi'] = $id_product;
					$r = $this->insert($opdata, $id_product, $idata[$i]['ido']);
					$id_operace = $r[1];
					if($kusdata && $id_operace){
						$kusdata['id_operace'] = $id_operace;
						$this->insertVazby($kusdata);
						if ($r){$c['T']++;}
						if ($r[0]==1){$c['i']++;}
						if ($r[0]==2){$c['u']++;}
					}
					unset($kusdata);
				}
				unset($opdata);
			}
		}
		return $c;
	}

	/**
	 * vloží vazbu na operaci, pokud již neexistuje
	 * @param type $data 
	 */
	public function insertVazby($data = array())
	{
		if(!$this->findVazba($data['id_vyssi'], $data['id_operace'])){
			$this->CONN->insert('vazby', $data)->execute();
		}
	}

	/**
	 * testuje, zda vazba na operaci již existuje
	 * @param type $idv
	 * @param type $ido
	 * @return type 
	 */
	private function findVazba($idv, $ido)
	{
		$cnt = count($this->CONN->select("*")->from("vazby")->where("id_vyssi=$idv AND id_operace=$ido"));
		return $cnt>0;
	}
	
	/**
	 * Zobrazí atributy
	 * @param type $id_operace
	 * @param type $id_produkt
	 * @return type 
	 */
	public function showCalcOper($id_operace, $id_produkt){
	
		return $this->CONN->query("	
								SELECT a.*, COALESCE(ROUND(ao.mnozstvi,2),0) [mnozstvi]
										, ao.cas_min
										, COALESCE(ao.id, 0) [idao]
										FROM
											(SELECT	op.id [ido]
													, at.id_typy_operaci [idt]
													, at.id_atr_casu [ida]
													, ac.zkratka
													, ac.nazev
													, ac.typ
													, ROUND(ac.cas_sec,4) [cas_sec]
												FROM [DEMS].[dbo].atr_typy_oper at
												LEFT JOIN [DEMS].[dbo].atr_casu ac ON at.id_atr_casu = ac.id
												LEFT JOIN [DEMS].[dbo].operace op ON at.id_typy_operaci = op.id_typy_operaci
												WHERE 
													op.id = $id_operace) a
											LEFT JOIN [DEMS].[dbo].atr_operaci ao ON a.ida = ao.id_atr_casu 
														AND a.ido = ao.id_operace 
											WHERE ao.id_produktu = $id_produkt OR ao.id_produktu is null
											ORDER BY ida, typ  
								");
	}

	
	
	/**
	 * Inserts data to the assign table
	 * @param array
	 * @return Identifier
	 */
	public function insertTC($data = array())
	{
		return $this->CONN->insert('atr_operaci', $data)->execute();
	}
	

	/**
	 * Deletes records in atr_operace by id_oper
	 * @param int
	 * @return mixed
	 */
	public function deleteTC($id_oper)
	{
		return $this->CONN->delete('atr_operaci')->where('id_operace=%i', $id_oper)->execute();
	}
	
	/**
	 * Updates data in the table
	 * @params int, array
	 * @return mixed
	 */
	public function updateTC($id, $data = array())
	{
		return $this->CONN->update('atr_operaci', $data)->where('id=%i', $id)->execute();
	}

	
	public function insertTcalc($data = array(), $id_atr_oper = 0)
	{
		$p = array();
		if($id_atr_oper == 0){
			$id_atr_oper = $this->CONN->insert('atr_operaci', $data)->execute(dibi::IDENTIFIER);
			$p[0] = 1;
		} else {
			$this->updateTC($id_atr_oper, $data);
			$p[0] = 2;
		}
		$p[1] = $id_atr_oper;
		return $p;
	}
	
	/**
	 * Inserts data to the table
	 * @param array
	 * @return Identifier
	 */
	public function insUpdTcalc($data = array(), $idata = array(), $id_operace, $pocet = 0)
	{
		$c = array();
		$c['i'] = 0;
		$c['u'] = 0;
		$c['T'] = 0;
		if ($id_operace > 0){
			for($i = 1; $i <= $pocet; $i++){
				$adata = $data[$i];
				if($adata){
					$r = $this->insertTcalc($adata, $idata[$i]['idao']);
					if ($r){$c['T']++;}
					if ($r[0]==1){$c['i']++;}
					if ($r[0]==2){$c['u']++;}
				}
				unset($adata);
			}
		}
		return $c;
	}
	
	
	
}


