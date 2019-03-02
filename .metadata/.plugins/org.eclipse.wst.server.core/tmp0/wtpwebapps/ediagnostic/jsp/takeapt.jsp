<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,ediagnostic.dbtasks.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Take Appointment</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<script>
  
  $(document).ready(function()	
  		{
      $("#cmbdept").change(
      		function(){
      			var pthid=this.value;
      			//alert(pthid)
      			 $.get("/ediagnostic/jsp/pathwisetests.jsp",
      			        {
      			          did:pthid          
      			        },
      			        function(data,status){
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
<% 
     HttpSession hs=request.getSession(false);
     String uid=(String)hs.getAttribute("userkey");
     %>
<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;"><%=uid %></h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/patient_menu.html"%>
	</div>
	<div
		style="width: 80%; height: 700px; background-color: #28B0CD; float: left; background-image: url('/ediagnostic/images/PFL020118.jpg');">
<%
String strsql="select * from pathology";
ResultSet rs=CrudOperation.fetchData(strsql);
%>
<form action="/ediagnostic/TakeApt" method="post">
<table>
<tr><th>Choose pathology :</th><th><select name="cmbdept" id="cmbdept">
<option value="def">Select pathology :</option>
<%
while(rs.next())
{
	String id=rs.getString("pathid");
	String name=rs.getString("name");
%>
<option value="<%=id%>"><%=name%></option> 
<%} %>

</select></th></tr>
<tr><th>Choose test name :</th><th id="div1"></th></tr>
<tr><th></th></tr>
</table>
</form>
</div>
</body>
</html>