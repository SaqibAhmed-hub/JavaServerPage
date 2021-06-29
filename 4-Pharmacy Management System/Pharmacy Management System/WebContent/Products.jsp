<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
</head>
<body>
<script type="text/javascript">
function myfunction(form){
	for(var i=0;i<form.elements.length;i++){
		if(form.elements[i].value==""){
			window.alert("Please fill all the required fields");
			document.form1.pname.focus();
			return false
		}
	}
	return true;
}

</script>

<%@ include file="header.html" %>
<% 
	if(request.getAttribute("pro")!=null){
		out.println("<b style='color:blue;'>"+request.getAttribute("pro")+"</b><br>");
	}
	%>
<center><h1> Products </h1></center>
<form action="productprocess.jsp" method="post" name="form1" onsubmit=" return myfunction(this)">
<table cellpadding="10" cellspacing="10">
<tr>
<td>Product Name:</td><td><input type="text" name="pname"/></td>
</tr>
<tr>
<td>Company Name:</td><td><input type="text" name="cname"/></td>
</tr>
<tr>
<td>Mfg Date:</td><td><input type="text" name="mfg"/></td>
</tr>
<tr>
<td>Expiry Date:</td><td><input type="text" name="exp"/></td>
</tr>
<tr>
<td>Price:</td><td><input type="text" name="price"/></td>
</tr>
<tr>
<td><input type="submit" style="padding:10px;" value="Add products"></td><td><input type="reset" style="padding:10px;" value="Cancel"></td>
</tr>
</table>
</form>
</body>
</html>