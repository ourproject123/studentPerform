<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- add tag srping:url -->
<spring:url value="/resources/css/jquery-ui.css" var="jqueryUiCSS" />
<spring:url value="/resources/css/student_monitor_main.css" var="studentMonitorMainCSS" />
<spring:url value="/resources/js/jquery.js" var="jqueryJS" />
<spring:url value="/resources/js/jquery-ui.js" var="jqueryUiJS" />

<link href="${jqueryUiCSS}" rel="stylesheet" />
<link href="${studentMonitorMainCSS}" rel="stylesheet" />
<script src="${jqueryJS}"></script>
<script src="${jqueryUiJS}"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Performance Records</title>

<script type="text/javascript">
$(document).ready(function () {	
	
	$('#nav li').hover(
		function () {
			//show its submenu
			$('ul', this).stop().slideDown(100);

		}, 
		function () {
			//hide its submenu
			$('ul', this).stop().slideUp(100);			
		}
	);
	
});

function home_onClick() {
	   alert('home');
}

function create_onClick() {
	   alert('create');
	   $( "#main-body" ).load( "http://localhost:8080/studentmonitor/studentrecords/" );
	   //http://localhost:8080/studentmonitor/studentrecords/
}

function maintain_onClick() {
	   alert('maintain');
}

</script>

</head>
<body>

<div id="main-header">
<div id="sys-name">Student Performance Management System</div>
<div id="school-name-name">Rajasinha Maya Vidyalaya</div>
</div>
<div id="main-menu">
<ul id="nav">
	<li><a href="#" id="home-link" onClick="home_onClick()">Home</a></li>
	<li><a href="#" class="selected">Student Records ></a>
		<ul>
			<li><a href="#" onClick="create_onClick()">Create</a></li>
			<li><a href="#" onClick="maintain_onClick()">Maintain</a></li>
		</ul>
		<div class="clear"></div>
	</li>
	<li><a href="#">Reports > </a>
	<ul>
		<li><a href="#">Full Report</a></li>
		<li><a href="#">Statstics</a></li>
	</ul>			
		<div class="clear"></div>
	</li>
	<li><a href="#">Logout</a></li>
</ul>

</div>
<br><br>
<div id="main-body">

</div>


</body>
</html>