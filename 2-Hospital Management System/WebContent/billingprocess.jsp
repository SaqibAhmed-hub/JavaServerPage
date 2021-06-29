<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hospital Mangement System</title>
</head>
<body>
<%
	String billno=request.getParameter("billno");
	String billdate=request.getParameter("billdate");
	String pid=request.getParameter("pid");
	String pname=request.getParameter("pname");
	String admit=request.getParameter("adate");
	String discharge=request.getParameter("ddate");
	String complaint=request.getParameter("complaint");
	String docfee=request.getParameter("Dcharges");
	String labfee=request.getParameter("Lcharges");
	String medicine=request.getParameter("Mcharges");
	String room=request.getParameter("Rcharges");
	String other=request.getParameter("Ocharges");
	String total=request.getParameter("amount");
%>
<%
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
		PreparedStatement ps=con.prepareStatement("insert into billing(billno,bdate,pid,pname,adate,ddate,complaint,doctor,Lab,medicine,room,other,total)values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
		ps.setString(1, billno);
		ps.setString(2, billdate);
		ps.setString(3, pid);
		ps.setString(4, pname);
		ps.setString(5, admit);
		ps.setString(6, discharge);
		ps.setString(7, complaint);
		ps.setString(8, docfee);
		ps.setString(9, labfee);
		ps.setString(10, medicine);
		ps.setString(11, room);
		ps.setString(12, other);
		ps.setString(13, total);
		int status=ps.executeUpdate();
		if(status>0){
			%>
			<script type="text/javascript">
				window.alert("Record Save Succefully");
			</script>
<center><h2>Hospital Management System</h2>
<table cellpadding="5" cellspacing="5">
<tr>
<td><label style="font:16px;">Bill No :</label></td><td><label ><b><%=billno%></b></label></td>
</tr>
<tr>
<td><label style="font:16px;">Bill Date :</label></td><td><label><%=billdate%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Patient ID :</label></td><td><label><%=pid%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Patient Name :</label></td><td><label><%=pname%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Admit Date :</label></td><td><label><%=admit%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Discharge Date :</label></td><td><label><%=discharge%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Complaint :</label></td><td><label><%=complaint%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Doctor Fees :</label></td><td><label><%=docfee%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Lab Fees :</label></td><td><label><%=labfee%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Medicine Charges :</label></td><td><label><%=medicine%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Room Charges :</label></td><td><label><%=room%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Other Charges :</label></td><td><label><%=other%></label></td>
</tr>
<tr>
<td><label style="font:16px;">Total Amount :</label></td><td><label><%=total%></label></td>
</tr>
<tr>
<td><button style="padding: 5px;"  onclick="window.print()">Print</button></td><td><button style="padding:5px;"  onclick="location.href='billing.jsp'">Back</button></td>
</tr>
</table>	
</center>
		
		<%		
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>