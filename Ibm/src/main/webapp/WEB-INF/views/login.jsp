<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en-us" id="extr-page"
	style="background: #d7d9da !important;">
<head>
<meta charset="utf-8">
<title>Compliance Dashboard</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- #CSS Links -->
<!-- Basic Styles -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/font-awesome.min.css">

<!-- SmartAdmin Styles : Caution! DO NOT change the order -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/smartadmin-production-plugins.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/smartadmin-production.min.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/smartadmin-skins.min.css">

<!-- SmartAdmin RTL Support -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/smartadmin-rtl.min.css">

<!-- We recommend you use "your_style.css" to override SmartAdmin
		     specific styles this will also ensure you retrain your customization with each SmartAdmin update.
		<link rel="stylesheet" type="text/css" media="screen" href="css/your_style.css"> -->

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/demo.min.css">

<!-- #FAVICONS -->
<link rel="shortcut icon"
	href="${contextPath}/resources/img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="${contextPath}/resources/img/favicon/favicon.ico"
	type="image/x-icon">

<!-- #GOOGLE FONT -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

<!-- #APP SCREEN / ICONS -->
<!-- Specifying a Webpage Icon for Web Clip 
			 Ref: https://developer.apple.com/library/ios/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html -->
<link rel="apple-touch-icon"
	href="${contextPath}/resources/img/splash/sptouch-icon-iphone.png">
<link rel="apple-touch-icon" sizes="76x76"
	href="${contextPath}/resources/img/splash/touch-icon-ipad.png">
<link rel="apple-touch-icon" sizes="120x120"
	href="${contextPath}/resources/img/splash/touch-icon-iphone-retina.png">
<link rel="apple-touch-icon" sizes="152x152"
	href="${contextPath}/resources/img/splash/touch-icon-ipad-retina.png">

<!-- iOS web-app metas : hides Safari UI Components and Changes Status Bar Appearance -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Startup image for web apps -->
<link rel="apple-touch-startup-image"
	href="${contextPath}/resources/img/splash/ipad-landscape.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:landscape)">
<link rel="apple-touch-startup-image"
	href="${contextPath}/resources/img/splash/ipad-portrait.png"
	media="screen and (min-device-width: 481px) and (max-device-width: 1024px) and (orientation:portrait)">
<link rel="apple-touch-startup-image"
	href="${contextPath}/resources/img/splash/iphone.png"
	media="screen and (max-device-width: 320px)">

</head>

<body class="animated fadeInDown"
	style="background: #d7d9da !important;">

	<header id="header" style="background: #313131 !important;">

		<div id="logo-group">
			<span id="logo"> <img
				src="${contextPath}/resources/img/ibmlogo.png" alt="SmartAdmin"
				style="width: 85px;">
			</span>
		</div>
	</header>

	<div id="main" role="main" style="background: transparent;">
		<!-- MAIN CONTENT -->
		<div id="content" class="container">

			<div class="row">
				<div
					class="col-xs-12 col-sm-12 col-md-7 col-lg-8 hidden-xs hidden-sm">
					<h1 class="txt-color-red login-header-big">Welcome to -
						Compliance Dashboard Portal</h1>
					<div class="hero">
						<div class="">
							<h4
								style="color: #000; font-size: 15px; font-weight: 400; line-height: 22px; margin-top: 15px;">
								Your access to the Compliance posture of all the accounts in
								CPSD - India. The tool provides a sneak peek into performance of
								the accounts on various compliance parameters. The tool is used
								to assess the accounts on various parameters like KCOs, SOC 1,
								Information Security, Data privacy, Contractual requirements,
								Client/external audits ratings etc. to reach the final
								compliance score along with observations and action plan for
								closure. You'll be able to view the updated Compliance status
								for each account on daily basis after 10th of every month and
								see the compliance Dashboards for previous months as well along
								with option to customize reports.</h4>
							<div class="login-app-icons"></div>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-12 col-md-5 col-lg-4">
					<c:if test="${not empty message}">
						<div class="alert alert-danger fade in">
							<button class="close" data-dismiss="alert">×</button>
							${message}
						</div>
					</c:if>
					<c:if test="${not empty logout}">
						<div class="alert alert-success fade in"
							style="background-color: #a2da87; color: #143514;">
							<button class="close" data-dismiss="alert">×</button>
							${logout}
						</div>
					</c:if>
					<div class="well no-padding"
						style="box-shadow: 5px 5px 5px #343a40;">
						<form action="${contextPath}/login" method="POST" id="login-form"
							class="smart-form client-form">
							<header style="background: rgb(125, 126, 128); color: #fff;">
								Sign In </header>
							<fieldset style="padding-bottom: 33px;">
								<section>
									<label class="label" style="color: #1e1c90;">Use your
										IBM Intranet credentials to login</label>
								</section>
								<section>
									<label class="label">E-mail</label> <label class="input">
										<i class="icon-append fa fa-user"></i> <input type="email"
										id="username" name="username"> <b
										class="tooltip tooltip-top-right"><i
											class="fa fa-user txt-color-teal"></i> Please enter email
											address/username</b>
									</label>
								</section>
								<section>
									<label class="label">Password</label> <label class="input">
										<i class="icon-append fa fa-lock"></i> <input type="password"
										id="password" name="password"> <b
										class="tooltip tooltip-top-right"><i
											class="fa fa-lock txt-color-teal"></i> Enter your password</b>
									</label>
								</section>
								<section>
									<label class="checkbox"> </label>
								</section>
							</fieldset>
							<footer>
								<button type="submit" class="btn btn-primary">Sign in</button>
								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							</footer>
						</form>
					</div>

				</div>
			</div>

		</div>

	</div>
	<div class="row"
		style="text-align: center; color: #a8042a; position: fixed; bottom: 0; width: 100%; font-size: 14px;">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<h5 class="about-heading"></h5>
			<p>**IBM's internal systems must only be used for conducting
				IBM's business or for purposes authorized by IBM management**</p>
		</div>
	</div>
	<!--================================================== -->

	<!-- PACE LOADER - turn this on if you want ajax loading to show (caution: uses lots of memory on iDevices)-->
	<script src="js/plugin/pace/pace.min.js"></script>

	<!-- Link to Google CDN's jQuery + jQueryUI; fall back to local -->
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
		if (!window.jQuery) {
			document
					.write('<script src="js/libs/jquery-2.1.1.min.js"><\/script>');
		}
	</script>

	<script
		src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	<script>
		if (!window.jQuery.ui) {
			document
					.write('<script src="js/libs/jquery-ui-1.10.3.min.js"><\/script>');
		}
	</script>

	<!-- IMPORTANT: APP CONFIG -->
	<script src="${contextPath}/resources/js/app.config.js"></script>

	<!-- JS TOUCH : include this plugin for mobile drag / drop touch events 		
		<script src="js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script> -->

	<!-- BOOTSTRAP JS -->
	<script src="${contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>

	<!-- JQUERY VALIDATE -->
	<script
		src="${contextPath}/resources/js/plugin/jquery-validate/jquery.validate.min.js"></script>

	<!-- JQUERY MASKED INPUT -->
	<script
		src="${contextPath}/resources/js/plugin/masked-input/jquery.maskedinput.min.js"></script>

	<!--[if IE 8]>
			
			<h1>Your browser is out of date, please update your browser by going to www.microsoft.com/download</h1>
			
		<![endif]-->

	<!-- MAIN APP JS FILE -->
	<script src="${contextPath}/resources/js/app.min.js"></script>

	<script type="text/javascript">
		runAllForms();

		$(function() {
			// Validation
			$("#login-form").validate({
				// Rules for form validation
				rules : {
					username : {
						required : true,
						email : true
					},
					password : {
						required : true,
						minlength : 3,
						maxlength : 20
					}
				},

				// Messages for form validation
				messages : {
					username : {
						required : 'Please enter your email address',
						email : 'Please enter a VALID email address'
					},
					password : {
						required : 'Please enter your password'
					}
				},

				// Do not change code below
				errorPlacement : function(error, element) {
					error.insertAfter(element.parent());
				}
			});
		});
	</script>

</body>
</html>