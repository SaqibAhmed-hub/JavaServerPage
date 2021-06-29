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
	String did=request.getParameter("did");
	String dname=request.getParameter("dname");
	String doj=request.getParameter("doj");
	//convert string to date
	SimpleDateFormat st=new SimpleDateFormat("dd/MM/yyyy");
	java.util.Date dt= st.parse(doj);
	java.sql.Date dofj=new java.sql.Date(dt.getTime());
	String specialist=request.getParameter("spec");
	String daddress=request.getParameter("dadd");
	String dcontact=request.getParameter("dcont");
	
%>
<%
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
		PreparedStatement ps=con.prepareStatement("insert into doctor(did,dname,dateofjoin,specialist,daddress,dcontact)values(?,?,?,?,?,?)");
		ps.setString(1, did);
		ps.setString(2, dname);
		ps.setDate(3, dofj);
		ps.setString(4, specialist);
		ps.setString(5, daddress);
		ps.setString(6, dcontact);
		int status=ps.executeUpdate();
		if(status>0){
			%>
			<script type="text/javascript">
				window.alert("Record Save Succefully");
			</script>
		<%	
		response.sendRedirect("adddoctor.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>