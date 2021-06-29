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
<form action="dischargeprocess.jsp" method="post" id="frm1">
<table cellpadding="10" cellspacing="10">
<tr>
<td>patient ID: </td><td><input type="text" name="pid"></td>
</tr>
<tr>
<td>patient Name: </td><td><input type="text" name="pname"></td>
</tr>
<tr>
<td>Gender: </td><td><input type="radio" name="gender" value="Male">Male</td><td><input type="radio" name="gender" value="Female">Female</td>
</tr>
<tr>
<td>discharge date: </td><td><input type="text" name="ddate"></td>
</tr>
<tr>
<td>discharge status: </td><td><textarea rows="3" cols="20" name="disstatus" form="frm1"></textarea></td>
</tr>
<tr>
<td></td><td><input type="submit" value="OK"><td><input type="reset" value="cancel"></td>
</tr>
</table>
</form>
<br>
<a href="Mainpage.jsp"><b>Back</b></a>
</body>
</html>