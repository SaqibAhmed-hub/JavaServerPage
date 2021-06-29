<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
</head>
<body>
<%@ include file="header.html" %>
<%@ page import="com.pharmacy.*,java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<h2>List of Customers</h2>
<%
	List<Register> list= LoginDao.getAllrecords();
	request.setAttribute("list", list);
%>
<table border=1 width=90%>
<tr>
<th>ID </th><th>Customer Name</th><th>Address</th><th>Contact</th><th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
<tr>
<td>${u.getCustid()}</td><td>${u.getCustname()}</td><td>${u.getCustadd()}</td><td>${u.getCustmobile()}</td><td><a href="deletecustomer.jsp?custid=${u.getCustid()}">Delete</a></td>
</tr>
</c:forEach>
</table>

</body>
</html>