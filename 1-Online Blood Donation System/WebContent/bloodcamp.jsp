<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Donation</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="header">
<h1>Online Blood Donation System</h1></div>
<div id="mySidenav" class="sidenav">
  <a href="mainpage.jsp" id="home">Home</a>
  <a href="bloodbank.jsp" id="blood">Blood Donar</a>
  <a href="donation.jsp" id="donation">Donation</a>
  <a href="#" id="camp">Blood Camp</a>
  <a href="contactus.jsp" id="contact">Contact Us</a>
</div>
<center>
<h3>Blood Camps</h3>
<form action="campprocess.jsp" method="post">
<table cellpadding="10" cellspacing="10">
<tr>
<td>Camp Name:</td><td><input type="text" name="camp"></td>
</tr>
<tr>
<td>Camp Date:</td><td><input type="text" name="campdate"></td>
</tr>
<tr>
<td>No of Units:</td><td><input type="text" name="unit"></td>
</tr>
<tr>
<td>Blood Group:</td><td><select name="bloodgroup">
<option value="A+">A+</option>
<option value="A-">A-</option>
<option value="B+">B+</option>
<option value="B-">B-</option>
<option value="O+">O+</option>
<option value="O-+">O-</option>
<option value="AB+">AB+</option>
<option value="AB-">AB-</option>
</select></td>
</tr>
<tr>
<td>City</td><td><input type="text" name="city"></td>
</tr>
<td><input type="submit" value=" OK "></td><td><input type="reset" name="Cancel"></td>
</tr>
</table>
</form>
</center>
</body>
</html>