<?php
/** setting **/
include_once('fix_mysql.inc.php');

define('BASEURL' , 'http://localhost:8080/ShopOnline');
define('BASEPATH', dirname(__FILE__) . '/');
define('PATH_URL', 'http://localhost:8080/ShopOnline');
define('PATH_URL_IMG', PATH_URL.'/public/upload/images/');
define('PATH_URL_IMG_PRODUCT', PATH_URL. '/public/upload/product/');

$ketnoi['Server']['name'] = 'localhost';
$ketnoi['Database']['dbname'] = 'ecommerce';
$ketnoi['Database']['username'] = 'root';
$ketnoi['Database']['password'] = '';
@mysql_connect(
    "{$ketnoi['Server']['name']}",
    "{$ketnoi['Database']['username']}",
    "{$ketnoi['Database']['password']}")
or
die("Can not connect database");
@mysql_select_db(
    "{$ketnoi['Database']['dbname']}")
or
die("Can not connect database");
mysql_query("SET NAMES utf8");