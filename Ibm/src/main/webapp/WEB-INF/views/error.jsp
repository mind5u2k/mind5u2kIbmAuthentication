<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en-us">
<head>
<meta charset="utf-8">

<title>Home Page</title>
<meta name="description" content="">
<meta name="author" content="">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<script>
	window.contextRoot = '${contextPath}';
</script>
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

<!-- SmartAdmin RTL Support  -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/smartadmin-rtl.min.css">

<!-- Demo purpose only: goes with demo.js, you can delete this css when designing your own WebApp -->
<link rel="stylesheet" type="text/css" media="screen"
	href="${contextPath}/resources/css/demo.min.css">

<!-- FAVICONS -->
<link rel="shortcut icon"
	href="${contextPath}/resources/img/favicon/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="${contextPath}/resources/img/favicon/favicon.ico"
	type="image/x-icon">

<!-- GOOGLE FONT -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,300,400,700">

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


<style>
.grids {
	background: #fff;
	text-align: center;
	border: 1px solid #ccc;
	border-radius: 12px;
	box-shadow: 4px 4px 3px #ccc;
}

.grids:hover {
	box-shadow: 4px 4px 3px #3a3838;
	cursor: pointer;
}
</style>
</head>



<body class="menu-on-top   fixed-header fixed-navigation">

	<!-- HEADER -->
	<header id="header" style="background: #2d2b2b;">
		<div id="logo-group">
			<!-- PLACE YOUR LOGO HERE -->
			<span id="logo"> <img style="width: 64px;"
				src="${contextPath}/resources/img/ibmlogo.png" alt="SmartAdmin">
			</span>
		</div>
		<!-- <div class="hidden-xs" style="border-left: 1px solid #000;">
			<div style="border-left: 2px solid #4e4d4d; height: 100%;">
				<span id="logo" style="color: #fff; font-size: 16px;"> </span>
			</div>
		</div> -->

		<div class="pull-right">

			<!-- collapse menu button -->
			<div id="hide-menu" class="btn-header pull-right">
				<span> <a href="javascript:void(0);" data-action="toggleMenu"
					title="Collapse Menu"><i class="fa fa-reorder"></i></a>
				</span>
			</div>
			<!-- end collapse menu -->

			<!-- #MOBILE -->
			<!-- Top menu profile link : this shows only when top menu is active -->


			<!-- logout button -->
			<div id="logout" class="btn-header transparent pull-right">
				<span> <a href="${contextPath}/logout" title="Sign Out"
					data-action="userLogout"
					data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
						class="fa fa-sign-out"></i></a>
				</span>
			</div>
			<!-- end logout button -->

			<!-- search mobile button (this is hidden till mobile view port) -->
			<div id="search-mobile" class="btn-header transparent pull-right">
				<span> <a href="javascript:void(0)" title="Search"><i
						class="fa fa-search"></i></a>
				</span>
			</div>
			<!-- end input: search field -->

			<!-- fullscreen button -->
			<div id="fullscreen" class="btn-header transparent pull-right">
				<span> <a href="javascript:void(0);"
					data-action="launchFullscreen" title="Full Screen"><i
						class="fa fa-arrows-alt"></i></a>
				</span>
			</div>
		</div>
	</header>
	<aside id="left-panel" style="background: #464545 !important;">
		<div class="login-info" style="background: #202440;">
			<span style="font-size: 18px;"> <a href="javascript:void(0);"
				id="show-shortcut" data-action="toggleShortcut" style="color: #fff;">
					<i class="fa fa-user"></i> &nbsp;&nbsp;<span>
						${userModel.fullName} </span>
			</a>
			</span>
		</div>
	</aside>
	<div id="main" role="main">
		<div id="content">
			<div class="row">
				<div class="col-sm-12">
					<div class="text-center error-box">
						<h1 class="error-text-2 bounceInDown animated">
							Error 404 <span class="particle particle--c"></span><span
								class="particle particle--a"></span><span
								class="particle particle--b"></span>
						</h1>
						<h2 class="font-xl">
							<strong><i
								class="fa fa-fw fa-warning fa-lg text-warning"></i> Page <u>Not</u>
								Found</strong>
						</h2>
						<br>
						<p class="lead">
							The page you requested could not be found, either contact your
							webmaster or try again. Use your browsers <b>Back</b> button to
							navigate to the page you have prevously come from
						</p>
						<p class="font-md">
							<b>... That didn't work on you? Dang. May we suggest a
								search, then?</b>
						</p>
						<br>
						<div class="error-search well well-lg padding-10">
							<div class="input-group">
								<input class="form-control input-lg" type="text"
									placeholder="let's try this again" id="search-error"> <span
									class="input-group-addon"><i
									class="fa fa-fw fa-lg fa-search"></i></span>
							</div>
						</div>

						<div class="row">

							<div class="col-sm-12">
								<ul class="list-inline">
									<li>&nbsp;<a href="${contextPath}/perform-logout">Dashbaord</a>&nbsp;
									</li>
									<li>.</li>
									<li>&nbsp;<a href="javascript:void(0);">Inbox (14)</a>&nbsp;
									</li>
									<li>.</li>
									<li>&nbsp;<a href="javascript:void(0);">Calendar</a>&nbsp;
									</li>
									<li>.</li>
									<li>&nbsp;<a href="javascript:void(0);">Gallery</a>&nbsp;
									</li>
									<li>.</li>
									<li>&nbsp;<a href="javascript:void(0);">My Profile</a>&nbsp;
									</li>
								</ul>
							</div>

						</div>

					</div>

				</div>
			</div>
		</div>
	</div>
	<div class="page-footer">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<span class="txt-color-white">Compliance Dashboard <span
					class="hidden-xs"> - Web Application </span></span>
			</div>

		</div>
	</div>

	<script data-pace-options='{ "restartOnRequestAfter": true }'
		src="${contextPath}/resources/js/plugin/pace/pace.min.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
		if (!window.jQuery) {
			document
					.write('<script src="${contextPath}/resources/js/libs/jquery-2.1.1.min.js"><\/script>');
		}
	</script>

	<script
		src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
	<script>
		if (!window.jQuery.ui) {
			document
					.write('<script src="${contextPath}/resources/js/libs/jquery-ui-1.10.3.min.js"><\/script>');
		}
	</script>
	<script src="${contextPath}/resources/js/app.config.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/jquery-touch/jquery.ui.touch-punch.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
	<script
		src="${contextPath}/resources/js/notification/SmartNotification.min.js"></script>
	<script
		src="${contextPath}/resources/js/smartwidgets/jarvis.widget.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/easy-pie-chart/jquery.easy-pie-chart.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/jquery-validate/jquery.validate.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/masked-input/jquery.maskedinput.min.js"></script>
	<script src="${contextPath}/resources/js/plugin/select2/select2.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/bootstrap-slider/bootstrap-slider.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/msie-fix/jquery.mb.browser.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/fastclick/fastclick.min.js"></script>
	<script src="${contextPath}/resources/js/app.min.js"></script>
	<script src="${contextPath}/resources/js/speech/voicecommand.min.js"></script>
	<script
		src="${contextPath}/resources/js/smart-chat-ui/smart.chat.ui.min.js"></script>
	<script
		src="${contextPath}/resources/js/smart-chat-ui/smart.chat.manager.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/flot/jquery.flot.cust.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/flot/jquery.flot.resize.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/flot/jquery.flot.time.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/flot/jquery.flot.tooltip.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/vectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/vectormap/jquery-jvectormap-world-mill-en.js"></script>
	<script src="${contextPath}/resources/js/plugin/moment/moment.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/fullcalendar/jquery.fullcalendar.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>

	<script>
		
	</script>

	<!-- Your GOOGLE ANALYTICS CODE Below -->


</body>

</html>