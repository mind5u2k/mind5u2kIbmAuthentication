<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<header id="header" style="background: #313131 !important;">
<div id="logo-group">
	<!-- PLACE YOUR LOGO HERE -->
	<span id="logo"> <img style="width: 64px;"
		src="${contextPath}/resources/img/ibmlogo.png" alt="SmartAdmin">
	</span><span id="activity" class="activity-dropdown" style="color: #313131;">
		<i class="fa fa-user"></i>
	</span>
	<div class="ajax-dropdown" style="display: none; height: auto;">
		<div class="btn-group btn-group-justified" data-toggle="buttons">
			<label class="btn btn-default"> <input type="radio"
				name="activity" id="ajax/notify/mail.html">User Info
			</label>
		</div>
		<div class=" "></div>
		<table style="display: table; width: 100%;">
			<tbody>
				<tr style="border-bottom: 1px solid #ccc; background: #eaeaea;">
					<td style="padding: 4px 0px 4px 14px;">Name</td>
					<td style="padding: 4px">${userModel.fullName}</td>
				</tr>
				<tr style="border-bottom: 1px solid #ccc; background: #f7f6f6;">
					<td style="padding: 4px 0px 4px 14px;">E-Mail</td>
					<td style="padding: 4px">${userModel.email}</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<div class="hidden-xs" style="border-left: 1px solid #000;">
	<div style="border-left: 2px solid #4e4d4d; height: 100%;">
		<span id="logo" style="color: #fff; font-size: 16px; width: auto;">
			Shared ID Management</span>

	</div>
</div>

<div class="pull-right">

	<!-- #MOBILE -->
	<!-- Top menu profile link : this shows only when top menu is active -->
	<ul id="mobile-profile-img"
		class="header-dropdown-list hidden-xs padding-5">
		<li class=""><a href="#"
			class="dropdown-toggle no-margin userdropdown" data-toggle="dropdown">
				asd </a>
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
					data-action="toggleShortcut"><i class="fa fa-arrow-down"></i> <u>S</u>hortcut</a></li>
				<li class="divider"></li>
				<li><a href="javascript:void(0);"
					class="padding-10 padding-top-0 padding-bottom-0"
					data-action="launchFullscreen"><i class="fa fa-arrows-alt"></i>
						Full <u>S</u>creen</a></li>
				<li class="divider"></li>
				<li><a href="${contextPath}/perform-logout"
					class="padding-10 padding-top-5 padding-bottom-5"
					data-action="userLogout"><i class="fa fa-sign-out fa-lg"></i> <strong><u>L</u>ogout</strong></a></li>
			</ul></li>
	</ul>

	<div id="hide-menu" class="btn-header pull-right">
		<span> <a href="javascript:void(0);" data-action="toggleMenu"
			title="Collapse Menu"><i class="fa fa-reorder"></i></a>
		</span>
	</div>

	<!-- logout button -->
	<div id="logout" class="btn-header transparent pull-right">
		<span> <a href="${contextPath}/perform-logout" title="Sign Out"
			data-action="userLogout"
			data-logout-msg="You can improve your security further after logging out by closing this opened browser"><i
				class="fa fa-sign-out"></i></a>
		</span>
	</div>
	<div id="fullscreen" class="btn-header transparent pull-right">
		<span> <a href="javascript:void(0);"
			data-action="launchFullscreen" title="Full Screen"><i
				class="fa fa-arrows-alt"></i></a>
		</span>
	</div>
	<div id="fullscreen" class="btn-header transparent pull-right">
		<span> <a href="CompDashBasePage" style="padding: 3px;"><i
				style="font-size: 21px;" class="fa fa-home"></i></a>
		</span>
	</div>
</div>
</header>
