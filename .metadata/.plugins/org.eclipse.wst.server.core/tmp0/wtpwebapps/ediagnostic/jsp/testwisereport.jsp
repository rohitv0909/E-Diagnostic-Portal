<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datewise tests</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<script src="/ecollege/bootstrapfiles/jquery-3.3.1.min.js"></script>
<style>
td
{
text-align: center;
}
</style>
</head>
<body>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">Testwise Appointment Details</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/owner_menu.html"%>
	</div>
	<div style="width: 80%; height: 700px; float: left">
		<%
			HttpSession hs = request.getSession(false);
			String uid = (String) hs.getAttribute("userkey");
			String strsql = "select * from test_apt order by testid";
			ResultSet rs = CrudOperation.fetchData(strsql);
		%>
		<table>
			<tr><th>Test ID</th><th>Appointment ID</th><th>Patient ID</th></tr>
			<%
				while (rs.next()) 
				{
					String wid = rs.getString("workerid");
					String str = "select * from worker where workerid=?";
					ResultSet rs1 = CrudOperation.fetchData(str,wid);
					if(rs1.next())
					{
					String pd = rs1.getString("pathid");
					if(pd.equalsIgnoreCase(uid))
					{
			%>
			<tr>
			<td><%=rs.getString("testid")%></td>
			<td><%=rs.getString("aptid")%></td>
			<td><%=rs.getString("patientid")%></td>
			</tr>
			<%}} %>
			
			<%
				}
			%>
			</table>
		<div id="div1"
			style="width: 100%; height: 600px; background-color: aqua; overflow: scroll; display: none;">
		</div>



	</div>
</body>
</html>