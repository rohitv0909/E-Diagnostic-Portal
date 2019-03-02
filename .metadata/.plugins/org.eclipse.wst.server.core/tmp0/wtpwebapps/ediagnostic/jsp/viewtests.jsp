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
      			 $.get("/ediagnostic/jsp/pwtests.jsp",
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
String strsql="select * from pathology";
ResultSet rs=CrudOperation.fetchData(strsql);
%>
Choose pathology :<select name="cmbdept" id="cmbdept">
<option value="def">Select pathology :</option>

<%
while(rs.next())
{
	String id=rs.getString("pathid");
	String name=rs.getString("name");
%>
<option value="<%=id%>"><%=name%></option> 
<%} %>
</select>
<div id="div1" style="width:100%; height:500%"></div>
</body>
</html>