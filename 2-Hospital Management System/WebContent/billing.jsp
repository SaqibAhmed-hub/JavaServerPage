<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
</head>
<body>
<%@ include file="header.html" %>
<script type="text/javascript">
	function myfunction(){
		var total;
		var doc=document.getElementsByName("Dcharges").value;
		var Lab=document.getElementsByName("Lcharges").value;
		var med=document.getElementsByName("Mcharges").value;
		var room=document.getElementsByName("Rcharges").value;
		var other=document.getElementsByName("Ocharges").value;
		total=doc+Lab+med+room+other;
		
		document.getElementById("tot").value=total;
	
		
	}		

</script>
<form action="billingprocess.jsp" method="post" id="frm2">
<table cellpadding="10" cellspacing="10">
<tr>
<td>Bill No:</td><td><input type="text" name="billno"></td>
</tr>
<tr>
<td>Bill Date:</td><td><input type="text" name="billdate"></td>
</tr>
<tr>
<td>patient ID:</td><td><input type="text" name="pid"></td>
</tr>
<tr>
<td>patient Name:</td><td><input type="text" name="pname"></td>
</tr>
<tr>
<td>Admit date:</td><td><input type="text" name="adate"></td>
</tr>
<tr>
<td>Discharge Date:</td><td><input type="text" name="ddate"></td>
</tr>
<tr>
<td>complaint description :</td><td><textarea rows="3" cols="20" name="complaint" form="frm2"></textarea></td>
</tr>
<tr>
<td> Doctor Fees:</td><td><input type="text" name="Dcharges"></td>
</tr>
<tr>
<td>Lab Charges:</td><td><input type="text" name="Lcharges"></td>
</tr>
<tr>
<td> Medicine Charges:</td><td><input type="text" name="Mcharges" ></td>
</tr>
<tr>
<td>Room Charges:</td><td><input type="text" name="Rcharges"></td>
</tr>
<tr>
<td>Other Charges:</td><td><input type="text" name="Ocharges"></td>
</tr>
<tr>
<td>Total Amount:</td><td><input type="text" name="amount" id="tot" onfocus="myfunction()"></td>
</tr>
<tr>
<td><input type="submit" value="Submit"/></td><td><input type="Reset" value="Cancel"/></td>
</tr>
</table>
</form>
<a href="Mainpage.jsp"><b>BACK</b></a>
</body>
</html>