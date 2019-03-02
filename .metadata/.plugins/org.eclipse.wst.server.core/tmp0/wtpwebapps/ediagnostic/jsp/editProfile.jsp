<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,ediagnostic.dbtasks.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script><script>
function main() {
	var name = document.getElementById("txtname").value;
	var email = document.getElementById("txtemail").value;
	var address = document.getElementById("txtaddress").value;
	var phone = document.getElementById("txtphone").value;
	var b = true
	if (checkEmpty(name) == false) 
	{
		document.getElementById("msgname").innerHTML = "Please enter name"
		document.getElementById("txtname").focus()
		b = false
	}
	else if (checkEmpty(name) == true) 
	{
		document.getElementById("msgname").innerHTML = ""
	}
	if (checkEmpty(email) == false) 
	{
		document.getElementById("msgemail").innerHTML = "Please enter email id"
		document.getElementById("txtemail").focus()
		b = false
	}
	else if (checkEmpty(email) == true) 
	{
		document.getElementById("msgemail").innerHTML = ""
	}
	if (checkEmpty(phone) == false) 
	{
		document.getElementById("msgphone").innerHTML = "Please enter phone no."
		document.getElementById("txtphone").focus()
		b = false
	}
	else if (checkEmpty(phone) == true) 
	{
		document.getElementById("msgphone").innerHTML = ""
	}
	if (checkEmpty(address) == false) {
		document.getElementById("msgaddress").innerHTML = "Please enter your address"
		document.getElementById("txtaddress").focus()
		b = false
	}
	else if (checkEmpty(address) == true) 
	{
		document.getElementById("msgaddress").innerHTML = ""
	}
	return b
}
</script>
</head>
<body>
<% 
	HttpSession hs=request.getSession(false);
    String uid=(String)hs.getAttribute("userkey");
    String utype=(String)hs.getAttribute("utype");
     %>
	<div
		style="width: 100%; height: 500px; background-color: #28B0CD; float: left;">
		<%
		
		String strsql=null;
		if(utype.equalsIgnoreCase("patient"))
			strsql="select * from patient where patientid=?";
		else if(utype.equalsIgnoreCase("doctor"))
			strsql="select * from doctor where doctorid=?";
		else if(utype.equalsIgnoreCase("owner"))
			strsql="select * from pathology where pathid=?";
		else if(utype.equalsIgnoreCase("worker"))
			strsql="select * from worker where workerid=?";
		ResultSet rs=CrudOperation.fetchData(strsql,uid);		
		if(rs.next())
		{
			String name=rs.getString("name");
			String email=rs.getString("email");
			String phone=rs.getString("phoneno");
			String address=rs.getString("address");
		%>
		<form action="/ediagnostic/EditProfile" method="post" onsubmit="return main()">
		<table align="center" style="margin-top: 100px;margin-left: 400px;font-size: 20px">
		<tr><th>Your Name</th><th><input type="text" name="txtname" id="txtname" value="<%=name%>"></th></tr>
		<th><th colspan="2" id="msgname" style="color: red"></th></tr>
		<tr><th>Your Email ID</th><th><input type="text" name="txtemail" id="txtemail" value="<%=email%>"></th></tr>
		<th><th colspan="2" id="msgemail" style="color: red"></th></tr>
		<tr><th>Your Phone No.</th><th><input type="text" name="txtphone" id="txtphone" value="<%=phone%>"></th></tr>
		<th><th colspan="2" id="msgphone" style="color: red"></th></tr>
		<tr><th>Your Address</th><th><input type="text" name="txtaddress" id="txtaddress" value="<%=address%>"></th></tr>
		<th><th colspan="2" id="msgaddress" style="color: red"></th></tr>
		<tr><th colspan=2><button type="submit">Update</button></th></tr>
		</table>
		</form>
		<%
		}
		rs.close();%>
	</div>
</body>
</html>