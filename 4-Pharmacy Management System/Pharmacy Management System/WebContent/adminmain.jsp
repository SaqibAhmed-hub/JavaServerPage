<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
<style type="text/css">
.box{
	width:200px;
	height:120px;
	background-color: #4cf051;
	color:white;
	font-size:18px;
	text-align: center;
	padding:20px;
	margin :20px;
}
.container{
	display: flex;
	justify-content:center;
	
}
</style>
</head>
<body>
<%@ include file="header.html" %>
<%
	if(session.equals(null)){
		session.invalidate();
	}else{
	String uname= (String)session.getAttribute("username");
	out.println("<center><h1> Welcome "+ uname+"</h1><center>");
	session.invalidate();
	}
%>
</body>
</html>