<?php

use Nette\Object;
/**
 * Model Misto class
 */

class Misto extends Model
{


    public function __construct($arr = array())
    {
        parent::__construct($arr);
    }
	/**
	 * 	Vrací obsah tabulky podle parametru
	 * @param string
	 * @return record set
	 */
	public function showCis($table)
	{
		return $this->connection->select('*')->from($table);
	}
	
	/**
	 * Vrací data pro konkrétní záznam
	 * @param int
	 * @return record set
	 */
	public function find($id,$table)
	{
		return $this->connection->select('*')->from($table)->where('id=%i', $id);
	}


	/**
	 * Deletes record in the table
	 * @param int
	 * @return mixed
	 */
	public function delete($id, $table)
	{
		return $this->connection->delete($table)->where('id=%i', $id)->execute();
	}

}


