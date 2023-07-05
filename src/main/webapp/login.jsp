<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css" /> 
</head>
<body>
<%
	if(session.getAttribute("user_name")!=null){
		response.sendRedirect("home.jsp");
	}
%>
    <nav class="navbar">
        <img src="./iss_logo_header.png" height="30" class="logo_img">
    </nav>
    <div class="main-div">
        <div class="title">
            Login
        </div>
        <form action="login" method="post">
	        <div class="item">
	            <input class="input" name="user_name" placeholder="UserName">
	        </div>
	        <div class="item">
	            <input class="input" name="password" type="password" placeholder="Password">
	        </div>
	        <div class="item">
	            <button type="submit" class="btn">Login</button>
	        </div>
        </form>
        <div style="text-align: center;margin-bottom: 20px;">
            <span>Create an account?</span> <a href="#">Signup</a>
        </div>
    </div>
</body>
</html>