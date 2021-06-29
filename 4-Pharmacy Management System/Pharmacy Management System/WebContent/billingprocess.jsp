<%@page import="java.sql.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.pharmacy.LoginDao"%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
</head>
<body>
<%
	int status=0;
	String invoice=request.getParameter("invoice");
	String bdate=request.getParameter("bdate");
	//convert string to date
	SimpleDateFormat st=new SimpleDateFormat("dd/MM/yyyy");
	java.util.Date dt= st.parse(bdate);
	Date bdt= new Date(dt.getTime());
	
	
	String pname=request.getParameter("pname");
	String qty=request.getParameter("qty");
	Double qty1=Double.parseDouble(qty);
	String price=request.getParameter("price");
	Double pri = Double.parseDouble(price);
	String Discount=request.getParameter("discount");
	String GST=request.getParameter("gst");
	int gst=Integer.parseInt(GST);
	Double amount=Double.parseDouble(request.getParameter("amount"));
%>
<%
	try{
		Connection con=null;
		con=LoginDao.getconnect();
		PreparedStatement ps= con.prepareStatement("insert into billing(billno,billdate,pname,quantity,price,discount,gst,amount)values(?,?,?,?,?,?,?,?);");
		ps.setString(1,invoice);
		ps.setDate(2, bdt);
		ps.setString(3, pname);
		ps.setDouble(4, qty1);
		ps.setDouble(5, pri);
		ps.setString(6, Discount);
		ps.setInt(7, gst);
		ps.setDouble(8, amount);
		status=ps.executeUpdate();
				
	}catch(Exception e){
		e.printStackTrace();
	}
	if(status>0){
		out.println("Record Save Successfully");
		request.setAttribute("bill", "Record Save Successfully");
		%>
		<jsp:forward page="Billing.jsp" ></jsp:forward>
		<%
	}

%>
</body>
</html>