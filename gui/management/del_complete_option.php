<?php
include ('../../library/CCommon.php');
include ('../../bll/CBasic.php');
include ('../../bll/CConManager.php');
include ('../../model/CResult.php');
include('../../library/Session.php');  
$oBasic=new CBasic();
$oResult=new CResult();
$oCommon=new CCommon();
$oSession=new Session();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

if(isset($_POST['value'])) {
	$m=$_POST['value'];
	$a=$oSession->getUserName();
	$sql_del="DELETE FROM tbl_option where status='2'" ;
	$oResult_del=$oBasic->SqlQuery($sql_del);
	echo 'deleted'; 
	
} else {
	header('location: ./');
}
?>
