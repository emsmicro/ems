<?php

use Nette\Object;
/**
 * Model Sazba class
 */

class Sazba extends Model 
{
	/**
	 * @var string
	 * @table
	 */
	private $table = 'sazby';


    public function __construct($arr = array())
    {
        parent::__construct($arr);
    }
	
	/**
	 * 	Vrací vybrané atributy tabulky pro konkrétní záznam
	 * @param int 
	 * @return record set
	 */
	public function show($id=0)
	{
		return dibi::query("SELECT	ts.id [tid], ts.nazev [typ], s.id [sid], ROUND(s.hodnota*100,2) [hodnota], 
									s.id_set_sazeb [idss], ts.zkratka, ts.poradi, s.pravidlo
								FROM typy_sazeb ts
								LEFT JOIN (SELECT * FROM sazby WHERE id_set_sazeb=$id) s ON ts.id=s.id_typy_sazeb
								ORDER BY ts.poradi
								"
								);
	}

	/**
	 * Vrací data pro konkrétní záznam
	 * @param int
	 * @return record set
	 */	
	public function find($id)
	{
		//return $this->connection->select('*')->from($this->table)->where('id=%i', $id);
		return dibi::dataSource('SELECT ts.nazev, ROUND(s.hodnota*100,2) [hodnota], ts.zkratka, s.pravidlo
									FROM sazby s LEFT JOIN typy_sazeb ts ON s.id_typy_sazeb=ts.id  
									WHERE s.id='.$id
								);
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
		return $this->connection->delete($this->table)->where('id=%i', $id)->execute();
	}
	
	/**
	 * Returns specific type of rate
	 * @param int
	 * @return mixed
	 */
	public function getTypSazby($id) {
		$pom = dibi::fetchPairs('SELECT nazev FROM typy_sazeb WHERE id='.$id);
		return $pom[0];
	}
	
	/**
	 * Select all typy_sazeb by set_sazeb
	 * 
	 * @param type $id_set_sazeb
	 * @return type
	 */
	public function getTypeRates($id_set_sazeb)
	{
		return dibi::dataSource("SELECT ts.id, ts.zkratka, ts.nazev, ts.poradi, ss.hodnota, COALESCE(ss.id,0) [ids], ss.pravidlo
									FROM typy_sazeb ts
									LEFT JOIN sazby ss ON ts.id = ss.id_typy_sazeb
									WHERE ss.id_set_sazeb = $id_set_sazeb OR ss.id_set_sazeb is null
								");
		 
	}

	public function getIdTypeRates()
	{
		return dibi::fetchPairs("SELECT id, nazev
									FROM typy_sazeb
									ORDER BY id
									");
		 
	}
	
	/**
	 * Inserts data to the table
	 * @param array
	 * @return Identifier
	 */
	public function insertGroup($data = array(), $idss=0, $pocet=0)
	{
			$cnt=0;
			//stavajici sazby nejprve smazeme
			$this->connection->delete($this->table)->where('id_set_sazeb=%i', $idss)->execute();
			for($i=1; $i<=$pocet; $i++){
				$opdata = (array) $data[$i];
				if($opdata){
						$this->insert($opdata);
						$cnt++;
				}
				unset($opdata);
			}
		return $cnt;
	}
	
	
	public function insertSR($data = array(), $id_sazby = 0)
	{
		$p = array();
		if($id_sazby == 0){
			$id_sazby = $this->insert($data);
			$p[0] = 1;
		} else {
			$this->update($id_sazby, $data);
			$p[0] = 2;
		}
		$p[1] = $id_sazby;
		return $p;
	}
	
	/**
	 * Inserts data to the table
	 * @param array
	 * @return Identifier
	 */
	public function insUpdGroup($data = array(), $idata = array(), $idss = 0, $pocet = 0)
	{
		$c = array();
		$c['i'] = 0;
		$c['u'] = 0;
		$c['T'] = 0;
		if ($idss > 0){
			for($i = 1; $i <= $pocet; $i++){
				$adata = $data[$i];
				if($adata){
					$r = $this->insertSR($adata, $idata[$i]['ids']);
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


