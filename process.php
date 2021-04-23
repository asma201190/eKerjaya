<?php
if($_POST['type']=="add_pemohon"){
	$username = $_POST['username'];

	unset($_POST['type']);
	unset($_POST['username']);

	$keys = array();
	$values = array();

	foreach ($_POST as $key => $val) {
		$value = trim($val);
	    $value = mysql_real_escape_string($value);
	    $keys[] = "`{$key}`";
	    $values[] = "'{$value}'";
	}

	$query = "INSERT INTO pemohon (" . implode(",", $keys) . ") VALUES (" . implode(",", $values). ")";
	mysql_query($query) or die(mysql_error());
	$lastid = mysql_insert_id();

	$query = "INSERT INTO users (username,pemohon_id) VALUES ('$username',$lastid)";
	mysql_query($query) or die(mysql_error());

	header("location:?page=loginpengguna");
}
?>