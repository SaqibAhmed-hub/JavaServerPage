<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Donation</title>
</head>
<body>
<%
	String donor=request.getParameter("donor");
	String gender=request.getParameter("gender");
	String Age=request.getParameter("age");
	int age=Integer.parseInt(Age);
	String Mobile=request.getParameter("mobile");
	String Bloodgrp=request.getParameter("bloodgroup");
	String email=request.getParameter("email");
	String address=request.getParameter("address");
	%>
<%
	Connection con=null;
	int status=0;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","");
		PreparedStatement ps=con.prepareStatement("insert into donar(donorname,gender,age,mobileno,bloodgroup,email,address)values(?,?,?,?,?,?,?)");
		ps.setString(1, donor);
		ps.setString(2, gender);
		ps.setInt(3, age);
		ps.setString(4, Mobile);
		ps.setString(5, Bloodgrp);
		ps.setString(6, email);
		ps.setString(7, address);
		status=ps.executeUpdate();
		if(status>0){
			%>
			<script type="text/javascript">
					window.alert("Record Save Succesfully");
			</script>
			<jsp:forward page="donation.jsp"></jsp:forward>
		<%}
		
	}catch(Exception e){
		e.printStackTrace();
	}

%>
</body>
</html>