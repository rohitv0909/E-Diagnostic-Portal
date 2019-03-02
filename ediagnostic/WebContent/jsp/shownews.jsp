<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,ediagnostic.dbtasks.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show News</title>
</head>
<body>

	<a href="/ediagnosic/jsp/home.jsp">Back to home</a>
<%
	String nid=request.getParameter("id");
	int news_id=Integer.parseInt(nid);
	String strsql="select contents from news where newsid=?";
	ResultSet rs=CrudOperation.fetchData(strsql,news_id);
	if(rs.next())
	{%>
	<div>
	
	<textarea rows=10 cols=20> 
	<%=rs.getString("contents")%>
	</textarea>
	
	</div>	
	<% }
%>
</body>
</html>