<?php
$username=$_POST['username'];
$password=$_POST['password'];

//SEMAK LOGIN 
$sql="SELECT * FROM users WHERE username='$username' AND password='$password'";
$result=mysql_query($sql);

$username = stripslashes($username);
$password = stripslashes($password);
$username = mysql_real_escape_string($username);
$password = mysql_real_escape_string($password);

$count=mysql_num_rows($result);
$rows=mysql_fetch_array($result);

if($count==1)
{
	$usertype=$rows['usertype'];
	$username=$rows['username'];
	$_SESSION['usertype']=$usertype;
	$_SESSION['username']=$username;
	$_SESSION['userid']=$rows['pemohon_id'];
	$_SESSION['noid']=$rows['id'];

	if(strcmp($usertype,"1")==0)
	{
		header("location:admin/?page=index");
	}
	else if(strcmp($usertype,"0")==0)
	{
		header("location:user/?page=syarat");
	}	
}	
else 
{
	echo "<script language=javascript type=text/javascript>
	alert('id pengguna dan kata laluan tidak sah.Sila masukkan id pengguna dan kata laluan anda semula.');
	history.go(-1)
	</script>";
}

?>
