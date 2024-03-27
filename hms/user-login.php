
<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

session_start();
error_reporting(0);
include("include/config.php");

function generateOTP() {
    return mt_rand(100000, 999999);
}

if (isset($_POST['submit'])) {
    $puname = $_POST['username'];
    $ppwd = md5($_POST['password']);
    $ret = mysqli_query($con, "SELECT * FROM users WHERE email='$puname' and password='$ppwd'");
    $num = mysqli_fetch_array($ret);
    if ($num > 0) {
        $otp = generateOTP();
        $_SESSION['otp'] = $otp;
        $_SESSION['otp_username'] = $puname;
		
		// Store OTP in the database
		$storeOtpQuery = "INSERT INTO otp_records (username, otp) VALUES ('$puname', '$otp')";
		mysqli_query($con, $storeOtpQuery);

        // Send OTP to user's email (you need to implement email sending logic here)
        $to = $puname; // User's email
        $subject = "One-Time Password (OTP)";
        $message = "Your OTP is: $otp";
        $headers = "From: your_email@example.com"; // Set your email here or use a dedicated library for sending emails

        // Send email
        mail($to, $subject, $message, $headers);

        header("location:verify-otp.php"); // Redirect to OTP verification page
    } else {
        $_SESSION['login'] = $_POST['username'];
        $uip = $_SERVER['REMOTE_ADDR'];
        $status = 0;
        mysqli_query($con, "insert into userlog(username,userip,status) values('$puname','$uip','$status')");
        $_SESSION['errmsg'] = "Invalid username or password";
        header("location:user-login.php");
    }
}
?>
<!-- The rest of your HTML code remains the same -->
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>User-Login</title>
		
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
	</head>
	<body class="login">
		<div class="row">
			<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
				<div class="logo margin-top-30">
				<a href="../index.php"><h2> EMR | Patient's Login</h2></a>
				</div>

				<div class="box-login">
					<form class="form-login" method="post">
						<fieldset>
							<legend>
								Sign in to your account
							</legend>
							<p>
								Please enter your email and password to log in.<br />
								<span style="color:red;"><?php echo $_SESSION['errmsg']; ?><?php echo $_SESSION['errmsg']="";?></span>
							</p>
							<div class="form-group">
								<span class="input-icon">
									<input type="text" class="form-control" name="username" placeholder="Username">
									<i class="fa fa-user"></i> </span>
							</div>
							<div class="form-group form-actions">
								<span class="input-icon">
									<input type="password" class="form-control password" name="password" placeholder="Password">
									<i class="fa fa-lock"></i>
									 </span><a href="forgot-password.php">
									Forgot Password?
								</a>
							</div>
							<div class="form-actions">
								
								<button type="submit" class="btn btn-primary pull-right" name="submit">
									Login <i class="fa fa-arrow-circle-right"></i>
								</button>
							</div>
							<div class="new-account">
								Don't have an account?
								<a href="registration.php">
									Create an account.
								</a>
							</div>
						</fieldset>
					</form>

					<div class="copyright">
						</span><span class="text-bold text-uppercase">ELECTRONIC MEDICAL RECORD WITH ARTIFICIAL INTELLIGENCE INTERGRATION</span>.
					</div>
			
				</div>

			</div>
		</div>
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
	
		<script src="assets/js/main.js"></script>

		<script src="assets/js/login.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
			});
		</script>
	
	</body>
	<!-- end: BODY -->
</html>