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
	function main() {
		var ui = document.getElementById("txtpatientid").value;
		var upass = document.getElementById("pass").value;
		var uname = document.getElementById("txtname").value;
		var uemail = document.getElementById("email").value;
		var uphone = document.getElementById("txtphone").value;
		var address = document.getElementById("txtaddress").value;
		var b = true

		if (checkEmpty(ui) == false) {
			document.getElementById("msgid").innerHTML = "Patient ID required"
			document.getElementById("txtpatientid").focus()
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
			    document.getElementById("msgemail").innerHTML = "email Id required"
				document.getElementById("email").focus()
			b = false
		}
		else if (checkEmpty(uemail) == true) {
			document.getElementById("msgemail").innerHTML = ""
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
		else if (checkEmpty(uphone) == true) {
			document.getElementById("msgaddress").innerHTML = ""
		}
		return b
		//alert(ui)
	}
</script>
</head>
<body style="background-image: url('/ediagnostic/images/patient-registration-17674809.jpg');">
<h1 style="text-align: center;color:green;">PATIENT REGISTRATION</h1>
	<div style="width: 60%; height: 450px; background-color: transparent; margin-left: 20%; margin-right: 20%; border-radius: 10px;">
		<form action="/ediagnostic/PatientRegistration" method="post" onsubmit="return main()">

			<table
				style="margin-top: 50px; margin-left: 80px; height: 420px;">
				<tr>
					<th style="width:200px">PatientId</th>
					<th style="width:200px"><input type="text" id="txtpatientid" name="txtpatientid"
						placeholder="enter patientid"></th>
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
					<th><input type="email" id="email" name="email"
						placeholder="enter email"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgemail" style="color: red;font-size: small;"></th>


				</tr>

				<tr>
					<th>PhoneNo.</th>
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