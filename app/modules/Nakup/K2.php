<?php

use Nette\Object;
/*
 * K2
 */
class K2 extends Model
{

	private $table = '(SELECT Cis [id], Naz [nazev], Zkr [zkratka] FROM zbozi WHERE PrKind=392)';
	
	private $ceny = "(SELECT ROW_NUMBER() OVER (ORDER BY ce.cis) [id] 
							  ,[idzbo] = CE.Cis
							  ,[ZFir] = DO.Zkr
							  ,[dodavatel] = RTRIM(DO.Fir)
							  ,[mnoz] = Mnoz
							  ,[cena] = Cena
							  ,[mena] = CE.Mena
							  ,[datum] = DLCH
							  ,[odber] = CE.Mnoz_Po
							  ,[popis] = CE.Pop
							  ,[kod] = CE.Kod
							  ,[dnu] = CE.Dnu
							  ,[UID] = CE.UniqID
						  FROM	K2_MIKRO.dbo.ZBOZI_D CE 
								LEFT JOIN K2_MIKRO.dbo.ZAKAZNIK DO ON CE.CDo = DO.CDo 
								LEFT JOIN K2_MIKRO.dbo.ZBOZI  ZB ON CE.Cis = ZB.Cis
							WHERE RTRIM(ZB.Spe) IN ('01','02','03','04','05'))";
	
//	private $k2conpar = array(
//							'driver'   => 'sqlsrv',
//							'host'     => '.\MRSQLEXPRESS',
//							'username' => 'admin',
//							'password' => 'aems',
//							'database' => 'k2',
//							'charset'  => 'utf-8',
//							'profiler' => true,
//						);

	public $connk2;


    public function __construct($arr = array())
    {
        parent::__construct($arr);
		$connk2 = new DibiConnection($arr);
		$this->connk2 = $connk2;

    }
	/**
	 *
	 * @param type $limit
	 * @param type $offset
	 * @return type record page
	 */
	public function show($limit = 0, $offset = 0)
	{
		if($limit==0 || $offset==0){
			return $this->connk2->query("SELECT * FROM $this->table z");
		} else {
			//implementace stránkování
			$page = (int) ($offset / $limit) + 1;
			return $this->connk2->select("*")->from("
				    (SELECT ROW_NUMBER() OVER(ORDER BY id) AS RowNum, *
						FROM $this->table
					) tmp WHERE tmp.RowNum BETWEEN ($page - 1) * $limit + 1 
						AND $page * $limit");
			
		}
	}

	public function findName($searched='', $typ='', $limit=0, $offset=0)
	{
		if($searched==""){
			$cond = "";
			return false;
		} else {
			if($typ=="") {
				$searched = strtoupper($searched);
				$seeks = explode(" ", $searched);
				$cond = " ";
				foreach($seeks as $seek){
					$cond .= "UPPER(z.zkratka+z.nazev) LIKE '%$seek%' AND ";
				}
				$cond = substr($cond, 0, strlen($cond)-4);
			} else {
				$cond = " z.id = $searched";
			}
		}		


		$sql_cmd = "z.id [idz], c.id [idc], z.*, c.* FROM $this->table z
				LEFT JOIN (SELECT *, ROW_NUMBER() OVER (PARTITION BY idzbo ORDER BY datum DESC) AS rd
										FROM $this->ceny cc
										) c ON z.id=c.idzbo AND rd=1";
		
		if($limit==0 || $offset==0){
			$rslt = $this->connk2->query("SELECT $sql_cmd WHERE $cond");
		} else {
			//implementace stránkování
			$page = (int) ($offset / $limit) + 1;
			$start = ($page - 1) * $limit + 1;
			$end = $page * $limit;
			$rw = "SELECT ROW_NUMBER() OVER(ORDER BY idz) AS RowNum, ";
			$sql_cmd = $rw . $sql_cmd;
			$sql_cmd = "$sql_cmd WHERE $cond";
		
			$rslt = $this->connk2->select("*")->from("($sql_cmd) tmp 
								WHERE tmp.RowNum BETWEEN $start AND $end");
			
		}
		

		return $rslt->fetchAll();
	}

	public function findPrices($id)
	{

		$qry = "SELECT z.nazev [nazpol], c.id [idc], * FROM $this->ceny c
					LEFT JOIN $this->table z ON c.idzbo = z.id
					WHERE z.id=$id
					ORDER BY c.datum DESC";
		
		return $this->connk2->query($qry);
	}

	/**
	 *
	 * @param type $id (int) .. id_ceny
	 * @return type record
	 */
	
	public function findOnePrice($id)
	{

		$qry = "SELECT z.id, c.cena, RTRIM(UPPER(c.mena)) [mena], c.id [idc] FROM $this->ceny c
					LEFT JOIN $this->table z ON c.idzbo = z.id
					WHERE c.id=$id ";
		
		return $this->connk2->query($qry)->fetch();
	}
	
	/**
	 * Vrací data pro konkrétní záznam
	 * @param int
	 * @return record set
	 */
	public function findMaterial($id)
	{
		return $this->connection->select('*')->from('material')->where('id=%i', $id);
	}

	/**
	 * Vrací seznam posledních 10 nákupů položky
	 * @param type $id_material
	 * @return type 
	 */
	public function lastPurchase($id_k2)
	{
		$qry = "SELECT TOP 10
					RTRIM(ZA.Fir)	[dodavatel]
					, RTRIM(ZA.Zkr)	[ZFir]
					, NA.Mnoz		[mnozstvi]
					, NA.Ce_Jedn+NA.V_Nakl [cena]
					, NA.DatP		[datum]
					, ZB.Cis		[idzbo]
					, RTRIM(ZB.Naz) [nazev]
					, (CASE WHEN getdate()-NA.DatP<200 THEN 'NO' ELSE 'YES' END) [TooOld]
				FROM K2_MIKRO.dbo.NAKUP NA
					, K2_MIKRO.dbo.OBJEDNAV OB
					, K2_MIKRO.dbo.ZAKAZNIK ZA
					, K2_MIKRO.dbo.ZBOZI ZB 
				WHERE OB.Ci = NA.Ci 
						AND OB.Rada = NA.Rada 
						AND OB.CDo = ZA.CDo 
						AND NA.C_Zbo = ZB.Cis
						AND (NA.Pohyb_F>0) 
						AND (NA.C_Dod>0) 
						AND (NA.Ce_Jedn+NA.V_Nakl>0) 
						AND (NA.C_Zbo = $id_k2) 
				ORDER BY NA.DatP DESC";
		return $this->connk2->query($qry);
	}

}


