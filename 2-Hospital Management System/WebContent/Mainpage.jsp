<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<style type="text/css">
.container{
	display: flex;
	justify-content:center;
}
.box{
	display:block;
	float:left;
	width:200px;
	height:60px;
	margin:25px;
	padding:20px;
	text-align:center;
	font-size:24px;
	background-color: #0086b3;
	color:white;
}
a:hover{
	text-decoration: none;
	
}
</style>
</head>
<body>
<%@ include file="header.html" %>
<center><h1>
<%
	String username=(String)session.getAttribute("username");	
	out.println("Welcome  "+ username);
	session.invalidate();
%>
</h1></center>
<div class="container">
<div class="box"><i class="fab fa-accessible-icon"></i> <a style="color: white;" href="admit.jsp">Admit</a></div>
<div class="box"><i class="fas fa-ambulance"></i> <a style="color: white;" href="discharge.jsp">Discharge</a></div>
<div class="box"><i class="fas fa-user-injured"></i> <a style="color: white;" href="searchpat.jsp">Search patient</a></div>
</div>
<div class="container">
<div class="box"><i class="fas fa-file-invoice"></i> <a style="color: white;" href="billing.jsp">Billing</a></div>
<div class="box"><i class="fas fa-user-md"></i> <a style="color: white;" href="adddoctor.jsp">Add Doctor</a></div>
<div class="box"><i class="fas fa-user-nurse"></i> <a style="color: white;" href="addnurse.jsp">Add Nurse</a></div>
</div>

</body>
</html>