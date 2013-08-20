<?php

use Nette\Object;
/**
 * Model Typy Operaci class
 */

class TypOperace extends Model // DibiRow obstará korektní načtení dat
{
	/**
	 *  @var string
	 * @table
	 */
	private $table = 'typy_operaci';
	

    public function __construct($arr = array())
    {
        parent::__construct($arr);
    }

	/**
	 * 	Vrací vybrané sloupce
	 * @return record set
	 */
	public function show()
	{
		return dibi::dataSource('SELECT tp.*, d.nazev [druh] FROM typy_operaci tp
                                     LEFT JOIN druhy_operaci d ON tp.id_druhy_operaci=d.id
								');
	}
	
	/**
	 * Vrací data pro konkrétní záznam
	 * @param int
	 * @return record set
	 */
	public function find($id)
	{
		return dibi::dataSource('SELECT tp.*,d.nazev [druh] FROM typy_operaci tp
                                         LEFT JOIN druhy_operaci d ON tp.id_druhy_operaci=d.id
                                         WHERE tp.id='.$id);
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

