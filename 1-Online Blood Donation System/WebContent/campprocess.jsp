<%@page import="java.text.SimpleDateFormat,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Blood Donation</title>
</head>
<body>
<%
	String camp=request.getParameter("camp");
	String cdate=request.getParameter("campdate");
	//convert to date
	SimpleDateFormat sp=new SimpleDateFormat("dd/MM/yyyy");
	java.util.Date dt=sp.parse(cdate);
	java.sql.Date dt1= new java.sql.Date(dt.getTime());
	String units=request.getParameter("unit");
	String Bloodgrp=request.getParameter("bloodgroup");
	String city=request.getParameter("city");
	int status=0;
	Connection con =null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","");
		PreparedStatement ps=con.prepareStatement("insert into camp(campname,campdate,units,bloodgroup,city)values(?,?,?,?,?)");
		ps.setString(1, camp);
		ps.setDate(2, dt1);
		ps.setString(3, units);
		ps.setString(4, Bloodgrp);
		ps.setString(5, city);
		status=ps.executeUpdate();
		if(status>0){
			%>
			<script type="text/javascript">
					window.alert("Record Save Succesfully");
			</script>
			<jsp:forward page="bloodcamp.jsp"></jsp:forward>
	<%}
	}catch(Exception e){
		e.printStackTrace();
	}

%>
</body>
</html>