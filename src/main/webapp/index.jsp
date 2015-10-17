<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/css/style-metro.css" rel="stylesheet" type="text/css" />
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="assets/css/style-responsive.css" rel="stylesheet"
	type="text/css" />
<link href="assets/css/themes/default.css" rel="stylesheet"
	type="text/css" id="style_color" />
<link rel="stylesheet" type="text/css"
	href="assets/plugins/select2/select2_metro.css" />
<script src="assets/plugins/jquery-1.10.1.min.js" type="text/javascript"></script>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="assets/css/pages/login-soft.css" rel="stylesheet"
	type="text/css" />
<!-- END PAGE LEVEL STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<body class="login">
	<div class="logo">
		<!-- PUT YOUR LOGO HERE -->
	</div>
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<script type="text/javascript">
			$(document).ready(function() {
				$('#f_login').submit(function() {
					$('#load').css("display","block");
					$.ajax({
						url : 'login',
						type : 'post',
						data : $('#f_login').serialize(),
						success : function(data) {
							alert(data);
							$('#load').css("display","none");
						}
					});
					return false;
				});
			});
		</script>
		<form class="form-vertical login-form" id="f_login">
			<h3 class="form-title">Login to your account</h3>
			<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>Enter any username and password.</span>
			</div>
			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i> <input class="m-wrap placeholder-no-fix"
							type="text" autocomplete="off" placeholder="Username"
							required="required" name="username1" />
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i> <input class="m-wrap placeholder-no-fix"
							type="password" autocomplete="off" placeholder="Password"
							required="required" name="password1" />
					</div>
				</div>
			</div>
			<div class="form-actions">
				<!-- <label class="checkbox">
				<input type="checkbox" name="remember" value="1"/> Remember me
				</label> -->
				<input type="submit" value="Login" id="btnlogin"
					class="btn blue pull-right" />
			</div>
			<div class="create-account">
				<p>
					Don't have an account yet ?&nbsp; <a href="javascript:;"
						id="register-btn">Create an account</a>
				</p>
			</div>
		</form>
		<div id="load" style="display:none">
		<img alt="loading" src="assets/img/loading.gif">
		</div>
		<!-- END LOGIN FORM -->
		<!-- BEGIN REGISTRATION FORM -->
		<script type="text/javascript">
			$(document).ready(function() {
				$('#f_reg').submit(function() {
					$.ajax({
						url : 'register',
						type : 'post',
						data : $('#f_reg').serialize(),
						success : function(data) {
							alert(data);
						}
					});
					return false;
				});
			});
		</script>
		<form class="form-vertical register-form" id="f_reg">*
			<h3>Sign Up</h3>
			<p>Enter your personal details below:</p>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Full
					Name</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-font"></i> <input class="m-wrap placeholder-no-fix"
						required="required"	type="text" placeholder="Full Name" name="fullname" />
					</div>
				</div>
			</div>
			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">Email</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-envelope"></i> <input
							class="m-wrap placeholder-no-fix" required="required" type="email" placeholder="Email"
							name="email" />
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Username</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i> <input class="m-wrap placeholder-no-fix"
							type="text" autocomplete="off" placeholder="Username" required="required"
							name="username" />
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">Password</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i> <input class="m-wrap placeholder-no-fix"
							type="password" autocomplete="off" id="register_password" required="required"
							placeholder="Password" name="password" />
					</div>
				</div>
			</div>
			<!-- <div class="control-group">
				<div class="controls">
					<label class="checkbox">
					<input type="checkbox" name="tnc"/> I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
					</label>  
					<div id="register_tnc_error"></div>
				</div>
			</div> -->
			<div class="form-actions">
				<button id="register-back-btn" type="button" class="btn">
					<i class="m-icon-swapleft"></i> Back
				</button>
				<input type="submit" value="Sign Up" id="register-submit-btn"
					class="btn green pull-right" />
			</div>
		</form>
		<!-- END REGISTRATION FORM -->
	</div>
	<!-- END LOGIN -->
	<!-- BEGIN COPYRIGHT -->
	<!-- END COPYRIGHT -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/plugins/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="assets/plugins/jquery-ui/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="assets/plugins/excanvas.min.js"></script>
	<script src="assets/plugins/respond.min.js"></script>  
	<![endif]-->
	<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/jquery.blockui.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/jquery.cookie.min.js"
		type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script
		src="assets/plugins/jquery-validation/dist/jquery.validate.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/backstretch/jquery.backstretch.min.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="assets/plugins/select2/select2.min.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="assets/scripts/app.js" type="text/javascript"></script>
	<script src="assets/scripts/login-soft.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<script>
		jQuery(document).ready(function() {
			App.init();
			Login.init();
		});
	</script>
</body>
</html>