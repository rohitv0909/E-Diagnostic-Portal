<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Doctor Accounts</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
</head>
<body>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">VIEW DOCTOR ACCOUNTS</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/owner_menu.html"%>
	</div>
	<div
		style="width: 80%; height: 700px; background-color: #28B0CD; float: left">
		<%
		HttpSession hs=request.getSession(false);
	    String uid=(String)hs.getAttribute("userkey");
		String strsql="select * from doctor where pathid=?";
		ResultSet rs=CrudOperation.fetchData(strsql,uid);
		%>
		<table border=1>
		<tr><th>Doctor ID</th><th>Name</th><th>Address</th><th>Phone No.</th><th>Email</th><th>Skills</th><th>High Qualifications</th>
		</tr>
		<%
		while(rs.next())
		{
		%>
		<tr><th><%=rs.getString("doctorid") %></th>
		<th><%=rs.getString("name") %></th>
		<th><%=rs.getString("address") %></th>
		<th><%=rs.getString("phoneno") %></th>
		<th><%=rs.getString("email") %></th>
		<th><%=rs.getString("skills") %></th>
		<th><%=rs.getString("highqual") %></th></tr>	
		<%}
		rs.close();%>
		</table>
	</div>
</body>
</html>