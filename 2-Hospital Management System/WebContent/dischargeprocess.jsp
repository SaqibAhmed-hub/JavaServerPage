<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
</head>
<body>
<%
	String pid=request.getParameter("pid");
	String pname=request.getParameter("pname");
	String gender=request.getParameter("gender");
	String disdate=request.getParameter("ddate");
	//convert string to date
	SimpleDateFormat st=new SimpleDateFormat("dd/MM/yyyy");
	java.util.Date dt= st.parse(disdate);
	java.sql.Date ddate=new java.sql.Date(dt.getTime());
	String disstatus=request.getParameter("disstatus");
	
%>
<%
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
		PreparedStatement ps=con.prepareStatement("insert into discharge(pid,pname,gender,ddate,disstatus)values(?,?,?,?,?)");
		ps.setString(1, pid);
		ps.setString(2, pname);
		ps.setString(3, gender);
		ps.setDate(4, ddate);
		ps.setString(5, disstatus);
		int status=ps.executeUpdate();
		if(status>0){
			%>
			<script type="text/javascript">
				window.alert("Record Save Succefully");
			</script>
		<%	response.sendRedirect("discharge.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>