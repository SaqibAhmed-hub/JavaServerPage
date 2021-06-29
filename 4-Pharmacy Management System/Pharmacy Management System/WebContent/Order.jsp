<%@page import="com.pharmacy.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("#pro").keyup(function(){
	  $.post("get.jsp",
			    {
			      name: $("#pro").val()
			    },
			    function(data){
			      document.getElementById("pri").innerHTML=data;
    });
  });
});
</script>
</head>
<body>
<%@ include file="headercust.html" %>
<center><h1>Order </h1></center>
<% 	if(request.getAttribute("order")!=null){
		out.println("<b style='color:blue;'>"+request.getAttribute("order")+"</b><br>");
	}
%>

<form action="orderprocess.jsp" method="post" >
<table cellpadding="10" cellspacing="10">
<tr>
<td>Order No : </td><td><input type="text"  name="orderno" ></td>
</tr>
<tr>
<td>Order Date:</td><td><input type="text" name="orderdate"></td>
</tr>
<tr>
<td>Product Name: </td><td><input type="text"  id="pro" name="pname" ></td>
</tr>
<tr>
<td>Quantity: </td><td><input type="text" name="qty"></td>
</tr>		
<tr>
<td>Price </td><td><label id="pri"></label></td>
</tr>
<tr>
<td></td><td><input type="submit" style="padding:10px;" value="Order"></td><td><input type="reset" style="padding:10px;" value="cancel"></td>
</tr>
</table>
</form>
</body>
</html>