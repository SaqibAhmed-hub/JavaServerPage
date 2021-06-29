<%@page import="com.pharmacy.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
</head>
<body>
<%@ include file="header.html" %>
<%
	String supid=request.getParameter("sid");
	String supname=request.getParameter("sname");
	String supadd=request.getParameter("addr");
	String supmob=request.getParameter("mobile");
	String supgst=request.getParameter("gstno");
	Connection con =null;
	int status=0;
	try{
		con=LoginDao.getconnect();
		PreparedStatement ps=con.prepareStatement("insert into supplier(sid,sname,Address,mobile,GST) values(?,?,?,?,?)");
		ps.setString(1, supid);
		ps.setString(2, supname);
		ps.setString(3, supadd);
		ps.setString(4, supmob);
		ps.setString(5, supgst);
		status=ps.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}
	if(status>0){
		out.println("Record Save Sucessfully");
		request.setAttribute("sup", "Record save Successfully");
		%>
		<jsp:forward page="Supplier.jsp"></jsp:forward>
	<%
	}
%>
</body>
</html>