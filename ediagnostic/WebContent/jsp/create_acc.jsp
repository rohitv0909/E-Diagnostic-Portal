<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Patho Owner account</title>

<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<script>
$(document).ready(function()
  		{
      $("#txtpatientid").blur(
      		function(){
      			var rid=this.value;
      			//alert(ui)
      			 $.get("/ediagnostic/jsp/idcheck.jsp",
      			        {
      			          recid:rid
      			          
      			        },
      			        function(data,status){
      			        	//if(data=="")
      			          //  alert("Data: " + data + "\nStatus: " + status);
      			             $("#div1").html(data);
      			             $("#div1").show();
      			             //$("#div1").hide(5000);
      			             
      			        });
      });
  });
  
  
	function main() {
		var ui = document.getElementById("txtpathologyid").value;
		var upass = document.getElementById("pass").value;
		var b = true
		
		if (checkEmpty(ui) == false) {
			document.getElementById("msgid").innerHTML = "Patient ID required"
			document.getElementById("txtpathologyid").focus()
			b = false
		}
		else if (checkEmpty(ui)==true) 
		{
			document.getElementById("msgid").innerHTML = ""
		}

		if (checkEmpty(upass) == false) {
			//alert("userpass needed")
			    document.getElementById("msgpass").innerHTML = "Password required"
				document.getElementById("pass").focus()
			b = false
		}
		else if (checkEmpty(upass) == true) {
			document.getElementById("msgpass").innerHTML = ""
		}
		
		return b
	}
</script>

</head>
<body class=pathoreg>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">Pathology Owner Registration</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/admin_menu.html"%>
	</div>
	<div style="width: 80%; height: 700px; float: left">
	<%
	HttpSession hs=request.getSession(false);
	String uid=(String)hs.getAttribute("userkey");
	%>
		<form action="/ediagnostic/CreateAcc" method="post" 
		onsubmit="return main()">

			<table class="regpatho">
			<tr>
					<th>Pathology Id</th>
					<th><input type="text" id="txtpatientid" name="txtpatientid"
						placeholder="enter pathology id"></th>
						<th id="div1"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgid" style="color: red;font-size: small;"></th>
				</tr>
				<tr>
					<th>Password</th>
					<th><input type="password" id="pass" name="pass"
						placeholder="enter password"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgpass" style="color: red;font-size: small;"></th>
				<tr>
					<td align="center"><button type="submit">Submit</button></td>
					<td align="center"><button type="reset">Reset</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>