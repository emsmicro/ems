<?php //netteCache[01]000205a:2:{s:4:"time";s:21:"0.06168200 1382433991";s:9:"callbacks";a:1:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:35:"C:\xampp\htdocs\ems\app/config.neon";i:2;i:1382433981;}}}?><?php
// source file C:\xampp\htdocs\ems\app/config.neon

$container->addService('robotLoader', function($container) {
	$service = call_user_func(
		array ( 0 => 'Nette\\Configurator', 1 => 'createServicerobotLoader', ),
		$container
	);
	return $service;
}, array ( 0 => 'run', ));

$container->addService('model', function($container) {
	$class = 'Model'; $service = new $class($container->getService('database'));
	return $service;
}, NULL);

$container->addService('database', function($container) {
	$class = 'DibiConnection'; $service = new $class($container->params['database']);
	return $service;
}, NULL);

$container->addService('k2', function($container) {
	$class = 'DibiConnection'; $service = new $class($container->params['k2']);
	return $service;
}, NULL);

$container->addService('authenticator', function($container) {
	$service = call_user_func(
		array ( 0 => $container->getService('model'), 1 => 'createAuthenticatorService', ),
		$container
	);
	return $service;
}, NULL);

$container->addService('authorizatorFactory', function($container) {
	$class = 'AuthorizatorFactory'; $service = new $class();
	return $service;
}, NULL);

$container->addService('authorizator', function($container) {
	$service = call_user_func(
		array ( 0 => $container->getService('authorizatorFactory'), 1 => 'create', ),
		$container
	);
	return $service;
}, NULL);

$container->addService('session', function($container) {
	$service = call_user_func(
		array ( 0 => 'Nette\\Configurator', 1 => 'createServicesession', ),
		$container,
		array ( 'expiration' => '+ 2 days', )
	);
	return $service;
}, NULL);

$container->params['myvar'] = array (
  'todos' => true,
);

$container->params['company'] = array (
  'name' => 'Mikroelektronika spol. s r. o.',
  'street' => 'Dráby 849',
  'city' => 'Vysoké Mýto',
  'zip' => '566 01',
  'country' => 'Czech republic',
);

date_default_timezone_set('Europe/Prague');

Nette\Caching\Storages\FileStorage::$useDirectories = true;

foreach ($container->getServiceNamesByTag("run") as $name => $foo) { $container->getService($name); }
