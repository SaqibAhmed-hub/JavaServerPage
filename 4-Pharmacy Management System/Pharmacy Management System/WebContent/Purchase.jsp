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
			document.form3.pbill.focus();
			return false
		}
	}
	return true;
}
</script>
<%@ include file="header.html" %>
<center><h1>Purchase</h1></center>
<%
	if(request.getAttribute("pur")!=null){
		out.println("<b style='color:blue'>"+request.getAttribute("pur")+"</b><br>");
	}
%>
<form action="purchaseprocess.jsp" method="post" name="form3" onsubmit="return myfunction(this)">
<table cellpadding="10" cellspacing="10" >
<tr>
<td>Product Bill No:</td><td><input type="text" name="pbill"/></td>
</tr>
<tr>
<td>Bill date:</td><td><input type="text" name="Bill_date"/></td>
</tr>
<tr>
<td>Supplier ID:</td><td><input type="text" name="sid"/></td>
</tr>
<tr>
<td>Product Name:</td><td><input type="text" name="product_name"/></td>
</tr>
<tr>
<td>Company Name:</td><td><input type="text" name="company_name"/></td>
</tr>
<tr>
<td>Quantity:</td><td><input type="text" name="Qty"/></td>
</tr>
<tr>
<td>Price:</td><td><input type="text" name="price"/></td>
</tr>
<tr>
<td>GST %:</td><td><input type="text" name="gst"/></td>
</tr>
<tr>
<td>Total:</td><td><input type="text" name="total"/></td>
</tr>
<tr>
<td><input type="submit" style="padding:10px;" value="Submit"></td><td><input type="reset" style="padding:10px;" value="Cancel"></td>
</tr>
</table>
</form>
</body>
</html>