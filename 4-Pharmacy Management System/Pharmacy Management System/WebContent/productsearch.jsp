<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
</head>
<body>
<%@ include file="headercust.html" %>
<br>
<br>
<center>
<form action="productlist.jsp" method="post">
Search product Name : &nbsp;<input type="text" name="psearch"><br>
<br>
<input type="submit" style="padding:10px;" value="Search" > &nbsp;<input type="reset" style="padding:10px;" value="Cancel">
<br>
</form>
</center>

</body>
</html>