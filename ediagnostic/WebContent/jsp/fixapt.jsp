<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fix pending appointments</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
</head>
<body>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">Fix appointments</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/worker_menu.html"%>
	</div>
	<div style="width: 80%; height: 700px; float: left">
		<form method="post" action="/ediagnostic/FixApt">
		<table border="1" style="margin-top: 100px;margin-left: 400px;font-size: 20px">
		<tr><th>Select</th><th>Test ID</th><th>Patient ID</th><th>Date</th>
		</tr>
		<%
		
		String strsql="select * from test_apt where status=?";
		ResultSet rs=CrudOperation.fetchData(strsql,"pending");		
		while(rs.next())
		{
			int aptid=rs.getInt("aptid");
		%>
		<tr>
		<th><input type="checkbox" name="chk" value=<%=aptid%>></th>
		<th><%=rs.getString("testid") %></th>
		<th><%=rs.getString("patientid") %></th>
		<th><%=rs.getString("date") %></th>
		</tr>
		<tr>
		<td align="center" colspan="5" style="height: 50px"><button type="submit">Fix Apt</button></td>
		</tr>
		<%
		}
		rs.close();%>
		</table>
		</form>
	</div>
</body>
</html>