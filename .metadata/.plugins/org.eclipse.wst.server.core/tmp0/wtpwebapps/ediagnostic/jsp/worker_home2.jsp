<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,ediagnostic.dbtasks.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>
<script src="/ediagnostic/js/validation.js"></script>
<meta charset="ISO-8859-1">
<title>Worker Home</title>
</head>
<body>
	<%
		HttpSession hs=request.getSession(false);
		String userid=(String)hs.getAttribute("userkey");
		%>
	<div
		style="width: 100%; height: 80px; background-color: #6882d1; float: left">
		<h1 style="text-align: center;"><%=userid%>'s Home Page
		</h1>
	</div>
	<div style="width: 20%; height: 700px; float: left">
		<%@include file="/html/worker_menu2.html"%>
	</div>
	<div style="width: 80%; height: 700px; float: left">
		<%
		String path=request.getContextPath();
		String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		System.out.println(basePath);
		String imgname="";
		String picsrc=null;
		
		String strsql="select * from worker where workerid=?";
		ResultSet rs=CrudOperation.fetchData(strsql,userid);
		if(rs.next())
		{
		imgname=rs.getString("photo");
		if(imgname==null)
		{
			picsrc="/ediagnostic/images/logo mini.jpg";
			
		}
		else{
			
			picsrc=basePath+userid+"/"+imgname;
		}
		}		
		%>
		<img src="<%=picsrc %>" style="width: 100px; height: 100px">
	</div>
</body>
</html>