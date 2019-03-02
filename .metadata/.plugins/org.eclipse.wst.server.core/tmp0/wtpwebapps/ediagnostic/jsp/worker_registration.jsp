<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Registration</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<script>
/* $(document).ready(function()
  		
  		{
      $("#txtworkerid").blur(
      		function(){
      			var ui=this.value;
      			alert(ui)
       
      			 $.get("/ediagnostic/jsp/idcheck.jsp",
      			        {
      			          recid:ui
      			        },
      			        function(data,status){
      			        	//if(data=="")
      			          //  alert("Data: " + data + "\nStatus: " + status);
      			             $("#div1").html(data);
      			             $("#div1").show();
      			             //$("#div1").hide(5000);
      			             
      			        });
      			
      			
      			
      });
  }); */

	function main() {
		var ui = document.getElementById("txtworkerid").value;
		var upass = document.getElementById("txtpass").value;
		var uname = document.getElementById("txtname").value;
		var uemail = document.getElementById("txtmail").value;
		var uphone = document.getElementById("txtphone").value;
		var address = document.getElementById("txtaddress").value;
		var ddl = document.getElementById("cmbcity");
		var course = ddl.options[ddl.selectedIndex].value;
		var b = true

		
		
		if (checkEmpty(ui) == false) {
			document.getElementById("msgid").innerHTML = "worker ID required"
			document.getElementById("txtworkerid").focus()
			b = false
		}
		else if (checkEmpty(ui)==true) 
		{
			document.getElementById("msgid").innerHTML = ""
		}

		if (checkEmpty(upass) == false) {
			//alert("userpass needed")
			    document.getElementById("msgpass").innerHTML = "Password required"
				document.getElementById("txtpass").focus()
			b = false
		}
		else if (checkEmpty(upass) == true) {
			document.getElementById("msgpass").innerHTML = ""
		}

		if (checkEmpty(uname) == false) {
			//alert("userpass needed")
			    document.getElementById("msgname").innerHTML = "name required"
				document.getElementById("txtname").focus()
			b = false
		}
		else if (checkEmpty(uname) == true) {
			document.getElementById("msgname").innerHTML = ""
		}
		
		if (checkEmpty(uemail) == false) {
			//alert("userpass needed")
			    document.getElementById("msgmail").innerHTML = "email Id required"
				document.getElementById("txtmail").focus()
			b = false
		}
		else if (checkEmpty(uemail) == true) {
			document.getElementById("msgmail").innerHTML = ""
		}
		
		if (checkEmpty(uphone) == false) {
			//alert("userpass needed")
			    document.getElementById("msgphone").innerHTML = "phone no. required"
				document.getElementById("txtphone").focus()
			b = false
		}
		else if (checkEmpty(uphone) == true) {
			document.getElementById("msgphone").innerHTML = ""
		}
		
		if (checkEmpty(address) == false) {
			//alert("userpass needed")
			    document.getElementById("msgaddress").innerHTML = "address is required"
				document.getElementById("txtaddress").focus()
			b = false
		}
		else if (checkEmpty(address) == true) {
			document.getElementById("msgaddress").innerHTML = ""
		}
		 
		if (course == "default") {
			document.getElementById("msgcity").innerHTML = "Please select a city"
			document.getElementById("cmbcity").focus()
			b = false
		} 
		else {
			document.getElementById("msgcity").innerHTML = ""
		}
		return b
		//alert(ui)
	}
</script>
</head>
<body>
<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">Worker Registration Window</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/owner_menu.html"%>
	</div>
	<div style="width: 80%; height: 700px; float: left">

		<form action="/ediagnostic/WorkerRegistration" method="post" onsubmit="return main()">

			<table align="center"
				style="margin-top: 50px; margin-left: 80px; height: 420px;">
				<% HttpSession hs = request.getSession(false);
				String uid = (String) hs.getAttribute("userkey"); %>
				<tr style="width: 300px">
					<th>Pathology Id</th>
					<th><input type="text" id="txtpathid" name="txtpathid"
						value=<%=uid%> readonly="readonly"></th>
				</tr>
				<tr style="width: 300px">
					<th>Worker Id</th>
					<th><input type="text" id="txtworkerid" name="txtworkerid"
						placeholder="enter worker id"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgid" style="color: red;font-size: small;"></th>
				</tr>


				<tr>
					<th>Password</th>
					<th><input type="password" id="txtpass" name="txtpass"
						placeholder="enter password"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgpass" style="color: red;font-size: small;"></th>


				</tr>
				
				<tr>
					<th>Name</th>
					<th><input type="text" id="txtname" name="txtname"
						placeholder="enter name"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgname" style="color: red;font-size: small;"></th>
				</tr>

				
				<tr>
					<th>Email</th>
					<th><input type="email" id="txtmail" name="txtmail"
						placeholder="enter email"></th>
				</tr>
				<tr">
					<th colspan="2" id="msgmail" style="color: red;font-size: small;"></th>


				</tr>

				<tr>
					<th>Phone No.</th>
					<th><input type="number" id="txtphone" name="txtphone"
						placeholder="enter phone no."></th>
				</tr>
				<tr>
					<th colspan="2" id="msgphone" style="color: red;font-size: small;"></th>


				</tr>

				<tr>
					<th>Address</th>
					<th><textarea id="txtaddress" name="txtaddress" placeholder="enter address"></textarea></th>
						
				</tr>
				<tr>
					<th colspan="2" id="msgaddress" style="color: red;font-size: small;"></th>

				<tr>
					<th>City</th>
					<th><select id="cmbcity" name="cmbcity">
							<option value="default">Select city:</option>
							<option value="Lucknow">Lucknow</option>
					</select></th>
				</tr>
				<tr>
					<th colspan="2" id="msgcity" style="color: red; font-size: small;"></th>

				</tr>
				<tr>
				<td><input type="radio" name="rights" id="rights" value="nofix" checked>Can't Fix Appointments<br></td>
  				<td><input type="radio" name="rights" id="rights" value="fix">Can Fix Appointments<br></td>
  				</tr>
  				<tr>
					<th colspan="2" id="msgright" style="color: red; font-size: small;"></th>

				</tr>
  				
  				<tr>
					<td align="center"><button type="submit">Submit</button></td>
						<td align="center"><button type="reset">Reset</button></td>
				</tr>
			</table>
		</form>
		</div>
</body>
</html>