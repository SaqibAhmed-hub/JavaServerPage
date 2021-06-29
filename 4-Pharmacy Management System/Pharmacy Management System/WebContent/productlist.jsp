<%@page import="com.pharmacy.LoginDao"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy managemernt System</title>
</head>
<body>
<%@ include file="headercust.html" %>
<br>
<br>


<%
	String product=request.getParameter("psearch");
	Connection con=null;
	ResultSet rs=null;
%>
	
<center>
<table border=1 width=90%>
<tr>
<td><b>Products Name</b></td><td><b>Company Name</b></td><td><b>Manufacturing Date</b></td><td><b>Exp Date</b></td><td><b>Price</b></td>
</tr>
<tr>
<%
try{
	con=LoginDao.getconnect();
	PreparedStatement ps=con.prepareStatement("select * from products where pname=?");
	ps.setString(1, product);
	rs=ps.executeQuery();
	while(rs.next()){
		%>
		<td><%=rs.getString("pname")%></td><td><%=rs.getString("cname")%></td><td><%=rs.getString("mfg")%></td><td><%=rs.getString("exp")%></td><td><%=rs.getString("price")%></td>			
		</tr>
	<%
	}
}catch(Exception e){
e.printStackTrace();
}

%>

</table>
</center>
<br>
<br>
<a href="productsearch.jsp">Back</a>
</body>
</html>