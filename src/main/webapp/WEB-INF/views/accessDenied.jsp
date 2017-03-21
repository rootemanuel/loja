<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>AccessDenied page</title>
</head>
<body>
	
	<sec:authorize access="hasRole('USER')">
	Dear <strong>${user}</strong>, You are not authorized to access this page
	</sec:authorize>
	<sec:authorize access="hasRole('ADMIN')">
	<a href="<c:url value="/logout" />">Logout</a>
	</sec:authorize>
</body>
</html>