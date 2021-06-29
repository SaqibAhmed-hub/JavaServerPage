<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
</head>
<body>
<%
	String uname=request.getParameter("uname");
	String pass=request.getParameter("pass");
%>
<%-- Database Connection --%>
<%
	Connection con =null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from Register");
		while(rs.next()){
			if(uname.equals(rs.getString(3))&& pass.equals(rs.getString(4))){
				session.setAttribute("username", uname);
				%>
				<jsp:forward page="Mainpage.jsp"></jsp:forward>
				<%
			}
		}
		
	}catch(Exception e){
		e.printStackTrace();
		}
	
%>
</body>
</html>