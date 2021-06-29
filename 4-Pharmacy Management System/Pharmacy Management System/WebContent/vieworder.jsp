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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource var="pro" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/pharmacy" user="root" password=""/>
<sql:query dataSource="${pro}"  var="result">Select * from orders</sql:query>
<center>
<h1> List of Orders</h1><br>
<table border=1 width=90%>
<tr>
<th>Order No</th><th>Order Date</th><th>Product Name</th><th>Quantity</th>
</tr>
<c:forEach var="rows" items="${result.rows}">
<tr>
	<td><c:out value="${rows.orderno}"></c:out></td>
	<td><c:out value="${rows.orderdate}"></c:out></td>
	<td><c:out value="${rows.pname}"></c:out></td>
	<td><c:out value="${rows.quantity}"></c:out></td>
</tr>
</c:forEach>
</table> 
</center>
<br>
<br>

</body>
</html>