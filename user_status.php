<?php 
	if(isset($_SESSION['usertype']))
	{
		if($_SESSION['usertype']=='user'){
		header("location:user/?page=index");
		}
		else if($_SESSION['usertype']=='admin'){
		header("location:admin/?page=index");
		}
	}
	else
	{
		//if(!isset($_REQUEST['page']))
		//{
		header("location:../?page=index");
		//}
	}
?>
