<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
</head>
<body>
<%
	String aid=request.getParameter("adminid");
	String aname=request.getParameter("adminname");
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
	String address=request.getParameter("addr");
	String mobile=request.getParameter("mobile");
	int status=0;
%>
<%
	Connection con =null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
		PreparedStatement ps = con.prepareStatement("insert into register(adminid,aname,uname,pass,address,mobile) values(?,?,?,?,?,?)");
		ps.setString(1, aid);
		ps.setString(2, aname);
		ps.setString(3, uname);
		ps.setString(4, pass);
		ps.setString(5, address);
		ps.setString(6, mobile);
		status=ps.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}
	if(status>0){
		out.println("Record Save Succefully");
		response.sendRedirect("Index.html");
	}










%>
</body>
</html>