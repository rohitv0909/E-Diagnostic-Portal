<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Accounts</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
</head>
<body>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">VIEW ACCOUNTS</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/admin_menu.html"%>
	</div>
	<div
		style="width: 80%; height: 700px; background-color: #28B0CD; float: left">
		<%
		String strsql="select * from logininfo";
		ResultSet rs=CrudOperation.fetchData(strsql);
		%>

		<table border=1>
		<tr><th>User ID</th><th>Password</th><th>Role</th>
		</tr>
		<%
		while(rs.next())
		{
			String qt=rs.getString("usertype");
		%>
		<tr><th><%=rs.getString("userid") %></th>
		<th><%=rs.getString("userpass") %></th>
		<th><%=qt %></th></tr>
		<%}
		rs.close();%>
		</table>
	</div>
</body>
</html>