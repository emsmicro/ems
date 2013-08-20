<?php


class User extends Model
{
	public static function find($username)
	{
		$row = self::$connection->table('users')
			->where('username', $username)
			->fetch();

		return ($row) ? $row : NULL;
	}
}
