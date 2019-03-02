<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pathology admin</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
</head>
<body>
<% HttpSession hs = request.getSession(false);
				String uid = (String) hs.getAttribute("userkey"); %>
<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;"><%=uid%>'s Home Page</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/owner_menu.html"%>
	</div>
	<div style="width: 80%; height: 700px; float: left">
	
	</div>
</body>
</html>