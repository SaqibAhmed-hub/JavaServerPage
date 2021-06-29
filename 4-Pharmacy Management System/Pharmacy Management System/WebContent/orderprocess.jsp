<%@page import="java.text.SimpleDateFormat,java.util.*,java.sql.*"%>
<%@ page language="java"  import="com.pharmacy.*"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
</head>
<body>
<%@ include file="headercust.html" %>
<%
	String orderno=request.getParameter("orderno");
	String orderdate=request.getParameter("orderdate");
	//convert string to date
	SimpleDateFormat st=new SimpleDateFormat("dd/MM/yyyy");
	java.util.Date dt= st.parse(orderdate);
	java.sql.Date odate= new java.sql.Date(dt.getTime());

	String pname=request.getParameter("pname");
	String qty=request.getParameter("qty");
	Double quantity= Double.parseDouble(qty);
	int status=0;
	try{
		Connection con = LoginDao.getconnect();
		PreparedStatement ps= con.prepareStatement("insert into orders(orderno,orderdate,pname,quantity) values(?,?,?,?)");
		ps.setString(1, orderno);
		ps.setDate(2,odate);
		ps.setString(3, pname);
		ps.setDouble(4, quantity);
		status=ps.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<%
	if(status>0){
			out.println("Record Saved Successfully");
			request.setAttribute("order", "Order is successfully Updated");
			%> <jsp:forward page="Order.jsp"></jsp:forward><%
		}	
%>
</body>
</html>