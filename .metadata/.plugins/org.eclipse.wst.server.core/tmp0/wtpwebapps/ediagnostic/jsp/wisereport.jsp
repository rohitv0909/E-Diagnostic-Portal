<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Path wise reports</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
</head>
<body>
<%
String id=request.getParameter("pid");
System.out.println(id);
String strsql="select * from worker where pathid=?";
ResultSet rs=CrudOperation.fetchData(strsql, id);
while(rs.next())
{
	String wk=rs.getString("workerid");
	String str1="select * from patientreport where workerid=?";
	ResultSet rs1=CrudOperation.fetchData(str1, wk); 
%>
<table align="center" border=1>
		<tr><th>Patient Name</th><th>Test ID</th>
		</tr>
		<%
		while(rs1.next())
		{
			String roll=rs.getString("name");
			String name=rs.getString("workerid");
		%>
		<tr><th><%=roll%></th>
		<th><%=name%></th>
		</tr>
		<%}
		rs1.close();
		}
		rs.close();
		%>
		</table>
</body>
</html>