<%@ page import="com.pharmacy.*,java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="com.pharmacy.Register"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
	int i=LoginDao.save(u);
	if(i>0){
		 out.println("Record save Succefully");
		 request.setAttribute("reg", "Records Save Succesfully");
		 response.sendRedirect("loginprocess.jsp");
	}else{
		response.sendRedirect("Errorpage.jsp");
	}
	

%>
</body>
</html>