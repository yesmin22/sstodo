<?php
	$oCommon=new CCommon();
	$ID=FALSE;
	if(isset($_GET['ID']))
	{
		$ID= base64_decode($_GET['ID']);
	}

	if (isset($_POST['btnSave']))
	{
	
		$allowed_filetypes = array('.jpg','.jpeg','.png','.gif','.JPG','.JPEG','.PNG','.GIF');
		$max_filesize = 10485760;
		$target = "../images/"; 
		$target = $target . basename( $_FILES['photo']['name']);
		
		$pic =trim(addslashes($_POST['prephoto']));
		$picpre=$pic;
		if($_FILES['photo']['tmp_name']!='')
		{
			$pic =($_FILES['photo']['name']);
			$ext = substr($pic, strpos($pic,'.'), strlen($pic)-1);
			if (file_exists('../images/'.$pic)) 
			{
				echo ("<script>window.alert('The file ". basename( $_FILES['photo']['name']). " already exists.');</script>");
			}
			
			if(!in_array($ext,$allowed_filetypes))
				die('The file you attempted to upload is not allowed.');
			@unlink('../images/'.$picpre);
			move_uploaded_file($_FILES['photo']['tmp_name'], $target) ;
		}
		
		
		
		$Heading = trim(addslashes($_POST['txtheading']));
		$Message = (trim(addslashes($_POST['txtmessage'])));
		$Summary = trim(addslashes($_POST['txtsummary']));
		$SortID = trim(addslashes($_POST['txtsortid']));
		//$Language = trim(addslashes($_POST['txtlanguage']));
		$CreatedBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		
			
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO news (Heading, Photo, Message, Summary, SortID, CreatedBy, CreateDate) VALUES ('$Heading', '$pic', '$Message', '$Summary', '$SortID', '$CreatedBy', '$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			//print_r($oResult);
			echo "<script>alert('Insert Perform Successfully');</script>";
			echo "<script>window.location='?Basic=News'</script>";
		}
		elseif($_POST['btnSave']=='Update')
		{
			$sql="UPDATE news SET Heading='$Heading', Photo='$pic', Message='$Message', Summary='$Summary', SortID='$SortID' WHERE ID = '$ID'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Perform Successfully');</script>";
			echo "<script>window.location='?Basic=News'</script>";
		}
		/*
		if($oResult->IsSuccess)
		{
			echo "<script>alert('Action Perform Successfully');</script>";
			echo "<script>window.location='meta?Page=Teach'</script>";
		}
		else
		{
			echo ("<script>window.alert(\"$oResult->message $oResult->error\");</script>");
		}*/
	}
	
	if(isset($_GET['Delete']))
	{
		$Delete=$_GET['Delete'];
		$sql="DELETE FROM news WHERE ID=$Delete";
		$oBasic->SqlQuery($sql);
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			echo ("<script>window.alert('Action Perfom Successfully!!!');</script>");
			echo ("<script>window.location='?Basic=News';</script>");
		}
	}
?>