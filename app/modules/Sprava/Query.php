<?php

use Nette\Object;
/**
 * Model Uzivatel class
 */
class Query extends Model // DibiRow obstará korektní načtení dat

{



    public function __construct($arr = array())
    {
        parent::__construct($arr);
		$this->connection = dibi::getConnection();
    }
	
	/**
	 * 	provede select 
	 * @return record set or null
	 */
	public function go($ssql='')
	{
		if($ssql<>'' 
				&& strpos(strtoupper($ssql),'UPDATE') === false
				&& strpos(strtoupper($ssql),'INSERT') === false
				&& strpos(strtoupper($ssql),'DELETE') === false) {
			
//		if($ssql<>''){
			return dibi::query($ssql)->fetchAll();
			
		} else {
			return array();
		}
	}
	
	public function countRows($data){
		$cnt = 0;
		foreach($data as $r => $v){
			$cnt++;
		}		
		return $cnt;
	}

	public function getHeads($data){
		$h = array();
		$j=0;
		foreach($data[0] as $k => $v){
				$j++;
				$h[$j] = $k;
		}
		return $h;
	}
	
	public function getData($data){
		$d = array();
		$a=0;
		$b=0;
		foreach($data as $r => $v){
			$a++;
			foreach($v as $i => $h){
				$b++;
				$d[$a][$b] = $h;
			}
		}
		return $d;
	}
}


