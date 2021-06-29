<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Online Blood Donation</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<div class="header">
<h1>Online Blood Donation System</h1></div>
<div id="mySidenav" class="sidenav">
  <a href="mainpage.jsp" id="home">Home</a>
  <a href="#" id="blood">Blood Donar</a>
  <a href="donation.jsp" id="donation">Donation</a>
   <a href="bloodcamp.jsp" id="camp">Blood Camp</a>
  <a href="contactus.jsp" id="contact">Contact Us</a>
</div>
<center><h1>Blood Donor Details</h1>
<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/bloodbank"
                         user="root" password="" />
      <sql:query dataSource="${dbsource}" var="dbResult">
         SELECT * FROM donar;
      </sql:query>
      <table width="90%" border="1">
      	<tr><th>Donar Name:</th>
      	<th>Gender:</th>
      	<th>Age:</th>
      	<th>Mobile No:</th>
      	<th>Blood Group:</th>
      	<th>E-mail:</th>
      	<th>Address:</th></tr>
  		<c:forEach var="row" items="${dbResult.rows}">
  		<tr>
  		<td><c:out value="${row.donorname}"></c:out></td>
  		<td><c:out value="${row.gender}"></c:out></td>
  		<td><c:out value="${row.age}"></c:out></td>
  		<td><c:out value="${row.mobileno}"></c:out></td>
  		<td><c:out value="${row.bloodgroup}"></c:out></td>
  		<td><c:out value="${row.email}"></c:out></td>
  		<td><c:out value="${row.address}"></c:out></td>
  		</tr>
  		</c:forEach>
      </table>
</center>
</body>
</html>