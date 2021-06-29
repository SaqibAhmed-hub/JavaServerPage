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
function formssubmit(form){
	for(var i=0;i<form.elements.length;i++){
		if(form.elements[i].value==""){
			window.alert("Please fill all the required fields");
			document.form2.sid.focus();
			return false
		}
	}
	return true;
}
</script>
<%@ include file="header.html" %>
<center><h1>Suppliers</h1></center>
<%
	if(request.getAttribute("sup")!=null){
		out.println("<b style='color:blue'>"+request.getAttribute("sup")+"</b><br>");
	}
%>
<form action="supplierprocess.jsp" method="post" name="form2" onsubmit="return formsubmit(this)">
<table cellpadding="10" cellspacing="10">
<tr>
<td>Supplier ID:</td><td><input type="text" name="sid"></td>
</tr>
<tr>
<td>Supplier Name:</td><td><input type="text" name="sname"></td>
</tr>
<tr>
<td>Address:</td><td><input type="text" name="addr"></td>
</tr>
<tr>
<td>Mobile:</td><td><input type="text" name="mobile"></td>
</tr>
<tr>
<td>GST No:</td><td><input type="text" name="gstno"></td>
</tr>
<tr>
<td></td><td><input type="submit" style="padding:10px;" value="OK"></td><td><input type="reset" style="padding:10px;" value="Cancel">
</tr>
</table>
</form>
</body>
</html>