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
<form action="admitprocess.jsp" method="post" id="myform">
<table cellpadding="10" cellspacing="10">
<tr>
<td> Patient No:</td><td><input type="text" name="pid"></td>
</tr>
<tr>
<td> Patient Name:</td><td><input type="text" name="pname"></td>
</tr>
<tr>
<td> Gender:</td><td><input type="radio" name="gender" value="Male">Male</td><td><input type="radio" name="gender" value="Female">Female</td>
</tr>
<tr>
<td> Age :</td><td><input type="text" name="dob"></td>
</tr>
<tr>
<td> Address :</td><td><textarea rows="3" cols="20" name="addr" form="myform"></textarea> </td>
</tr>
<tr>
<td> Mobile:</td><td><input type="text" name="mobile"></td>
</tr>
<tr>
<td> Admit Date:</td><td><input type="text" name="adate"></td>
</tr>
<tr>
<td> Ward No:</td><td><input type="text" name="wno"></td>
</tr>
<tr>
<td> Complaint:</td><td><textarea rows="3" cols="20" form="myform" name="complaint"></textarea></td>
</tr>
<tr>
<td></td><td><input type="submit" value="OK"></td><td><input type="reset" value="Cancel">
</tr>
</table>
</form>
<br>
<a href="Mainpage.jsp"><b>Back</b></a>
</body>
</html>