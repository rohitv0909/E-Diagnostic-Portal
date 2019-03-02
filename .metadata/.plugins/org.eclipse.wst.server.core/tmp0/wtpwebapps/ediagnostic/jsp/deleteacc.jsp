<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Account</title>
</head>
<body>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">DELETE ACCOUNT</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/admin_menu.html"%>
	</div>
	<div
		style="width: 80%; height: 700px; background-color: #28B0CD; float: left">
		<%
		String strsql="select * from logininfo where usertype!='admin'";
		ResultSet rs=CrudOperation.fetchData(strsql);
		%>
		<form method="post" action="/ediagnostic/DeleteAccount1">
		<table border=1>
		<tr><th>Select</th><th>User ID</th><th>Password</th><th>Role</th>
		</tr>
		<%
		while(rs.next())
		{
			String userid=rs.getString("userid");
		%>
		
		<tr>
		<th><input type="checkbox" name="chk" value=<%=userid%>></th>
		<th><%=userid%></th>
		<th><%=rs.getString("userpass") %></th>
		<th><%=rs.getString("usertype") %></th>
		</tr>
		<%}
		rs.close();%>
		<tr><th colspan=4><button type="submit">Delete</button></th></tr>
		</table>
		</form>
	</div>
</body>
</html>