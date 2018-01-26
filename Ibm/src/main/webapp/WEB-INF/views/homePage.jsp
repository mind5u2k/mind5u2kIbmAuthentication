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
			<ul id="mobile-profile-img"
				class="header-dropdown-list hidden-xs padding-5">
				<li class=""><a href="#"
					class="dropdown-toggle no-margin userdropdown"
					data-toggle="dropdown"></a>
					<ul class="dropdown-menu pull-right">
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"><i
								class="fa fa-cog"></i> Setting</a></li>
						<li class="divider"></li>
						<li><a href="profile.html"
							class="padding-10 padding-top-0 padding-bottom-0"> <i
								class="fa fa-user"></i> <u>P</u>rofile
						</a></li>
						<li class="divider"></li>
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"
							data-action="toggleShortcut"><i class="fa fa-arrow-down"></i>
								<u>S</u>hortcut</a></li>
						<li class="divider"></li>
						<li><a href="javascript:void(0);"
							class="padding-10 padding-top-0 padding-bottom-0"
							data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i>
								Full <u>S</u>creen</a></li>
						<li class="divider"></li>
						<li><a href="${contextPath}/logout"
							class="padding-10 padding-top-5 padding-bottom-5"
							data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i>
								<strong><u>L</u>ogout</strong></a></li>
					</ul></li>
			</ul>

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
		<nav>
			<ul>
				<li class="active"><a href="index.html" title="Dashboard"><i
						class="fa fa-lg fa-fw fa-home"></i> <span class="menu-item-parent">About
							Us</span></a></li>
				<li><a href="inbox.html"><i class="fa fa-lg fa-fw fa-inbox"></i>
						<span class="menu-item-parent">Challenges </span></a></li>

				<li><a href="inbox.html"><i class="fa fa-lg fa-fw fa-inbox"></i>
						<span class="menu-item-parent">Training</span></a></li>
				<li><a href="inbox.html"><i class="fa fa-lg fa-fw fa-inbox"></i>
						<span class="menu-item-parent">Consulting</span></a></li>
				<li><a href="inbox.html"><i class="fa fa-lg fa-fw fa-inbox"></i>
						<span class="menu-item-parent">Risk Management </span></a></li>
				<li><a href="inbox.html"><i class="fa fa-lg fa-fw fa-inbox"></i>
						<span class="menu-item-parent">Partners With Us </span></a></li>
				<li><a href="inbox.html"><i class="fa fa-lg fa-fw fa-inbox"></i>
						<span class="menu-item-parent">Contact Us </span></a></li>
				<li><div class="minifyme"
						style="background: rgb(123, 120, 120); position: unset; text-align: center; font-size: 24px; padding: 6px 1px 31px; margin-top: 17px; cursor: pointer; width: 100%;"
						data-action="minifyMenu">
						<i class="fa fa-arrow-circle-left hit"></i>
					</div></li>
			</ul>
		</nav>
	</aside>
	<div id="main" role="main">
		<div id="content">
			<div class="row">
				<div class="col-sm-12 col-md-12 col-lg-12">
					<div class="well" style="padding: 0;">
						<div id="myCarousel-2" class="carousel slide">
							<ol class="carousel-indicators">
								<li data-target="#myCarousel-2" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel-2" data-slide-to="1" class=""></li>
								<li data-target="#myCarousel-2" data-slide-to="2" class=""></li>
							</ol>
							<div class="carousel-inner">
								<!-- Slide 1 -->
								<div class="item active">
									<img src="${contextPath}/resources/img/demo/asdf.jpg"
										style="width: 100%; height: 500px;" alt="">
									<div class="carousel-caption caption-right">
										<h4>MyRMC</h4>
										<p>Vedhacon Introduces MyRMC, An End-To-End Risk
											Management And Compliance Tool Hosted On Cloud To Manage
											Enterprise Risks. Features Like Assessment Customization,
											Automated Reminders, Graphical Reporting And Various Export
											Formats Makes It A Must To Have Tool.</p>
									</div>
								</div>
								<!-- Slide 2 -->
								<div class="item">
									<img src="${contextPath}/resources/img/demo/asdf.jpg"
										style="width: 100%; height: 500px;" alt="">
									<div class="carousel-caption caption-left">
										<h4>New Corporate And Instititoinal Trainings</h4>
										<p>Vedhacon Has Introduced Set Of New Trainings Which
											Focus On Implementaters Skill Development InInformation
											Security Domain. Intent Of These Trainings Isto Transfer
											Knowledge And Reduce External Dependency. Referour Training
											Section For Details.</p>
									</div>
								</div>
								<!-- Slide 3 -->
								<div class="item">
									<img src="${contextPath}/resources/img/demo/asdf.jpg"
										style="width: 100%; height: 500px;" alt="">
									<div class="carousel-caption caption-left">
										<h4>Vedhacon Introduces Virtual CISO</h4>
										<p>Virtual CISO (Virtual Chief Information Security
											Officer) Is Designed For Organizations That Need Someone To
											Take Responsibility For Growth Of The Information Security
											Program But Do Not Need A Full-Time CISO. Vedhacon Provides
											Everything You Need At A Fraction Of Cost As Hiring A CISO Is
											Expensive.</p>
									</div>
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel-2"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a class="right carousel-control" href="#myCarousel-2"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>
				</div>


				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="panel panel-teal pricing-big"
						style="border: 1px solid #8ab7b6 !important; box-shadow: 5px 5px 5px #568a89; border-radius: 8px;">

						<div class="panel-heading">
							<h3 class="panel-title">Consulting</h3>
						</div>
						<div class="panel-body no-padding text-align-center">

							<div class="price-features">
								<ul class="list-unstyled text-left">
									<li style="text-align: center;"><i class="fa fa-cubes"
										aria-hidden="true" style="color: #468847; font-size: 87px;"></i></li>
									<li style="text-align: center;">Having a robust Security &
										Privacy Framework and appropriate Leadership/Governance is
										critical to the success of Information Security Framework.
										Vedhas can help in development of framework and offer Virtual
										CISO Services.</li>

								</ul>
							</div>
						</div>
						<div class="panel-footer text-align-center">
							<a href="javascript:void(0);" class="btn btn-primary btn-block"
								role="button">Learn More</a>

						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="panel panel-danger pricing-big"
						style="border: 1px solid #c95a5a !important; box-shadow: 5px 5px 5px #b27979; border-radius: 5px;">

						<div class="panel-heading">
							<h3 class="panel-title">Training</h3>
						</div>
						<div class="panel-body no-padding text-align-center">

							<div class="price-features">
								<ul class="list-unstyled text-left">
									<li style="text-align: center;"><i
										class="fa fa-graduation-cap" aria-hidden="true"
										style="color: #b94a48; font-size: 87px;"></i></li>
									<li style="text-align: center;">Having in-house Security &
										Privacy skills is a must for Organizations to have persistent
										and mass implementation of Information Security. Vedhas helps
										you in development of skills through various on-site &
										off-site training programs.</li>

								</ul>
							</div>
						</div>
						<div class="panel-footer text-align-center">
							<a href="javascript:void(0);" class="btn btn-primary btn-block"
								role="button">Learn More </a>

						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4">
					<div class="panel panel-primary pricing-big"
						style="border: 1px solid #3276b1 !important; box-shadow: 5px 5px 5px #3276b1; border-radius: 8px;">
						<img src="img/ribbon.png" class="ribbon" alt="">
						<div class="panel-heading">
							<h3 class="panel-title">Risk Management</h3>
						</div>
						<div class="panel-body no-padding text-align-center">

							<div class="price-features">
								<ul class="list-unstyled text-left">
									<li style="text-align: center;"><i class="fa fa-cog"
										aria-hidden="true" style="color: #3276b1; font-size: 87px;"></i></li>
									<li style="text-align: center;">Technology & Tools to
										Manage Risks, Compliance and implementation of controls is
										critical for success of any Information Security Management
										Setup. Vedhas can help you with necessary Risk Management &
										Security Tools.</li>

								</ul>
							</div>
						</div>
						<div class="panel-footer text-align-center">
							<a href="javascript:void(0);" class="btn btn-primary btn-block"
								role="button">Learn More </a>

						</div>
					</div>
				</div>

				<!-- aaaaaaaaaaaaaaaa -->

				<article
					class="col-sm-12 col-md-12 col-lg-4 sortable-grid ui-sortable">

					<!-- Widget ID (each widget will need unique ID)-->
					<div class="jarviswidget jarviswidget-sortable" id="wid-id-0"
						data-widget-editbutton="false" role="widget">
						<!-- widget options:
								usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">
				
								data-widget-colorbutton="false"
								data-widget-editbutton="false"
								data-widget-togglebutton="false"
								data-widget-deletebutton="false"
								data-widget-fullscreenbutton="false"
								data-widget-custombutton="false"
								data-widget-collapsed="true"
								data-widget-sortable="false"
				
								-->
						<header role="heading">

							<h2>Organizing view</h2>

							<span class="jarviswidget-loader"><i
								class="fa fa-refresh fa-spin"></i></span>
						</header>
						<div role="content">
							<div class="jarviswidget-editbox"></div>
							<div class="widget-body">
								<div class="tree">
									<ul role="tree">
										<li class="parent_li" role="treeitem"><span
											title="Collapse this branch"><i
												class="fa fa-lg fa-calendar"></i> 2013, Week 2</span>
											<ul role="group">
												<li class="parent_li" role="treeitem"><span
													class="label label-success" title="Collapse this branch"><i
														class="fa fa-lg fa-plus-circle"></i> Monday, January 7:
														8.00 hours</span>
													<ul role="group">
														<li><span><i class="fa fa-clock-o"></i> 8.00</span> –
															<a href="javascript:void(0);">Changed CSS to
																accomodate...</a></li>
													</ul></li>
												<li class="parent_li" role="treeitem"><span
													class="label label-success" title="Collapse this branch"><i
														class="fa fa-lg fa-minus-circle"></i> Tuesday, January 8:
														8.00 hours</span>
													<ul role="group">
														<li><span><i class="fa fa-clock-o"></i> 6.00</span> –
															<a href="javascript:void(0);">Altered code...</a></li>
														<li><span><i class="fa fa-clock-o"></i> 2.00</span> –
															<a href="javascript:void(0);">Simplified our approach
																to...</a></li>
													</ul></li>
												<li class="parent_li" role="treeitem"><span
													class="label label-warning" title="Collapse this branch"><i
														class="fa fa-lg fa-minus-circle"></i> Wednesday, January
														9: 6.00 hours</span>
													<ul role="group">
														<li><span><i class="fa fa-clock-o"></i> 3.00</span> –
															<a href="javascript:void(0);">Fixed bug caused by...</a>
														</li>
														<li><span><i class="fa fa-clock-o"></i> 3.00</span> –
															<a href="javascript:void(0);">Comitting latest code
																to Git...</a></li>
													</ul></li>
												<li class="parent_li" role="treeitem"><span
													class="label label-danger" title="Collapse this branch"><i
														class="fa fa-lg fa-minus-circle"></i> Wednesday, January
														9: 4.00 hours</span>
													<ul role="group">
														<li><span><i class="fa fa-clock-o"></i> 2.00</span> –
															<a href="javascript:void(0);">Create component
																that...</a></li>
													</ul></li>
											</ul></li>
										<li class="parent_li" role="treeitem"><span
											title="Collapse this branch"><i
												class="fa fa-lg fa-calendar"></i> 2013, Week 3</span>
											<ul role="group">
												<li class="parent_li" role="treeitem"><span
													class="label label-success" title="Collapse this branch"><i
														class="fa fa-lg fa-minus-circle"></i> Monday, January 14:
														8.00 hours</span>
													<ul role="group">
														<li><span><i class="fa fa-clock-o"></i> 7.75</span> –
															<a href="javascript:void(0);">Writing
																documentation...</a></li>
														<li><span><i class="fa fa-clock-o"></i> 0.25</span> –
															<a href="javascript:void(0);">Reverting code back
																to...</a></li>
													</ul></li>
											</ul></li>
									</ul>
								</div>

							</div>
							<!-- end widget content -->

						</div>
						<!-- end widget div -->

					</div>
					<!-- end widget -->

				</article>

				<!-- aaaaaaaaaaaaaaaaaaa -->

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