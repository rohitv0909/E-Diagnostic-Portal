<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pathology Wise Tests Available</title>
</head>
<body>
<%
String id=request.getParameter("did");
String strsql="select * from tests where pathid=?";
ResultSet rs=CrudOperation.fetchData(strsql, id);
%>
<table align="center" border=1>
		<tr><th>Test ID</th><th>Name</th><th>Charges(in INR)</th>
		</tr>
		<%
		while(rs.next())
		{
			String tid=rs.getString("testid");
			String name=rs.getString("testname");
			String charges=rs.getString("charges");
		%>
		<tr><th><%=tid%></th>
		<th><%=name%></th>
		<th><%=charges%></th>
		</tr>
		<%}
		rs.close();%>
		</table>
</body>
</html>