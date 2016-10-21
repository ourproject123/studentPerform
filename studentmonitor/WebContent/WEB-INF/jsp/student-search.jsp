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
<title>Search student records</title>
</head>
<body>



</body>
</html>