<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compose</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>

<script>
$(document).ready(function()
  		
  		{
      $("#txtrid").blur(
      		function(){
      			var rid=this.value;
      			//alert(ui)
      			 $.get("/ediagnostic/jsp/recidcheck.jsp",
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
		var usid = document.getElementById("txtsid").value;
		var urid = document.getElementById("txtrid").value;
		var usubject = document.getElementById("txtsubject").value;
		var umsg = document.getElementById("txtmsg").value;
		var b = true
		if (checkEmpty(usid) == false) {
			document.getElementById("msgsid").innerHTML = "Please enter sender id"
			document.getElementById("txtsid").focus()
			b = false
		} else if (checkEmpty(usid) == true) {
			document.getElementById("msgsid").innerHTML = ""
		}
		if (checkEmpty(urid) == false) {
			document.getElementById("msgrid").innerHTML = "Please enter receiver id"
			document.getElementById("txtrid").focus()
			b = false
		} else if (checkEmpty(urid) == true) {
			document.getElementById("msgrid").innerHTML = ""
		}
		if (checkEmpty(usubject) == false) {
			document.getElementById("msgsubject").innerHTML = "Please enter your subject"
			document.getElementById("txtsubject").focus()
			b = false
		} else if (checkEmpty(usubject) == true) {
			document.getElementById("msgsubject").innerHTML = ""
		}
		if (checkEmpty(umsg) == false) {
			document.getElementById("msg").innerHTML = "Please enter your msg"
			document.getElementById("txtmsg").focus()
			b = false
		} else if (checkEmpty(umsg) == true) {
			document.getElementById("msg").innerHTML = ""
		}
		return b
	}
</script>

</head>
<body style="background-image: url('/ediagnostic/images/cmp.png');">
	<%
		HttpSession hs = request.getSession(false);
		String uid = (String) hs.getAttribute("userkey");
	%>
	<div
		style="width: 60%; height: 450px; background-color: transparent; margin-left: 20%; margin-right: 20%; border-radius: 10px;">
		<span id="isE"></span>
		<form action="/ediagnostic/Compose1" method="post"
			onsubmit="return main()">
			<table align="center" style="margin-left: 250px; margin-top: 100px">
				<tr style="height: 50px">
					<th style="width: 150px">Sender ID</th>
					<th><input type="text" id="txtsid" name="txtsid"
						readonly="readonly" value=<%=uid%>></th>
				</tr>
				<tr><td style="color: red" colspan="2" id="msgsid"></td></tr>
				<tr style="height: 50px">
					<th>Receiver ID</th>
					<th><input type="text" id="txtrid" name="txtrid"
						placeholder="Enter Receiver ID" onblur="checkExist()"></th>
						<th id="div1" style="width: 100%; height: 100px"></th>
				</tr>
				
				<tr><td style="color: red; " colspan="2" id="msgrid"></td></tr>
				<tr style="height: 50px">
					<th>Subject</th>
					<th><input type="text" id="txtsubject" name="txtsubject"
						placeholder="Enter your subject"></th>
				</tr>
				<tr><td style="color: red" colspan="2" id="msgsubject"></td></tr>
				<tr>
					<th>Message</th>
					<th><textarea id="txtmsg" name="txtmsg"
							placeholder="Enter your message" cols="25" rows="5"></textarea></th>
				</tr>
				<tr><td style="color: red" colspan="2" id="msg"></td></tr>
				<tr style="height: 50px">
					<td align="center"><input type="submit"
						class="btn btn-success">
						</button>
						<td align="center"><button type="button" class="btn btn-danger"><a href="/ediagnostic/Logoff">Log Out</a></button></td>
				</tr>
				
			</table>
			<!-- <div id="div1" style="color: red ;width: 100%; height: 100px"></div> -->
		</form>
	</div>
</body>
</html>