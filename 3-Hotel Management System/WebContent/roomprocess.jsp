<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Management System</title>
</head>
<body>
<%
	String custname=request.getParameter("custname");
	String custadd=request.getParameter("custaddress");
	String custcont=request.getParameter("custcont");
	String custid=request.getParameter("custid");
	String Noofper=request.getParameter("noofper");
	String roomtype=request.getParameter("roomtype");
	String bookd=request.getParameter("bookdate");
	//convert to date
	SimpleDateFormat sp=new SimpleDateFormat("dd/MM/yyyy");
	java.util.Date dt=sp.parse(bookd);
	
	java.sql.Date dt1=new java.sql.Date(dt.getTime());
	int status=0;
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
		PreparedStatement ps=con.prepareStatement("insert into booking(custname,custadd,custcont,custid,Noofper,roomtype,bookdate)values(?,?,?,?,?,?,?)");
		ps.setString(1, custname);
		ps.setString(2, custadd);
		ps.setString(3, custcont);
		ps.setString(4, custid);
		ps.setString(5, Noofper);
		ps.setString(6, roomtype);
		ps.setDate(7, dt1);
		status=ps.executeUpdate();
		if(status>0){
			%>
			<script type="text/javascript">
				window.alert("Record Save Succefully");
			</script>
		<%	
		response.sendRedirect("room.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	
%>
</body>
</html>