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

if(isset($_POST['new_val'])) {
	$m=$_POST['new_val'];
	$n=$_POST['id'];
	$a=$oSession->getUserName();

	$sql_del="UPDATE tbl_option set option_name='".$m."' where id='".$n."'" ;
	$oResult_del=$oBasic->SqlQuery($sql_del);
	$html='';
	$sql="SELECT * FROM tbl_option" ;
	$oResult=$oBasic->SqlQuery($sql);
	$sql_count="SELECT COUNT(*) as total_to_do FROM tbl_option WHERE status=1" ;
	$oResult_count=$oBasic->SqlQuery($sql_count);
	foreach($oResult->rows as $a_row){
		//$html.='<option class="test">'.$a_row['option_name'].'</option>';
		
		$html.=' <li id="todo14"> 
				<label class="checkbox">
				
					<input id="'.$a_row['option_name'].'" type="checkbox" class="all-complete"'; 
					if($a_row['status']==2){
						$html.='checked';
						}
					$html.=' value="'.$a_row['option_name'].'">
					<span class="checkmark" id_value="'.$a_row['option_name'].'" id="checked_'.$a_row['option_name'].'"></span>
				</label>
				<label class="add-todo" onmouseout=check_function('.$a_row['id'].','.$a_row['option_name'].')';
				if($a_row['status']==2){
					$html.=' style="text-decoration: line-through;color: #d9d9dd"';
					}else{
						$html.=' contenteditable="true" ';
						} 
						
						$html.=' id="p_'.$a_row['option_name'].'" p_id="'.$a_row['id'].'" p_val="'.$a_row['option_name'].'">'.$a_row['option_name'].'</label>
				<button style="margin-top: -31px;" class="button_cut" button_value="'.$a_row['option_name'].'">x</button>
			</li>';
	}
	
	 $data['html']=$html; 
	  $data['left_to_do']=$oResult_count->row['total_to_do']; 
	 echo json_encode($data);
	
} else {
	header('location: ./');
}
?>
