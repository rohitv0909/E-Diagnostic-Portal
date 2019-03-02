<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,ediagnostic.dbtasks.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check ID</title>
</head>
<body>

<%
response.setContentType("text/html");
PrintWriter o=response.getWriter();
String id=request.getParameter("recid");
System.out.println(id);
	String str1="select * from logininfo where userid=?";
	ResultSet rs=CrudOperation.fetchData(str1, id);
			if(rs.next())
			{
				out.println("Valid id");
			}
			else
			{
				out.println("Invalid id");
			}
			rs.close();%>
</body>
</html>