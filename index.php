<?php


error_reporting(0);


$mtime = explode(' ', microtime());
$starttime = $mtime[1] + $mtime[0];
//$h_url='http://www.ask2.cn';
define('IN_ASK2', TRUE);
define('ASK2_ROOT', dirname(__FILE__));
define('ASK2_APP_ROOT', dirname(__FILE__).'/application/');
define('ASK2_STATIC_ROOT', dirname(__FILE__).'/static');


define('SITE_URL', 'http://' . $_SERVER['HTTP_HOST'] . substr($_SERVER['PHP_SELF'], 0, -9));


            	

include ASK2_APP_ROOT . '/model/sowenda.class.php';
$sowenda = new sowenda();
$sowenda->run();
?>