<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pathology Registration</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<link rel="stylesheet" href="/ediagnostic/css/s2.css" type="text/css">
<script>
$(document).ready(function()
  		{
      $("#txtpatientid").blur(
      		function(){
      			var rid=this.value;
      			//alert(ui)
      			 $.get("/ediagnostic/jsp/idcheck2.jsp",
      			        {
      			          recid:rid
      			          
      			        },
      			        function(data,status){
      			        	//if(data=="")
      			          //  alert("Data: " + data + "\nStatus: " + status);
      			             $("#div1").html(data);
      			             $("#div1").show();
      			           	 $("#btnres").hide();
      			         	 $("#btnsub").hide();
      			             //$("#div1").hide(5000);
      			             
      			        });
      });
  });
  
  
	function main() {
		var name = document.getElementById("txtname").value;
		var mail = document.getElementById("txtmail").value;
		var add = document.getElementById("txtadd").value;
		var phone = document.getElementById("txtphone").value;
		var ddl = document.getElementById("cmbcity");
		var course = ddl.options[ddl.selectedIndex].value;
		var spcl = document.getElementById("txtspcl").value;
		
		var b = true
		

		if (checkEmpty(upass) == false) {
			//alert("userpass needed")
			    document.getElementById("msgpass").innerHTML = "Password required"
				document.getElementById("pass").focus()
			b = false
		}
		else if (checkEmpty(upass) == true) {
			document.getElementById("msgpass").innerHTML = ""
		}
		if (checkEmpty(name) == false) {
			/* alert("USerID needed") */
			document.getElementById("name").innerHTML = "Please enter pathology's name"
			document.getElementById("txtname").focus()
			b = false
		} else if (checkEmpty(name) == true) {
			/* alert("USerID needed") */
			document.getElementById("name").innerHTML = ""
		}
		
		if (checkEmpty(mail) == false) {
			/* alert("USerID needed") */
			document.getElementById("email").innerHTML = "Please enter email ID"
			document.getElementById("txtmail").focus()
			b = false
		} else if (checkEmpty(mail) == true) {
			/* alert("USerID needed") */
			document.getElementById("email").innerHTML = ""
		}
		
		if (checkEmpty(add) == false) {
			/* alert("USerID needed") */
			document.getElementById("address").innerHTML = "Please enter pathology's address"
			document.getElementById("txtadd").focus()
			b = false
		} else if (checkEmpty(add) == true) {
			/* alert("USerID needed") */
			document.getElementById("address").innerHTML = ""
		}
		
		if (course == "default") {
			document.getElementById("city").innerHTML = "Please select a valid city name"
			document.getElementById("cmbcity").focus()
			b = false
		} else {
			document.getElementById("city").innerHTML = ""
		}

		if (checkEmpty(phone) == false) {
			//alert("User Password needed")
			document.getElementById("phone").innerHTML = "Please enter phone no."
			document.getElementById("txtphone").focus()
			b = false
		
		} else {
			document.getElementById("phone").innerHTML = ""
		}
		
		if (checkEmpty(spcl) == false) {
			/* alert("USerID needed") */
			document.getElementById("spcl").innerHTML = "Please enter pathology's specialities"
			document.getElementById("txtspcl").focus()
			b = false
		} else if (checkEmpty(spcl) == true) {
			/* alert("USerID needed") */
			document.getElementById("spcl").innerHTML = ""
		}
		
		
		return b
	}
</script>

</head>
<body class=pathoreg>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">Register your pathology on our portal.</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/owner_menu.html"%>
	</div>
	<div style="width: 80%; height: 700px; float: left">
	<%
	HttpSession hs=request.getSession(false);
	String uid=(String)hs.getAttribute("userkey");
	%>
		<form action="/ediagnostic/RegPatho" method="post" 
		onsubmit="return main()">

			<table class="regpatho">
			<tr>
					<th>Pathology Id</th>
					<th><input type="text" id="txtpatientid" name="txtpatientid"
						value=<%=uid%> readonly="readonly"></th>
						<th id="div1"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgid" style="color: red;font-size: small;"></th>
				</tr>
				
				<tr>
					<th>Pathology Name</th>
					<th><input type="text" id="txtname" name="txtname"
						placeholder="enter pathology name"></th>
				</tr>
				<tr>
					<th colspan="2" id="name" style="color: red; font-size: small;"></th>


				</tr>
				<tr>
					<th>Address</th>
					<th><textarea rows="5" id="txtadd" name="txtadd"
						placeholder="enter address"></textarea></th>
				</tr>
				<tr>
					<th colspan="2" id="address" style="color: red; font-size: small;"></th>
				</tr>

				<tr>
					<th>Email</th>
					<th><input type="email" id="txtmail" name="txtmail"
						placeholder="enter email id"></th>
				</tr>
				<tr>
					<th colspan="2" id="email" style="color: red; font-size: small;"></th>


				</tr>

				<tr>
					<th>PhoneNo.</th>
					<th><input type="number" id="txtphone" name="txtphone"
						placeholder="enter phone no."></th>
				</tr>

				<tr>
					<th colspan="2" id="phone" style="color: red; font-size: small;"></th>

				</tr>
				<tr>
					<th>City</th>
					<th><select id="cmbcity" name="cmbcity">
							<option value="default">Select city:</option>
							<option value="Lucknow">Lucknow</option>
					</select></th>
				</tr>
				<tr>
					<th colspan="2" id="city" style="color: red; font-size: small;"></th>

				</tr>
				<tr>
					<th>Speciality</th>
					<th><input type="text" id="txtspcl" name="txtspcl"
						placeholder="enter speciality"></th>
				</tr>
				<tr>
					<th colspan="2" id="spcl" style="color: red; font-size: small;"></th>

				</tr>
				<tr>
					<th>Description</th>
					<th><textarea rows="6" name="txtdesc" id="txtdesc"
						placeholder="provide description"></textarea></th>
				</tr>
				<tr>
					<th colspan="2" id="desc" style="color: red; font-size: small;"></th>

				</tr>
				<tr>
					<th><button type="submit" name="btnsub" id="btnsub">Submit</button></th>
					<th><button type="reset" name="btnres" id="btnres">Reset</button></th>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>