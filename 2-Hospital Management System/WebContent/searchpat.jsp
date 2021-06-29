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
<center>
<br>
<form action="searchprocess.jsp" method="post">
<label style="margin:20px;">Patient ID: </label><input style="margin:20px;" type="text" name="pid"><br>
<input type="submit" value="Search">&nbsp;&nbsp;<input type="reset" value="Cancel">
</form>
<br><br>
<a href="Mainpage.jsp"><b>Back</b></a>
</center>
</body>
</html>