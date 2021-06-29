<%@page import="java.sql.Date"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.sql.*,com.pharmacy.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Management System</title>
</head>
<body>
<%
	String pname=request.getParameter("pname");
	String cname=request.getParameter("cname");
	String mfg=request.getParameter("mfg");
	String exp=request.getParameter("exp");
	String price=request.getParameter("price");
	int status=0;
	
	//Simple Date Format
	SimpleDateFormat sf= new SimpleDateFormat("dd/MM/yyyy");
	java.util.Date dt2=sf.parse(mfg);
	java.util.Date dt1=sf.parse(exp);
	//converting util date to sql date.
	Date mfgdt = new Date(dt2.getTime());
	Date expdt= new Date(dt1.getTime());
	
	%>
	
	<%
	try{
		Connection con =null;
		con=LoginDao.getconnect();
		PreparedStatement ps=con.prepareStatement("insert into products(pname,cname,mfg,exp,price)values(?,?,?,?,?);");
		ps.setString(1, pname);
		ps.setString(2, cname);
		ps.setDate(3, mfgdt);
		ps.setDate(4, expdt);
		ps.setString(5, price);

		status=ps.executeUpdate();
	}catch(Exception e){
		System.err.print(e);
	}
	if(status>0){
		 out.println("Record Save Successfully");
		 request.setAttribute("pro", "Records save Successfully");
		 %>
		 <jsp:forward page="Products.jsp"></jsp:forward>
		 <%
		 }
	%>
</body>
</html>