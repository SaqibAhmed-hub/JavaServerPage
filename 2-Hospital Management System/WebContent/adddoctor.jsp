<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
</head>
<body>
<%@ include file="header.html" %>
<form action="adddoctorprocess.jsp" method="post">
<table cellpadding="10" cellspacing="10">
<tr>
<td>Doctor ID:</td><td><input type="text" name="did"></td>
</tr>
<tr>
<td>Doctor Name: </td><td><input type="text" name="dname"></td>
</tr>
<tr>
<td>Date of Joining: </td><td><input type="text" name="doj"></td>
</tr>
<tr>
<td> Specialist:</td><td><input type="text" name="spec"></td>
</tr>
<tr>
<td>Doctor Address: </td><td><input type="text" name="dadd"></td>
</tr>
<tr>
<td>Doctor contact: </td><td><input type="text" name="dcont"></td>
</tr>
<tr>
<td><input type="submit" value="Submit"> </td><td><input type="reset" name="Cancel"></td>
</tr>
</table>
</form>
<br>
<a href="Mainpage.jsp"><b>Back</b></a>
</body>
</html>