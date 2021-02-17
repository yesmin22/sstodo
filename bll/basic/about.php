<?php
	$oBasic=new CBasic();
	$oResult=new CResult();

	if (isset($_POST['btnSave']))
	{ 
		$Message =trim(addslashes($_POST['txtmessage']));
		$sql="UPDATE home SET Message='$Message' WHERE ID=1";
		$oResult=$oBasic->SqlQuery($sql);
	}
?>