<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,ediagnostic.dbtasks.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Registration</title>
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
<script>
$(document).ready(function()
  		
  		{
      $("#txtpatientid").blur(
      		function(){
      			var id=this.value;
      			alert(id);
      			 $.get("/ediagnostic/jsp/idcheck.jsp",
      			        {
      			          recid:id
      			          
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
		var ui = document.getElementById("txtpatientid").value;
		var upass = document.getElementById("pass").value;
		var uname = document.getElementById("txtname").value;
		var uemail = document.getElementById("email").value;
		var uphone = document.getElementById("txtphone").value;
		var address = document.getElementById("txtaddress").value;
		var rn = document.getElementById("txtregno").value;
		var qual = document.getElementById("txtqual").value;
		var b = true

		if (checkEmpty(ui) == false) {
			document.getElementById("msgid").innerHTML = "Doctor ID required"
			document.getElementById("txtpatientid").focus()
			b = false
		} else if (checkEmpty(ui) == true) {
			document.getElementById("msgid").innerHTML = ""
		}

		if (checkEmpty(upass) == false) {
			//alert("userpass needed")
			document.getElementById("msgpass").innerHTML = "Password required"
			document.getElementById("pass").focus()
			b = false
		} else if (checkEmpty(upass) == true) {
			document.getElementById("msgpass").innerHTML = ""
		}

		if (checkEmpty(uname) == false) {
			//alert("userpass needed")
			document.getElementById("msgname").innerHTML = "name required"
			document.getElementById("txtname").focus()
			b = false
		} else if (checkEmpty(uname) == true) {
			document.getElementById("msgname").innerHTML = ""
		}
		if (checkEmpty(uemail) == false) {
			//alert("userpass needed")
			document.getElementById("msgemail").innerHTML = "email Id required"
			document.getElementById("email").focus()
			b = false
		} else if (checkEmpty(uemail) == true) {
			document.getElementById("msgemail").innerHTML = ""
		}
		if (checkEmpty(uphone) == false) {
			//alert("userpass needed")
			document.getElementById("msgphone").innerHTML = "phone no. required"
			document.getElementById("txtphone").focus()
			b = false
		} else if (checkEmpty(uphone) == true) {
			document.getElementById("msgphone").innerHTML = ""
		}
		
		if (checkEmpty(address) == false) {
			//alert("userpass needed")
			document.getElementById("msgaddress").innerHTML = "address is required"
			document.getElementById("txtaddress").focus()
			b = false
		} else if (checkEmpty(address) == true) {
			document.getElementById("msgaddress").innerHTML = ""
		}
		
		if (checkEmpty(rn) == false) {
			//alert("userpass needed")
			document.getElementById("msgregno").innerHTML = "reg. no is required"
			document.getElementById("txtregno").focus()
			b = false
		} else if (checkEmpty(rn) == true) {
			document.getElementById("msgregno").innerHTML = ""
		}
		
		if (checkEmpty(qual) == false) {
			//alert("userpass needed")
			document.getElementById("msgqual").innerHTML = "PLease enter qualifications"
			document.getElementById("txtqual").focus()
			b = false
		} else if (checkEmpty(qual) == true) {
			document.getElementById("msgqual").innerHTML = ""
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
		<form action="/ediagnostic/DoctorRegistration" method="post"
			onsubmit="return main()">

			<table border="0" class="register"
				style="margin-top: 50px; margin-left: 80px; width: 520px;">
				<tr>
					<th>Doctor Id</th>
					<th><input type="text" id="txtpatientid" name="txtpatientid"
						placeholder="enter doctor id"></th><th id="div1"></th>
					<th id="div1"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgid" style="color: red; font-size: small;"></th>
				</tr>


				<tr>
					<th>Password</th>
					<th><input type="password" id="pass" name="pass"
						placeholder="enter password"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgpass" style="color: red; font-size: small;"></th>
				</tr>

				<tr>
					<th>Name</th>
					<th><input type="text" id="txtname" name="txtname"
						placeholder="enter name"></th>
				</tr>
				
				<tr>
					<th colspan="2" id="msgname" style="color: red; font-size: small;"></th>
				</tr>

				<tr>
					<th>Email</th>
					<th><input type="email" id="email" name="email"
						placeholder="enter email"></th>
				</tr>
				
				<tr>
					<th colspan="2" id="msgemail" style="color: red; font-size: small;"></th>
				</tr>
				
				<tr>	
				<%
					String strsql = "select * from area";
					ResultSet rs = CrudOperation.fetchData(strsql);
				%>
					<th>Select area</th>
					<th><select name="cmbarea" id="cmbarea">
									<option value="def">Select area name</option>
									<%
										while (rs.next()) {
											String id = rs.getString("areaid");
											String name = rs.getString("areaname");
									%>
									<option value="<%=id%>"><%=name%></option>
									<%
										}
									%>
							</select></th>
						</tr>
						<tr>
							<th>PhoneNo.</th>
							<th><input type="number" id="txtphone" name="txtphone"
								placeholder="enter phone no."></th>
						</tr>
						<tr>
							<th colspan="2" id="msgphone"
								style="color: red; font-size: small;"></th>


						</tr>

						<tr>
							<th>Address</th>
							<th><textarea id="txtaddress" name="txtaddress"
									placeholder="enter address"></textarea></th>

						</tr>
						<tr>
							<th colspan="2" id="msgaddress"
								style="color: red; font-size: small;"></th>
						</tr>
						
						<tr>
							<th>Registration No.</th>
							<th><input type="text" id="txtregno" name="txtregno"
									placeholder="enter reg. no"></input></th>

						</tr>
						<tr>
							<th colspan="2" id="msgregno"
								style="color: red; font-size: small;"></th>
						</tr>
						
						<tr>
							<th>Skills</th>
							<th><input type="text" id="txtskills" name="txtskills"
								placeholder="enter skills"></th>
						</tr>	
						
						<tr>
							<th>Higher qualifications</th>
							<th><input type="text" id="txtqual" name="txtqual"
								placeholder="enter higher qualifications"></th>
						</tr>
						<tr>
							<th colspan="2" id="msgqual"
								style="color: red; font-size: small;"></th>
						</tr>

						<tr>
							<th colspan="2"><button type="submit">Submit</button>
								<button type="reset">Reset</button></th>
						</tr> 
					</table>
				</form>
	</div>
</body>
</html>