<?php

// absolute filesystem path to the web root
define('WWW_DIR',  dirname(__FILE__));
// absolute filesystem path to the upload dir
define('APP_DIR',  dirname(__FILE__) . '/../app');
define('UPL_DIR',  dirname(__FILE__) . '/uploads/');
define('LIBS_DIR',  dirname(__FILE__) . '/../../_Libs');

$params = array(); 

// absolute filesystem path to this web root
$params['wwwDir'] = __DIR__;

// absolute filesystem path to the application, libs, log, upload dir
$params['appDir'] = realpath(__DIR__ . '/../app');
$params['libsDir'] = realpath(__DIR__ . '/../../_Libs');
$params['logDir'] = realpath(__DIR__ . '/../log');
$params['uplDir'] = realpath(__DIR__ . '/uploads');

// load bootstrap file
require $params['appDir'] . '/bootstrap.php';
