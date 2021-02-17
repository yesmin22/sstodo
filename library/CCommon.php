<?php
class CCommon 
{
	public function __construct()
    {
    }
	
	//Number To Word Converter
	public function NumberToWord($number,$Currency)
	{
		$hyphen      = '-';
		$conjunction = ' and ';
		$separator   = ', ';
		$negative    = 'negative ';
		$decimal     = ' taka ';
		$paisa     = ' paisa ';
		if($Currency=="USD" || $Currency=="AUD" || $Currency=="EUR")
		{
			$decimal     = ' '.$Currency.' ';
			$paisa     = ' cent ';
		}
		$dictionary  = array(
        0                   => 'zero',
        1                   => 'one',
        2                   => 'two',
        3                   => 'three',
        4                   => 'four',
        5                   => 'five',
        6                   => 'six',
        7                   => 'seven',
        8                   => 'eight',
        9                   => 'nine',
        10                  => 'ten',
        11                  => 'eleven',
        12                  => 'twelve',
        13                  => 'thirteen',
        14                  => 'fourteen',
        15                  => 'fifteen',
        16                  => 'sixteen',
        17                  => 'seventeen',
        18                  => 'eighteen',
        19                  => 'nineteen',
        20                  => 'twenty',
        30                  => 'thirty',
        40                  => 'forty',
        50                  => 'fifty',
        60                  => 'sixty',
        70                  => 'seventy',
        80                  => 'eighty',
        90                  => 'ninety',
        100                 => 'hundred',
        1000                => 'thousand',
		100000              => 'lac',
        10000000            => 'crore'
   		 );
		 if (!is_numeric($number))
		 {
       		return false;
   		 }
   
   		if (($number >= 0 && (int) $number < 0) || (int) $number < 0 - PHP_INT_MAX)
		 {// overflow
        	trigger_error('convert_number_to_words only accepts numbers between -' . PHP_INT_MAX . ' and ' . PHP_INT_MAX, cE_USER_WARNING);
       		return false;
   		 }

    	if ($number < 0)
		{
       		return $negative . $this->NumberToWord($number*-1,$Currency);
    	}
   
   	 	$string = $fraction = null;
   
    	if (strpos($number, '.') !== false)
		{
        	list($number, $fraction) = explode('.', $number);
   		}
   
    	switch (true) 
		{
        	case $number < 21:
            	$string = $dictionary[$number];
            	break;
        	case $number < 100:
           		$tens   = ((int) ($number / 10)) * 10;
            	$units  = $number % 10;
            	$string = $dictionary[$tens];
            	if ($units)
				{
                	$string .= ' ' . $dictionary[$units];
            	}
            	break;
        	case $number < 1000:
            	$hundreds  = $number / 100;
            	$remainder = $number % 100;
            	$string = $dictionary[$hundreds] . ' ' . $dictionary[100];
            	if ($remainder)
				{
                	$string .= ' ' .$this->NumberToWord($remainder,$Currency);
            	}
           		break;
			case $number < 100000:
				$thousand  = $number / 1000;
            	$remainder = $number % 1000;
            	$string =$this->NumberToWord((int)$thousand,$Currency). ' ' . $dictionary[1000];
            	if ($remainder)
				{
                	$string .= ' '.$this->NumberToWord($remainder,$Currency);
            	}
           		break;
			case $number < 10000000:
				$lac  = $number / 100000;
            	$remainder = $number % 100000;
            	$string = $this->NumberToWord((int)$lac,$Currency). ' ' . $dictionary[100000];
            	if ($remainder)
				{
                	$string .= ' ' .$this->NumberToWord($remainder,$Currency);
            	}
           		break;
			case $number > 10000000:
				$crore  = $number / 10000000;
            	$remainder = $number % 10000000;
            	$string = $this->NumberToWord((int)$crore,$Currency). ' ' . $dictionary[10000000];
            	if ($remainder)
				{
                	$string .= ' ' .$this->NumberToWord($remainder,$Currency);
            	}
           		break;
        	default:
            	$baseUnit = pow(10000000, floor(log($number, 10000000)));
            	$numBaseUnits = (int) ($number / $baseUnit);
           		$remainder = $number % $baseUnit;
            	$string = $this->NumberToWord($numBaseUnits,$Currency) . ' ' . $dictionary[$baseUnit];
            	if ($remainder) 
				{
                	$string .= $remainder < 100 ? $conjunction : $separator;
                	$string .= $this->NumberToWord($remainder,$Currency);
           		}
           	 	break;
    	}
   			
		if (is_numeric($fraction)) 
		{
			$string .= $decimal;

			$words =$this->NumberToWord((int)$fraction,$Currency);

			$string .= $conjunction . $words . $paisa;
		}
   		return $string;
	}
	//Company Info
	
	public function ReadAllSelectedOption($Sql,$Value,$Display,$Selected,$Split)
	{
		$disp = explode("^",$Display);
		$oBasic=new CBasic();
		$oResult=$oBasic->SqlQuery($Sql);
		if($oResult->IsSuccess)
		{	echo "<option value=''>Select One</option>";		
			for($i=0;$i<$oResult->num_rows;$i++)
			{
				if($oResult->rows[$i][$Value]==$Selected)
				{
					echo "<option value='".$oResult->rows[$i][$Value]."' selected='selected' title='".$oResult->rows[$i][$Value]."'>";
					for($j=0;$j<count($disp);$j++)
					{
						if($j) echo $Split;
						echo $oResult->rows[$i][$disp[$j]];
					}
					echo"</option>";
				}
				else 
				{
					echo "<option value='".$oResult->rows[$i][$Value]."' title='".$oResult->rows[$i][$Value]."'>";
					for($j=0;$j<count($disp);$j++)
					{
						if($j) echo $Split;
						echo $oResult->rows[$i][$disp[$j]];
					}
					echo"</option>";
				}
			}
		}
	}
	//end Company 
	
	public function getFormNo()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(bh_id) AS FormNo FROM scl_student ";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$FormNo=$oResult->row["FormNo"];
				if($FormNo)
				{
					$FormNo=substr($FormNo, 1)+1;
					return 'BH'.$FormNo;
				}
				else
				{
					return 'BH'.'001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	
	public function getTechNo()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		//$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(tech_id) AS TechNo FROM scl_teacher ";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$TechNo=$oResult->row["TechNo"];
				if($TechNo)
				{
					$TechNo=substr($TechNo,1)+1;
					return 'T'.$TechNo;
				}
				else
				{
					return 'T'.'1001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	
	public function getManNo()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		//$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(man_id) AS ManNo FROM management";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$ManNo=$oResult->row["ManNo"];
				if($TechNo)
				{
					$ManNo=substr($ManNo,1)+1;
					return 'A'.$ManNo;
				}
				else
				{
					return 'A'.'1001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	public function getIdNo()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(emp_code) AS emp_code FROM employee";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$emp_code=$oResult->row["emp_code"];
				if($emp_code)
				{
					$emp_code=substr($emp_code,2)+1;
					return 'SG'.$emp_code;
				}
				else
				{
					return 'SG'.'10001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	
	
	public function foodmenu()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(fm_id) AS fm FROM food_menu_main";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$fm=$oResult->row["fm"];
				if($fm)
				{
					$fm=substr($fm,2)+1;
					return 'FM'.$fm;
				}
				else
				{
					return 'FM'.'2001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	
	public function getInvProdSec()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(p_code) AS ProdNo FROM inv_product";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$ProdNo=$oResult->row["ProdNo"];
				if($ProdNo)
				{
					$ProdNo=substr($ProdNo,2)+1;
					return 'PR'.$ProdNo;
				}
				else
				{
					return 'PR'.'1001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	public function sclresult()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(res_id) AS res FROM scl_result_main";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$res=$oResult->row["res"];
				if($res)
				{
					$res=substr($res,2)+1;
					return 'RS'.$res;
				}
				else
				{
					return 'RS'.'2001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	public function clgresult()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(res_id) AS res FROM clg_result_main";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$res=$oResult->row["res"];
				if($res)
				{
					$res=substr($res,2)+1;
					return 'RS'.$res;
				}
				else
				{
					return 'RS'.'3001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	
	public function dispatchen()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(disp_id) AS disp FROM inv_prod_dispatch_main";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$disp=$oResult->row["disp"];
				if($disp)
				{
					$disp=substr($disp,2)+1;
					return 'DP'.$disp;
				}
				else
				{
					return 'DP'.'100001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	public function prodrcven()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(rcv_id) AS rcv FROM inv_prod_receive";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$rcv=$oResult->row["rcv"];
				if($rcv)
				{
					$rcv=substr($rcv,2)+1;
					return 'RC'.$rcv;
				}
				else
				{
					return 'RC'.'100001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	public function std_taka_rec()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(rec_id) AS rec_id FROM std_taka_record";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$rec_id=$oResult->row["rec_id"];
				if($rec_id)
				{
					$rec_id=$rec_id+1;
					return $rec_id;
				}
				else
				{
					return '1000000001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	public function allstd()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		//$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(substr(bh_id,7,4)) AS newid FROM all_student";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$newid=$oResult->row["newid"];
				//echo substr($newid,0,2);
				if($newid)
				{
					if(substr($newid,0,1)=='0')
					{
						$newid=substr($newid,1,3)+1;
						if(strlen($newid)=='3')
						{
							return 'BH'.$dt.'0'.$newid;
						}
						elseif(strlen($newid)=='4')
						{
							return 'BH'.$dt.$newid;
						}
					}
					
					elseif(substr($newid,0,2)=='00')
					{
						$newid=substr($newid,2,3)+1;
						if(strlen($newid)=='2')
						{
							return 'BH'.$dt.'00'.$newid;
						}
						elseif(strlen($newid)=='3')
						{
							return 'BH'.$dt.'0'.$newid;
						}
					}
					
					elseif(substr($newid,0,3)=='000')
					{
						$newid=substr($newid,3,3)+1;
						if(strlen($newid)=='1')
						{
							return 'BH'.$dt.'000'.$newid;
						}
						elseif(strlen($newid)=='2')
						{
							return 'BH'.$dt.'00'.$newid;
						}
					}
				}
				else
				{
					return 'BH'.'100001';	
				}
			}
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	
	
	public function getReg()
	{
		$oBasic=new CBasic();
		$oResult=new CResult();
		$dt=date('Y');
		$dt1=substr(date('Y'),2);
		$sql="SELECT MAX(reg) AS FormNo FROM student ";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{ 
			if($oResult->num_rows>0)
			{
				$FormNo=$oResult->row["FormNo"];
				if($FormNo)
				{
					$FormNo=substr($FormNo, strlen($dt))+1;
					if(strlen($FormNo)==3)
						return $dt.'0'.$FormNo;
					elseif(strlen($FormNo)==4)
						return $dt.$FormNo;
				}
				else
				{
					return $dt.'1001';	
				}
			}
			
		}
		else
		{
			echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
		}
	}
	

	public function ReadAllModule($Value,$Display,$Selected)
	{
		$oBasic=new CBasic();
		$sql="SELECT DISTINCT ModuleName FROM sec_menuitem ORDER BY ID";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			for($i=0;$i<$oResult->num_rows;$i++)
			{
				if($oResult->rows[$i][$Value]==$Selected)
				echo "<option value=\"".$oResult->rows[$i][$Value]."\" selected=\"selected\">".$oResult->rows[$i][$Display]."</option>";
				else echo "<option value=\"".$oResult->rows[$i][$Value]."\">".$oResult->rows[$i][$Display]."</option>";
			}
		}
	}
							
	public function ReadAllRole($Value,$Display,$Selected)
	{
		$oBasic=new CBasic();
		$sql="SELECT * FROM sec_role ORDER BY Name";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			for($i=0;$i<$oResult->num_rows;$i++)
			{
				if($oResult->rows[$i][$Value]==$Selected)
				echo "<option value=\"".$oResult->rows[$i][$Value]."\" selected=\"selected\">".$oResult->rows[$i][$Display]."</option>";
				else echo "<option value=\"".$oResult->rows[$i][$Value]."\">".$oResult->rows[$i][$Display]."</option>";
			}
		}
	}
};
?>