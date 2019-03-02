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
<meta charset="ISO-8859-1">
<title>Inbox</title>
</head>
<body>
<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">Inbox</h1>
	</div>
	<div
		style="width: 100%; height: 700px; background-color: #28B0CD; float: left;">
		<form method="post" action="/ediagnostic/DeleteInbox">
		<table style="margin-top: 100px;margin-left: 400px;font-size: 20px">
		<tr><th>Select</th><th>Sender ID</th><th>Subject</th><th>Message</th><th>Date</th>
		</tr>
		<%
		HttpSession hs=request.getSession(false);
		String uid=(String)hs.getAttribute("userkey");
		String strsql="select * from inbox where receiverid=?";
		ResultSet rs=CrudOperation.fetchData(strsql,uid);		
		while(rs.next())
		{
			String msgid=rs.getString("msgid");
			String sid=rs.getString("senderid");
		%>
		<tr>
		<th><input type="checkbox" name="chk" value=<%=msgid%>></th>
		<th><%=sid%></th>
		<th><%=rs.getString("subject") %></th>
		<th><%=rs.getString("message") %></th>
		<th><%=rs.getString("dateofmsg") %></th>
		</tr>
		<tr>
		<td align="center" colspan="5" style="height: 50px"><button type="submit">Delete</button></td>
		</tr>
		<%
		}
		rs.close();%>
		</table>
		</form>
	</div>
</body>
</html>