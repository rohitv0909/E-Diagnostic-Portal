<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,ediagnostic.dbtasks.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet"
	href="/ediagnostic/bootstrapfiles/bootstrap.min.css" type="text/css">
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>

<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
a{
text-decoration: none;
}
</style>

</head>
<body>
<div id= "top" style="width: 100%; height: 70px; float: left;">
	<div
		style="background-color: #F8F8F8; width: 60%; height: 70px; float: left; font-size: 40px; color: red;">
		<a href="/ediagnostic/jsp/home.jsp"><img src="/ediagnostic/images/logo mini.png"
			style="margin-left: 5%; width: 30%; height: 65px;"></a>
	</div>

	<div
		style="width: 40%; height: 70px; float: left; background-color: #F8F8F8;">

		<div style="width: 80px; float: left; margin-top: 5px">
			<a href="/ediagnostic/html/contactus.html">Contact Us</a>
		</div>

		<div
			style="width: 70px; float: left; margin-top: 5px; margin-left: 10px">
			<a href="/ediagnostic/jsp/login.jsp" class="btn btn-info" role="button">Sign In</a>
		</div>
		<div
			style="width: 80px; float: left; margin-top: 5px; margin-left: 10px">
			<a href="/ediagnostic//jsp/patient_registration.jsp" class="btn btn-info" role="button">Sign Up</a>
		</div>
		<div
			style="width: 160px; float: left; margin-top: 5px; margin-left: 10px">
			<a href="/ediagnostic//jsp/viewtests.jsp" class="btn btn-info" role="button">View available tests</a>
		</div>
	</div>
</div>
<div style="width: 100%;height:500px;">
<div style="width:20%; height:500px; float:left;">
<center>News</center>
<ul style="list-style-type: none">
		<%
		String strsql="select * from news order by date desc limit 5";
		ResultSet rs=CrudOperation.fetchData(strsql);
		while(rs.next())
		{
			String t=rs.getString("title");
			String id=rs.getString("newsid");
		%>
		<li><a href="/ediagnostic/jsp/shownews.jsp?id=<%=id%>"><%=t%></a></li>
		<%} %>
	    </ul>
</div>

<div id="demo" class="carousel slide" data-ride="carousel" style="width:60%; height:500px; float:left; border-radius: 15px">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/ediagnostic/images/i1.jpg" alt="Los Angeles" width="1100" height="500px">
    </div>
    <div class="carousel-item">
      <img src="/ediagnostic/images/i2.jpg" alt="Chicago" width="1100" height="500px">
      <div class="carousel-caption">
       
      </div>   
    </div>
    <div class="carousel-item">
      <img src="/ediagnostic/images/i3.jpg" alt="New York" width="1100" height="500px">
      <div class="carousel-caption">
       
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

<div style="width:20%; height:500px; float:left;">
<center>Tips</center>
<ul style="list-style-type: none">
		<%
		String str2="select * from tips order by date desc limit 5";
		ResultSet rs2=CrudOperation.fetchData(str2);
		while(rs2.next())
		{
			String t=rs2.getString("subject");
			String id=rs2.getString("tipid");
		%>
		<li><a href="/ediagnostic/jsp/showtips.jsp?id=<%=id%>"><%=t%></a></li>
		<%} %>
	    </ul>
</div>

<a href="#top">Go to top</a>
<script src="/ediagnostic/bootstrapfiles/bootstrap.min.js"></script>
<script src="/ediagnostic/bootstrapfiles/jquery-3.3.1.min.js"></script>

</body>
</html>