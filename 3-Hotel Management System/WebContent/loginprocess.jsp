<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String username=request.getParameter("uname");
	String psw= request.getParameter("pass");
	if(username.equals("Admin")&& psw.equals("admin@123")){
		session.setAttribute("uname", username);
		%>
		<jsp:forward page="mainpage.jsp"></jsp:forward>
		<%
	}

%>
</body>
</html>