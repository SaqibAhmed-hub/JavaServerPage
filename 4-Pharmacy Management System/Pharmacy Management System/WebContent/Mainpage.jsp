<%@page import="com.pharmacy.*"%>
<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pharmacy Mangement System</title>
</head>
<body>
<%@include file="header.html" %>
<jsp:useBean id="u" class="com.pharmacy.Register"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
	String username=request.getParameter("uname");
	String pass= request.getParameter("psw");
	String utype=request.getParameter("utype");
	if(utype.equals("Admin")){
		if(username.equals("Admin") && pass.equals("admin@123"))
				{
					session.setAttribute("username", username);
					response.sendRedirect("adminmain.jsp");
				}
		else{
				request.setAttribute("check", "Invalid username and password");
				%>
				<jsp:forward page="loginprocess.jsp"></jsp:forward>	
				<%
				}
	}else if(utype.equals("customer")){
		try{
		Connection con=null;
		con = LoginDao.getconnect();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from register;");
		while(rs.next()){
			if(username.equals(rs.getString(3)) && pass.equals(rs.getString(4)))
			{
				session.setAttribute("uname", username);
				%>
				<jsp:forward page="custmain.jsp"></jsp:forward>
			<%
				}
			}
				request.setAttribute("check", "Pls entered correct Password<br>");
				%> 
				<jsp:forward page="loginprocess.jsp"></jsp:forward>
				 <%
		
		}catch(Exception e){
				e.printStackTrace();
		}
	}	
	%>

</body>
</html>