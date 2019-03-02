<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Report</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<script>
	function main() {
		
		var workerid = document.getElementById("txtworkerid").value;
		var patientname = document.getElementById("txtpatientname").value;
		var testid = document.getElementById("txttestid").value;
		
		var doctorid = document.getElementById("txtdoctorid").value;
		var remark = document.getElementById("txtremark").value;
		var status = document.getElementById("txtstatus").value;
		var b = true

		if (checkEmpty(patientname) == false) {
			//alert("userpass needed")
			    document.getElementById("msgname").innerHTML = "Patient Name required"
				document.getElementById("txtpatientname").focus()
			b = false
		}
		else if (checkEmpty(patientname) == true) {
			document.getElementById("msgname").innerHTML = ""
		}
		if (checkEmpty(testid) == false) {
			//alert("userpass needed")
			    document.getElementById("msgid2").innerHTML = "test Id required"
				document.getElementById("txttestid").focus()
			b = false
		}
		else if (checkEmpty(testid) == true) {
			document.getElementById("msgid2").innerHTML = ""
		}
		if (checkEmpty(doctorid) == false) {
			//alert("userpass needed")
			    document.getElementById("msgid3").innerHTML = "Doctor ID required"
				document.getElementById("txtdoctorid").focus()
			b = false
		}
		else if (checkEmpty(doctorid) == true) {
			document.getElementById("msgid3").innerHTML = ""
		}
		
		if (checkEmpty(remark) == false) {
			//alert("userpass needed")
		    document.getElementById("msgremark").innerHTML = "Remark is required"
			document.getElementById("txtremark").focus()
		b = false
	}
	else if (checkEmpty(remark) == true) {
		document.getElementById("msgremark").innerHTML = ""
	}
		
		if (checkEmpty(status) == false) {
			//alert("userpass needed")
		    document.getElementById("msgstatus").innerHTML = "Status is required"
			document.getElementById("txtstatus").focus()
		b = false
	}
	else if (checkEmpty(status) == true) {
		document.getElementById("msgstatus").innerHTML = ""
	}
		return b
		//alert(ui)
	}
</script>
</head>
<body>
<%
HttpSession hs = request.getSession(false);
String uid = (String) hs.getAttribute("userkey");
%>
<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;">Upload Patient Report</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/worker_menu.html"%>
	</div>
	<div style="width: 80%; height: 700px; float: left; background-image: url('/ediagnostic/images/docpat.jpg');">
		<form action="/ediagnostic/PatientReport" method="post" onsubmit="return main()"  enctype="multipart/form-data">

			<table border="0" class="register"
				style="margin-top: 50px; margin-left: 80px; width: 520px;">
				<tr>
					<th>Select report document</th>
					<th><input type="file" name="txtrep" id="txtrep"></th>
				</tr>
				
				<tr>
					<th>WorkerId</th>
					<th><input type="text" id="txtworkerid" name="txtworkerid"
						value=<%=uid%> readonly="readonly"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgid1" style="color: red;font-size: small;"></th>


				</tr>
				<tr>
					<th>PatientName</th>
					<th><input type="text" id="txtpatientname" name="txtpatientname"
						placeholder="enter patientname"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgname" style="color: red;font-size: small;"></th>
				</tr>

				<tr>
					<th>Testid</th>
					<th><input type="text" id="txttestid" name="txttestid"
						placeholder="enter Testid"></th>
				</tr>
				<tr>
					<th colspan="2" id="msgid2" style="color: red;font-size: small;"></th>


				</tr>

				<tr>
					<th>DoctorId</th>
					<th><input type="text" id="txtdoctorid" name="txtdoctorid" placeholder="enter doctorid"></th>
						
				</tr>
				<tr>
					<th colspan="2" id="msgid3" style="color: red;font-size: small;"></th>


				</tr>
				<tr>
					<th>Remarks</th>
					<th><textarea  id="txtremark" name="txtremark" placeholder="enter remarks"></textarea></th>
						
				</tr>
				<tr>
					<th colspan="2" id="msgremark" style="color: red;font-size: small;"></th>


				</tr>
			    <tr>
			    <th>Status</th>
			    <th><input type="text" id="txtstatus" name="txtstatus" placeholder="enter remark"></th>
			    </tr>
			    <tr>
					<th colspan="2" id="msgstatus" style="color: red;font-size: small;"></th>


				</tr>
				<tr>
					<td align="center"><button type="submit">Submit</button>
						<button type="reset">Reset</button></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>