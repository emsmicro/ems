<?php //netteCache[01]000211a:2:{s:4:"time";s:21:"0.14460300 1382434314";s:9:"callbacks";a:1:{i:0;a:3:{i:0;a:2:{i:0;s:19:"Nette\Caching\Cache";i:1;s:9:"checkFile";}i:1;s:41:"C:\xampp\htdocs\ems\app/config.local.neon";i:2;i:1382434019;}}}?><?php
// source file C:\xampp\htdocs\ems\app/config.local.neon

$container->params['database'] = array (
  'driver' => 'sqlsrv',
  'host' => 'MikroSQL',
  'username' => 'ems',
  'password' => 'SqlPass4Ems',
  'database' => 'DEMS',
  'charset' => 'utf-8',
  'profiler' => true,
);

$container->params['k2'] = array (
  'driver' => 'sqlsrv',
  'host' => 'MIKRO7',
  'database' => 'K2_MIKRO',
  'username' => 'mra',
  'password' => 'vm123456',
  'charset' => 'utf-8',
  'profiler' => true,
);

Nette\Caching\Storages\FileStorage::$useDirectories = true;

foreach ($container->getServiceNamesByTag("run") as $name => $foo) { $container->getService($name); }
