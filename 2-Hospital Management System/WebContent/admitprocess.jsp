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
	String age1=request.getParameter("dob");
	int age=Integer.parseInt(age1);
	
	String address=request.getParameter("addr");
	String mobile=request.getParameter("mobile");
	String admitdate=request.getParameter("adate");
	//conver string to date
	SimpleDateFormat st=new SimpleDateFormat("dd/MM/yyyy");
	java.util.Date dt=st.parse(admitdate);
	java.sql.Date adate=new java.sql.Date(dt.getTime());
	
	String wardno=request.getParameter("wno");
	String complaint=request.getParameter("complaint");
	
%>
<%
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
		PreparedStatement ps=con.prepareStatement("insert into admit(pid,pname,gender,age,address,mobile,adate,wardno,complaint)values(?,?,?,?,?,?,?,?,?)");
		ps.setString(1, pid);
		ps.setString(2, pname);
		ps.setString(3, gender);
		ps.setInt(4, age);
		ps.setString(5, address);
		ps.setString(6, mobile);
		ps.setDate(7, adate);
		ps.setString(8, wardno);
		ps.setString(9, complaint);
		int status=ps.executeUpdate();
		if(status>0){
			%>
			<script type="text/javascript">
				window.alert("Record Save Succefully");
			</script>
		<%	response.sendRedirect("admit.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}

%>
</body>
</html>