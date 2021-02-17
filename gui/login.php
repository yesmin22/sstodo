<?php 
	include_once ('bll/CConManager.php');
	include_once ('bll/CBasic.php');
	include_once ('library/Session.php');
	include_once ('model/CResult.php');
	$oSession=new Session();
	$oConmanager=new CConManager;
	$oBasic=new CBasic;
	$oResult=new CResult;
	$flag = false;
	if (isset($_POST['btnLogin']))
	{ 

	    $username = $_POST['username'];
	    $password = md5($_POST['password']);
		$login_date=date('Y-m-d H:i:s');
		$sql = "SELECT * FROM user WHERE username= '$username' AND password='$password'";
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			$sql1="INSERT INTO login (username, login_date) VALUES ('$username', '$login_date')";
				$oResultup=$oBasic->SqlQuery($sql1);
			if($oResult->num_rows==1)
			{
				$_SESSION['SESS_USERNAME']=$oResult->row['username'];
				$_SESSION['SESS_PASSWORD']=$oResult->row['password'];
				$_SESSION['SESS_ID']=$oResult->row['id'];
				$_SESSION['SESS_NAME']=$oResult->row['name'];
				echo "<script>window.location='index.php'</script>";
				exit;
			}
			else
			{
				$flag = true;
			}
			
		}
		else
				echo "<script>window.location='index.php'</script>";	
	}
?> 

<!DOCTYPE html>
<html>
<head>
<title>Somity Management System</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="HRM, Payroll, Sabina, Abhijit" />

	 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>

	<link href="css/style_login.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome_login.min.css" rel="stylesheet" type="text/css" media="all" />
	
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">

</head>

<body>

<div class="w3layouts-main"> 
	<div class="bg-layer">
		<h1>Somity Management System</h1>
		<div class="header-main">
			<div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div>
			<div class="header-left-bottom">
				<form name="form1" id="form1" action="#" method="post" enctype="multipart/form-data" autocomplete="on"> 
				<div class="icon1">
						<span class="fa fa-user"></span>
						<input id="username" name="username" required="required" type="text" placeholder="Username">
					</div>
					<div class="icon1">
						<span class="fa fa-lock"></span>
						<input id="password" name="password" required="required" type="password" class="form-control" placeholder="Password">
					</div>
					<?php
				if($flag){?>
				<div class="clearfix"></div>
				<div style="color:red; text-decoration:blink; weight:500px">Miss your username or password.</div>
			<?php }?>
					<!--
					<div class="login-check">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i> Keep me logged in</label>
					</div>
					-->
					
					<div class="bottom">
						<button class="btn" type="submit" id="btnLogin" name="btnLogin">Login</button>
					</div><!--
					<div class="links">
						<p><a href="#">Forgot Password?</a></p>
						<p class="right"><a href="#">New User? Register</a></p>
						<div class="clear"></div>
					</div>
					-->
				</form>	
			</div>
			<div class="social">
				<ul>
					<li>Follow Us : </li>
					<li><a href="#" class="facebook"><span class="fa fa-facebook"></span></a></li>
					<li><a href="#" class="twitter"><span class="fa fa-twitter"></span></a></li>
					<li><a href="#" class="google"><span class="fa fa-google-plus"></span></a></li>
				</ul>
			</div>
		</div>
		
		<div class="copyright">
			<p>© 2019-<?php echo date('Y');?> SOMS . All rights reserved | It's <a href="#" target="_blank">Sabina and Abhijit</a> Software</p>
		</div>
		
	</div>
</div>	
<!-- //main -->

</body>
	




</html>
