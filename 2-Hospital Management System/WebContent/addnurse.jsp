<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>hospital Management System</title>
</head>
<body>
<%@ include file="header.html" %>
<form action="addnurseprocess.jsp" method="post">
<table cellpadding="10" cellspacing="10">
<tr>
<td>Nurse ID:</td><td><input type="text" name="nid"/></td>
</tr>
<tr>
<td>Nurse name:</td><td><input type="text" name="nname"/></td>
</tr>
<tr>
<td>Nurse address:</td><td><input type="text" name="naddress"/></td>
</tr>
<tr>
<td>Nurse contact:</td><td><input type="text" name="ncontact"/></td>
</tr>
<tr>
<td><input type="submit" value="Submit"/></td><td><input type="reset" name="Cancel"/></td>
</tr>
</table>
</form>
<br>
<a href="Mainpage.jsp"><b>Back</b></a>
</body>
</html>