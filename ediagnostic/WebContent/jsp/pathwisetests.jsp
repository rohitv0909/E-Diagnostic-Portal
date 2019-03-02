<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<meta charset="ISO-8859-1">
<title>Pathology wise tests</title>
</head>
<body>
<%
String id=request.getParameter("did");
System.out.println(id);
String strsql="select * from tests where pathid=?";
ResultSet rs=CrudOperation.fetchData(strsql, id);
%>
<div style="margin-left: 20%; margin-left: 100px;">
Tests available :<select name="cmbtest" id="cmbtest">
		<%
		while(rs.next())
		{
			String roll=rs.getString("testid");
			String name=rs.getString("testname");
		%>
		<option value=<%=roll%>><%=name%></option>
		<%}
		rs.close();%>
		</select>
		<br><br>
		Select Date for appointment :<input name="txtdate" id="txtdate" type="date"></input><br><br>
		Remarks :<textarea name="txtrem" id="txtrem"></textarea><br><br>
		<button type="submit">Request appointment</button>
		</div>
</body>
</html>