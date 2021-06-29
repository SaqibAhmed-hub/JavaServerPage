<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Management System</title>
</head>
<body>
<%
	String nid=request.getParameter("nid");
	String nname=request.getParameter("nname");
	String naddress=request.getParameter("naddress");
	String ncontact=request.getParameter("ncontact");
	
%>
<%
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
		PreparedStatement ps=con.prepareStatement("insert into nurse(nid,nname,address,contact)values(?,?,?,?)");
		ps.setString(1, nid);
		ps.setString(2, nname);
		ps.setString(3, naddress);
		ps.setString(4, ncontact);
		int status=ps.executeUpdate();
		if(status>0){
			%>
			<script type="text/javascript">
				window.alert("Record Save Succefully");
			</script>
		<%	response.sendRedirect("addnurse.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>