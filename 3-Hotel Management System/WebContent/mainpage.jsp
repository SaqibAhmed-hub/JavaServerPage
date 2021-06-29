<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Management System</title>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" type="text/css" href="navi.css">
</head>
<body>
<div class="nav">
<a href="#"><i class="fas fa-home"></i> Home</a>
<a href="room.jsp"><i class="fas fa-hotel"></i> Booking</a>
<a href="#"><i class="fas fa-cogs"></i> Check-In</a>
<a href="#"><i class="fas fa-cogs"></i> Check-Out</a>
</div>
<div class="main">
<center><h1>Hotel Management System</h1></center>
<br>
<%
	String username=(String)session.getAttribute("uname");
	out.println("<b><h2>Welcome "+username+"</h2></b>");
	
%>
</div>
</body>
</html>