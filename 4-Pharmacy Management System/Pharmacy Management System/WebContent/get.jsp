<%@page import="com.pharmacy.LoginDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%  
 String pro=request.getParameter("name");
	Connection con =null;
	String price=null;
 try{
	con=LoginDao.getconnect();	 	
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("Select * from products where pname LIKE '"+pro+"%'");
	if(rs.wasNull()==true){
		response.getWriter().println(pro+" is unavailable");
	}else{
		
	
	while(rs.next()){
		price=rs.getString(5);
	}
	response.getWriter().print(price);
	}
 }catch(Exception e){
	 e.printStackTrace();
 }
%>

</body>
</html>