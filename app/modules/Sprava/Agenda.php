<?php

use Nette\Object;
/**
 * Model Uzivatel class
 */
class Agenda extends Model // DibiRow obstará korektní načtení dat
{
	/**
	 *  @var string
	 * @table
	 */
	private $table = 'permission';


    public function __construct($arr = array())
    {
        parent::__construct($arr);
		$this->connection = dibi::getConnection();
    }
	
	/**
	 * 	Vrací vybrané sloupce z tabulky 
	 * @return record set
	 */
	public function show()
	{
		return $this->connection->select('*')->from($this->table);
	}
	
	/**
	 * Vrací data pro konkrétní záznam
	 * @param int
	 * @return record set
	 */
	public function find($id)
	{
		return $this->connection->select('*')->from($this->table)->where('id=%i', $id);
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

}


