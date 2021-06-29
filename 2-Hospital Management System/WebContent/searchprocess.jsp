<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
</head>
<body>
<%
	String pro=request.getParameter("pid");
	Connection con=null;
	ResultSet rs=null;
	String pid,pname,gender,Mobile,ward,compliant;
	int age;
	Date admit;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
		Statement st=con.createStatement();
		rs=st.executeQuery("select * from admit where pid = '"+ pro +"' ");
		while(rs.next()){
			pid=rs.getString(1);
			pname=rs.getString(2);
			gender=rs.getString(3);
			age=rs.getInt(4);
			Mobile=rs.getString(6);
			admit=rs.getDate(7);
			ward=rs.getString(8);
			compliant=rs.getString(9);
			
			%>
			<center>
			<h1>Patient Information</h1><br>
			<table cellpadding="5" cellspacing="5" border="2">
				<tr><td>Patient ID:</td><td><%=pid %></td></tr>
				<tr><td>Patient Name:</td><td><%=pname %></td></tr>
				<tr><td>Gender :</td><td><%=gender %></td></tr>
				<tr><td>Age :</td><td><%=age %></td></tr>
				<tr><td>Mobile :</td><td><%=Mobile %></td></tr>
				<tr><td>Admit Date:</td><td><%=admit %></td></tr>
				<tr><td>Ward No:</td><td><%=ward %></td></tr>
				<tr><td>Complaint:</td><td><%=compliant %></td></tr>
			</table></center>	
		<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}

%>
<br>
<a href="searchpat.jsp"><b>BACK</b></a>
</body>
</html>