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
<script src="${contextPath}/resources/js/libs/jquery-2.1.1.min.js"></script>
<script src="${contextPath}/resources/js/libs/jquery-ui-1.10.3.min.js"></script>
</head>
<body class="fixed-header fixed-navigation fixed-page-footer">
	<%@include file="shared/header.jsp"%>
	<div style="margin: 75px 16px;">
		<c:if test="${userClickCountry == true}">
			<%@include file="contrySelection.jsp"%>
		</c:if>
		<c:if test="${userClickHome == true}">
			<%@include file="mainPage.jsp"%>
		</c:if>

	</div>
	<div class="page-footer" style="padding: 15px;">
		<div class="row">
			<div class="col-xs-12 col-sm-6">
				<span class="txt-color-white">Shared ID <span
					class="hidden-xs"> - Web Application </span></span>
			</div>

		</div>
	</div>

	<script src="${contextPath}/resources/js/app.config.js"></script>
	<script src="${contextPath}/resources/js/bootstrap/bootstrap.min.js"></script>
	<script
		src="${contextPath}/resources/js/notification/SmartNotification.min.js"></script>
	<script
		src="${contextPath}/resources/js/smartwidgets/jarvis.widget.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/fastclick/fastclick.min.js"></script>
	<script src="${contextPath}/resources/js/app.min.js"></script>
	<script src="${contextPath}/resources/js/speech/voicecommand.min.js"></script>
	<script
		src="${contextPath}/resources/js/plugin/flot/jquery.flot.tooltip.min.js"></script>

</body>

</html>