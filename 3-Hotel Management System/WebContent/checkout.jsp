<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Management System</title>
<link rel="stylesheet" type="text/css" href="navi.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
<body>
<div class="nav">
<a href="mainpage.jsp"><i class="fas fa-home"></i> Home</a>
<a href="room.jsp"><i class="fas fa-hotel"></i> Booking</a>
<a href="checkin.jsp"><i class="fas fa-cogs"></i> Check-In</a>
<a href="#"><i class="fas fa-cogs"></i> Check-Out</a>
</div>
<div class="main">
<center><h1>Check-Out</h1></center>
<form action="checkoutprocess.jsp" method="post" >
<table cellpadding="10" cellspacing="10">
<tr>
<td> Customer Name:</td><td><input type="text" name="custname"></td>
</tr>
<tr>
<td> Customer ID No</td><td><input type="text" name="custid"></td>
</tr>
<tr>
<td> Check-In Date:</td><td><input type="text" name="checkdate"></td>
</tr>
<tr>
<td>Check-Out Date:</td><td><input type="text" name="outdate"></td>
</tr>
<tr>
<td> Room No:</td><td><input type="text" name="roomno"></td>
</tr>
<tr>
<td> No of Day Stayed:</td><td><input type="text" name="stay"></td>
</tr>
<tr>
<td> Total Amount:</td><td><input type="text" name="amount"></td>
</tr>
<tr>
<td><input type="submit" value=" OK "></td><td><input type="reset" value="Cancel"></td>
</tr>
</table>
</form>
</div>
</body>
</html>