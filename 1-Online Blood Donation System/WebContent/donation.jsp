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
  <a href="#" id="donation">Donation</a>
  <a href="bloodcamp.jsp" id="camp">Blood Camp</a>
  <a href="contactus.jsp" id="contact">Contact Us</a>
</div>
<center>
<h3>Donor Registration</h3>
<form action="donationprocess.jsp" method="post">
<table cellpadding="10" cellspacing="10">
<tr>
<td>Donor Name:</td><td><input type="text" name="donor"></td>
</tr>
<tr>
<td>Gender:</td><td><input type="radio" name="gender" value="Male">Male</td><td><input type="radio" name="gender" value="Female">Female</td>
</tr>
<tr>
<td>Age:</td><td><input type="text" name="age"></td>
</tr>
<tr>
<td>Mobile No:</td><td><input type="text" name="mobile"></td>
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
<td>E-mail:</td><td><input type="text" name="email"></td>
</tr>
<tr>
<td>Address:</td><td><input type="text" name="address"></td>
</tr>
<tr>
<td><input type="submit" value="Register"></td><td><input type="reset" name="Cancel"></td>
</tr>
</table>
</form>
</center>
</body>
</html>