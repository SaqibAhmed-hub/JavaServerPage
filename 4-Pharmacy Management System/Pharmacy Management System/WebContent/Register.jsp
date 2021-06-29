<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
<style type="text/css">
* {
  box-sizing: border-box;
}

/* Style the body */
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

/* Header/logo Title */
.header {
  padding: 80px;
  text-align: center;
  background: #4cf051;
  color: white;
}
/* Increase the font size of the heading */
.header h1 {
  font-size: 40px;
}


</style>
</head>
<body>
<div class="header">
	<img alt="" src="img/logo.jpg">
  <h1>Pharmacy Mangement System</h1>
</div>
<center> Registration Form</center>
<form action="registerprocess.jsp">
<table cellpadding="5" cellspacing="5">
<tr>
<td></td><td></td>
</tr>
<tr>
<td>Customer ID: </td><td><input type="text" name="custid"/></td>
</tr>
<tr>
<td>Customer Name: </td><td><input type="text" name="custname"/></td>
</tr>
<tr>
<td>Username: </td><td><input type="text" name="uname"/></td>
</tr>
<tr>
<td>Password: </td><td><input type="password" name="psw"/></td>
</tr>
<tr>
<td>Address: </td><td><input type="text" name="custadd"/></td>
</tr>
<tr>
<td>Mobile: </td><td><input type="text" name="custmobile"/></td>
</tr>
<tr>
<td></td><td><input type="submit" style="padding:10px;" value="Register"/></td><td><input type="reset" style="padding:10px;" value="Cancel"/></td>
</tr>
</table>
</form>
&nbsp;&nbsp;&nbsp;
<a href="loginprocess.jsp">Back</a>
</body>
</html>