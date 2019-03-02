<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload Profile Pic</title>

</head>
<body>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">Upload profile pic</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/worker_menu.html"%>
	</div>
	<div
		style="width: 80%; height: 700px; background-color: #28B0CD; float: left">
		<form action="/ediagnostic/Upload" method="post" enctype="multipart/form-data">
		<table style="margin-top: 100px;margin-left: 400px;font-size: 20px">
		<tr><th>Picname</th><th><input type="file" name="txtpic" id="txtpic"></th></tr>
		<tr><th colspan=2><button type="submit">Update</button></th></tr>
		</table>
		<p id="msgmail" style="color: red"></p>
		<p id="msgphone" style="color: red"></p>
		<p id="msgcity" style="color: red"></p>
		</form>
	</div>
</body>
</html>