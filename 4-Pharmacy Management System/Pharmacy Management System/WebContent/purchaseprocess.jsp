<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	String pbill=request.getParameter("pbill");
	String billd=request.getParameter("Bill_date");
	//convert string to date
	SimpleDateFormat sp=new SimpleDateFormat("dd/mm/yyyy");
	java.util.Date dt=sp.parse(billd);
	java.sql.Date bdate=new java.sql.Date(dt.getTime());
	String sid=request.getParameter("sid");
	String pname=request.getParameter("product_name");
	String cname=request.getParameter("company_name");
	String qty=request.getParameter("Qty");
	String pri=request.getParameter("price");
	Double price=Double.parseDouble(pri);
	String gst=request.getParameter("gst");
	int gstno=Integer.parseInt(gst);
	String total=request.getParameter("total");
	Double to=Double.parseDouble(total);
	int status=0;
	Connection con=null;
	try{
		con=LoginDao.getconnect();
		PreparedStatement ps=con.prepareStatement("insert into purchase(pbill,bdate,sid,pname,cname,qty,price,gst,total)values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, pbill);
		ps.setDate(2, bdate);
		ps.setString(3, sid);
		ps.setString(4, pname);
		ps.setString(5, cname);
		ps.setString(6, qty);
		ps.setDouble(7, price);
		ps.setInt(8, gstno);
		ps.setDouble(9, to);
		status=ps.executeUpdate();
		if(status>0){
			out.println("Data Save Sucessfully");
			request.setAttribute("pur", "Record Save Successfully");
			%>
			<jsp:forward page="Purchase.jsp"></jsp:forward>
		<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>