<?php
	$oBasic=new CBasic();
	$oResult=new CResult();

	if (isset($_POST['btnSave']))
	{ 
	
		$allowed_filetypes = array('.mp4','.wmv','.3gp','.mpeg','.MP4','.WMV','.3GP','.MPEG');
		$max_filesize = 10485760;
		$target = "../images/"; 
		$target = $target . basename( $_FILES['filephoto']['name']);
		
		$pic1 =trim(addslashes($_POST['fileprephoto']));
		$picpre1=$pic1;
		if($_FILES['filephoto']['tmp_name']!='')
		{
			$pic1 =($_FILES['filephoto']['name']);
			$ext = substr($pic1, strpos($pic1,'.'), strlen($pic1)-1);
			if (file_exists('../images/'.$pic1)) 
			{
				echo ("<script>window.alert('The file ". basename( $_FILES['filephoto']['name']). " already exists.');</script>");
			}
			
			if(!in_array($ext,$allowed_filetypes))
				die('The file you attempted to upload is not allowed.');
			@unlink('../images/'.$picpre);
			move_uploaded_file($_FILES['filephoto']['tmp_name'], $target) ;
		}
	
		$sql="UPDATE logo SET Image='$pic1' WHERE ID=2";
		$oResult=$oBasic->SqlQuery($sql);
	}
?>