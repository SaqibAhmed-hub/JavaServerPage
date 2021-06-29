<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*,java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Management System</title>
</head>
<body>
<%
String custname=request.getParameter("custname");
String custid=request.getParameter("custid");
String checkd=request.getParameter("checkdate");
String checkout=request.getParameter("outdate");
String roomno=request.getParameter("roomno");
String roomstay=request.getParameter("stay");
String total=request.getParameter("amount");

	//convert to date
	SimpleDateFormat sp=new SimpleDateFormat("dd/MM/yyyy");
	java.util.Date dt=sp.parse(checkd);

	java.sql.Date dt1=new java.sql.Date(dt.getTime());
	//convert to date
	java.util.Date dt2=sp.parse(checkout);
	
	java.sql.Date dt3=new java.sql.Date(dt2.getTime());
	int status=0;
	Connection con=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","");
	PreparedStatement ps=con.prepareStatement("insert into checkout(custname,custid,checkdate,checkout,Roomno,roomstay,total)values(?,?,?,?,?,?,?)");
	ps.setString(1, custname);
	ps.setString(2, custid);
	ps.setDate(3, dt1);
	ps.setDate(4, dt3);
	ps.setString(5, roomno);
	ps.setString(6, roomstay);
	ps.setString(7, total);
	status=ps.executeUpdate();
	if(status>0){
		%>
		<script type="text/javascript">
			window.alert("Record Save Succefully");
		</script>
	<%	
	response.sendRedirect("checkout.jsp");
	}
}catch(Exception e){
	e.printStackTrace();
}

%>
</body>
</html>