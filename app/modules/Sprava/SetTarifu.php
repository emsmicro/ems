<?php

use Nette\Object;
/**
 * Model Set sazeb operaci class
 */

class SetTarifu extends Model
{
	/**
	 *  @var string
	 * @table
	 */
	private $table = 'set_tarifu';
	

    public function __construct($arr = array())
    {
        parent::__construct($arr);
    }
	
	/**
	 * Vrací obsah tabulky podle platnosti_od sestupně 
	 * @return record set
	 */
	
	public function show()
	{
		return $this->CONN->select('*')->from($this->table)->orderBy('platnost_od','DESC');

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
		$data = $this->calculate($data);
		return $this->CONN->update($this->table, $data)->where('id=%i', $id)->execute();
	}
	
	/**
	 * Inserts data to the table
	 * @param array
	 * @return Identifier
	 */
	public function insert($data = array())
	{
		$data = $this->calculate($data);
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

	
	private function calculate($data = array())
	{
		foreach ($data as $key => $value) {
			if(!strrpos("nazev,platnost_od,platnost_do", $key)){
				if($value==""){$data[$key]=0;}
			}
		}
		$data['fond_rucni'] = ($data['dny_pracovni']-$data['dny_dovolena']-$data['dny_svatky']-$data['dny_nemoc']);
		$data['fond_strojni'] = ($data['dny_pracovni']-$data['dny_svatky']-$data['dny_odstavky']);
		dd($data);
//		exit();
//			$data['sazba_instalace']	= $data['sazba_instalace']/100;
//			$data['vytizeni']			= $data['vytizeni']/100;
//			$data['vyuziti_prikonu']	= $data['vyuziti_prikonu']/100;
//			$data['naklady_udrzba']		= $data['naklady_udrzba']/100;
//			$data['naklady_ostatni']	= $data['naklady_ostatni']/100;
//			if ($data['stari']==""){$data['stari']=0;}
//			if ($data['spotreba_dusiku']==""){$data['spotreba_dusiku']=0;}
//			$data['kapacita']		= $param['stroj_kapcita_sm'] * $data['smennost'] * $data['vytizeni'];
//			
//			$investice = $data['poriz_cena'] * (1 + $data['sazba_instalace']);
//			$cenapenez = $investice * $param['urokova_mira']/100;
//			$naklploch = $data['plocha'] * $param['naklady_plochy'];
//					
//			$data['odpisy_hod']		= $investice / $data['doba_odpisu'] / $data['kapacita'];
//			$data['naklady_fixni']	= $data['odpisy_hod'] + ($cenapenez + $naklploch) / $data['kapacita'];
//			
//			$elektrina	= $data['prikon'] * $data['vyuziti_prikonu'] * $param['cena_elekriny'];
//			$dusik		= $data['spotreba_dusiku'] * $param['cena_dusiku'];
//			$varnakost	= ($data['naklady_udrzba'] + $data['naklady_ostatni']) * $investice / $data['kapacita'];
//		
//			$data['naklady_variabilni'] = $elektrina + $dusik + $varnakost;
//			
//			$data['hodinova_cena'] = $data['naklady_fixni'] + $data['naklady_variabilni'];
//			
			return $data;
	}
	
	
		
	
}


