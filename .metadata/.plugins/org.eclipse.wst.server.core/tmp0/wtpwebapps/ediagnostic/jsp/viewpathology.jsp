<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Pathology</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
</head>
<body>
<% 
     HttpSession hs=request.getSession(false);
     String uid=(String)hs.getAttribute("userkey");
     %>
<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;"><%=uid %></h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/owner_menu.html"%>
	</div>
	<div
		style="width: 80%; height: 700px; background-color: #28B0CD; float: left">
		<%
		String strsql="select * from pathology where pathid=?";
		ResultSet rs=CrudOperation.fetchData(strsql,uid);		
		if(rs.next())
		{
		%>
		<table border="1" style="margin-top: 100px;margin-left: 200px;font-size: 20px">
		<tr><th>Name</th><th><%=rs.getString("name") %></th></tr>
		<tr><th>Address</th><th><%=rs.getString("address") %></th></tr>
		<tr><th>phoneNo.</th><th><%=rs.getString("phoneno") %></th></tr>
		<tr><th>Email</th><th><%=rs.getString("email") %></th></tr>
		<tr><th>City</th><th><%=rs.getString("city") %></th></tr>
		<tr><th>Speciality</th><th><%=rs.getString("speciality") %></th></tr>
		<tr><th>Description</th><th><%=rs.getString("desc") %></th></tr>
		</table>
		<%
		}
		rs.close();%>
	</div>
</body>
</html>