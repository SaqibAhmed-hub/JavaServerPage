<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hospital Management System</title>
</head>
<body>
<%@include file="header.html" %>
<br>
<form action="registerprocess.jsp" method="post">
<table cellspacing="10" cellpadding="10"> 
<tr>
<td>ID : </td><td><input type="text" name="adminid"></td>
</tr>
<tr>
<td>Name :</td><td><input type="text" name="adminname"></td>
</tr>
<tr>
<td>Username : </td><td><input type="text" name="uname"></td>
</tr>
<tr>
<td>Password : </td><td><input type="password" name="pass"></td>
</tr>
<tr>
<td>Address : </td><td><input type="text" name="addr" ></td>
</tr> 
<tr>
<td> Mobile : </td><td><input type="text" name="mobile"></td>
</tr>
<tr>
<td></td><td><input type="submit" value="Register"></td><td><input type="reset" Value="Cancel"></td>
</tr>
</table>
</form>
</body>
</html>