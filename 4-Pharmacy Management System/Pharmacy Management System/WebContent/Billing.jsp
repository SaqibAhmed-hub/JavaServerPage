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
			document.form4.invoice.focus();
			return false
		}
	}
	return true;
}
</script>
<%@ include file="header.html" %>
<center><h1>Billing </h1></center>
<% 
	if(request.getAttribute("bill")!=null){
		out.println("<b style='color:blue;'>"+request.getAttribute("bill")+"</b><br>");
	}
	%>
<form action="billingprocess.jsp" method="post" name="form4" onsubmit="return myfunction(this)">
<table cellpadding="10" cellspacing="10">
<tr>
<td>Invoice No:</td><td><input type="text" name="invoice"/></td>
</tr>
<tr>
<td>Bill date</td><td><input type="text" name="bdate"/></td>
</tr>
<tr>
<td>Product Name:</td><td><input type="text" name="pname"/></td>
</tr>
<tr>
<td>Quantity :</td><td><input type="text" name="qty"/></td>
</tr>
<tr>
<td>Price:</td><td><input type="text" name="price"/></td>
</tr>
<tr>
<td>Discount:</td><td><input type="text" name="discount"/></td>
</tr>
<tr>
<td>GST : </td><td><input type="text" name="gst"></td>
</tr>
<tr>
<td></td><td></td><td><b>Total Amount:</b></td><td><input type="text" style="width:200px;" name="amount"/></td>
</tr>
<tr>
<td><input type="submit" style="padding:10px;" value="Submit"></td><td><input type="reset" style="padding:10px;" value="Cancel"></td>
</tr>
</table>
</form>

</body>
</html>