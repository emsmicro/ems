<?php

//namespace Security;

use Nette\Object,
	Nette\Diagnostics\Debugger,
	Nette\Security as NS,
 	Nette\Security\Identity,
	Nette\Security\IAuthenticator,
	Nette\Security\AuthenticationException;


/**
 * Users authenticator.
 */
class Authenticator extends Object implements IAuthenticator
{
	/** @var Nette\Database\Table\Selection */
	private $users;


	//public function __construct(Nette\Database\Table\Selection $users)
	public function __construct($users)
	{
		$this->users = $users;
	}



	/**
	 * Performs an authentication
	 * @param  array
	 * @return Nette\Security\Identity
	 * @throws Nette\Security\AuthenticationException
	 */
	public function authenticate(array $credentials)
	{
		list($username, $password) = $credentials;
		$row = $this->users->where('username = %s', $username)->fetch();
		if (!$row) {
			throw new NS\AuthenticationException("Uživatel '$username' nenalezen.", self::IDENTITY_NOT_FOUND);
		}
		if (strlen($row->password) < 2 && $row->password == $password) {
			//Bezp. díra pro ladění app - pro jednopísmenné heslo je to zatím bez MD5
		} else {
			if ($row->password !== md5($password)) {
				throw new NS\AuthenticationException("Nesprávné heslo.", self::INVALID_CREDENTIAL);
			}
		}
		unset($row->password);

		$role[]=$row->nrole;
		$identity = new Identity($row->id, $role, $row->toArray());
		$identity->name = $row->username;
        //dump($identity);

	   	return $identity;
	}



	/**
	 * Computes salted password hash.
	 * @param  string
	 * @return string
	 */
	public function calculateHash($password)
	{
		return md5($password . str_repeat('*random salt*', 10));
	}

}
