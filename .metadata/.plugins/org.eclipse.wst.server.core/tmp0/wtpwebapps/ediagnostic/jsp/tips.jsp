<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Tips</title>
<script src="/ediagnostic/js/validation.js"></script>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script>
function main() 
{
	var title = document.getElementById("txttitle").value;
	var contents = document.getElementById("txtcontents").value;
	var b = true
	if (checkEmpty(title) == false) 
	{
		document.getElementById("msgtitle").innerHTML = "Please enter title of the tip"
		document.getElementById("txttitle").focus()
		b = false
	}
	else if (checkEmpty(title) == true) 
	{
		document.getElementById("msgtitle").innerHTML = ""
	}
	if (checkEmpty(contents) == false) 
	{
		document.getElementById("msgcontents").innerHTML = "Please enter content of the tip"
		document.getElementById("txtcontents").focus()
		b = false
	}
	else if (checkEmpty(contents) == true) 
	{
		document.getElementById("msgcontents").innerHTML = ""
	}
	return b
}
</script>
</head>
<body>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">POST TIPS</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/doctor_menu.html"%>
	</div>
	<div
		style="width: 80%; height: 700px; background-color: #28B0CD; float: left">
		<form action="/ediagnostic/AddTips1" method="post" onsubmit="return main()">
		<table style="margin-left: 400px; margin-top: 150px">
		<tr><th>Title</th><th><input type="text" name="txttitle" id="txttitle"
		placeholder="Please enter title of the tip"></th>
		</tr>
		<tr><td colspan="2" id="msgtitle" style="color: red"></th></tr>
		<tr><th>Contents</th><th><textarea name="txtcontents" id="txtcontents" rows="5" placeholder="Please enter content of the tip"></textarea></th>
		</tr>
		<tr><td colspan="2" id="msgcontents" style="color: red"></th></tr>
		<tr><td align="center" colspan=2><button type="submit">Submit</td></tr>
		</table>
		</form>
	</div>
</body>
</html>