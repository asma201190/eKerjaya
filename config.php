<?php 
$server="localhost";
$user="root";
$pwd="";
$db_name="ekerjaya";
 
mysql_connect($server,$user,$pwd) or die(mysql_error());
mysql_select_db("$db_name") or die(mysql_error());
date_default_timezone_set('Asia/Kuala_Lumpur');
?>