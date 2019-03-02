<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,ediagnostic.dbtasks.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View pathology wise reports</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<script src="/ecollege/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function()
	{
		$("#cmbpath").change(function() {
			var recid = this.value;
			//alert(recid)

			$.get("/ediagnostic/jsp/wisereport.jsp", {
				pid : recid

			}, function(data, status) {
				//if(data=="")
				//alert("Data: " + data + "\nStatus: " + status);
				$("#div1").html(data);
				$("#div1").show();
				//$("#div1").hide(5000);

			});

		});
	});
</script>
</head>
<body>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">Pathology Wise Reports</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/admin_menu.html"%>
	</div>
	<div style="width: 80%; height: 700px; float: left">
		<%
			String strsql = "select * from pathology";
			ResultSet rs = CrudOperation.fetchData(strsql);
		%>
		<select name="cmbpath" id="cmbpath">
			<option value="default">Select pathology name</option>
			<%
				while (rs.next()) {
					String id = rs.getString("pathid");
					String name = rs.getString("name");
			%>
			<option value="<%=id%>"><%=name%></option>
			<%
				}
			%>

		</select>
		<div id="div1"
			style="width: 100%; height: 600px; background-color: aqua; overflow: scroll; display: none;">
		</div>



	</div>
</body>
</html>