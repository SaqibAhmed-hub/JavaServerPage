<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style type="text/css">
form {
  border: 3px solid #f1f1f1;
}

/* Full-width inputs */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
/* type of login*/
select{

	width:80%%;
	padding:12px 20px;
	margin:8px 0;
	display:inline-block;
	border: 1px solid #ccc;
  	box-sizing: border-box;
		
}

/* style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 80%;
}


button:hover {
  opacity: 0.8;
}


.cancelbtn {
  width:80%;
  padding: 10px 18px;
  background-color: #f44336;
}


.imgcontainer {
  text-align: center;
  margin: 24px 0 8px 0;
}

img.avatar {
  width: 20%;
  border-radius: 50%;
}

/* Add padding to containers */
.container {
  padding: 12px;
}

/* The "Forgot password" text */
span.psw {
  float: right;
  padding-top: 16px;
}

</style>
</head>
<body>

<form action="Mainpage.jsp" method="post" >
  <div class="imgcontainer">
    <img src="img/avat.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
  <%
  	if(request.getAttribute("check")!=null){
  		out.println("<b style='color:red;'>"+request.getAttribute("check")+"</b><br>");
  	}
	
  %>
  <%
	if(request.getAttribute("reg")!=null){
  		out.println("<b style='color:blue;'>"+request.getAttribute("reg")+"</b><br>");
	}
  
  %>
    <label for="uname"><b>Username</b></label><br>
    <input type="text" placeholder="Enter Username" name="uname" required>

    <label for="psw"><b>Password</b></label><br>
    <input type="password" placeholder="Enter Password" name="psw" required>

	<label for="type"><b>Type</b></label><br>
    <select name="utype" style="width:100%">
    	<option value="Admin">Administrator</option>
    	<option value="customer">Customer</option>
    </select><br>
	<center>
    <button type="submit">Login</button></center>
 	<br><br>
    <a href="Register.jsp">Sign Up Here</a>
  </div>
  </form>
</body>
</html>