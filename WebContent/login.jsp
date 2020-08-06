<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

	<head>
	  <meta charset="utf-8">
	  <title>Login Page</title>
	
	  <link rel="stylesheet" href="login.css">
	  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600&family=Pacifico&display=swap" rel="stylesheet">
	</head>
	
	<body>
	
	   <%
	   	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	   %>
   
		<form action="home.jsp">
    		<div id="home">
		  		<button type="submit" name="">Go to Home Page</button>
			</div>
		</form>
		<div class="page">
		    <div class="text">
		      <h1>Hey, Admin!</h1>
		      <p>Login to continue...</p>
		    </div>
		    <div class="form">
		      <form id="login-form" class="" action="getLoginPage" method="post">
		        <div class="form-element">
		          <label class="label-class" id="username-label" for="">Username</label>
		          <br>
		          <input type="text" id="username" class="form-data" name="username" value="" placeholder="Enter your username" required>
		          <br>
		        </div>
		
		        <div class="form-element">
		          <label class="label-class" id="pasword-label" for="">Password</label>
		          <br>
		          <input type="password" id="password" class="form-data" name="password" value="" placeholder="Enter your password" required>
		        </div>
		
		        <div class="form-element">
		          <button class="form-data" id="submit" type="submit" name="button">Submit</button>
		        </div>
		      </form>
		    </div>
		</div>
	</body>
</html>
