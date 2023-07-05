<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css" /> 
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if(session.getAttribute("user_name")==null){
		response.sendRedirect("login.jsp");
	}
%>
    <nav class="navbar">
        <img src="./iss_logo_header.png" height="30" class="logo_img">
        <form action="logout" method="post">
        <button  class="logout_btn" style="border: none;background: none;">logout</button>
        </form>
    </nav>
    <div class="main-div">
        <div class="title">
            Profile
        </div>
        <div class="item">Name : ${name}</div>
        <div class="item">User name : ${user_name}</div>
        <div class="item">gender : ${gender}</div>
    </div>
</body>
</html>