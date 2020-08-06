<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Thank You</title>

    <link rel="stylesheet" href="thankYou.css">
  </head>
  <body>
  
   <%
   	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
   %>
   
    <form id="login-form" class="" action="others.jsp" method="post">
      <p>Thank you for contacting us.</p>
      <p>We will get back to you soon.</p>

      <button class="form-data" id="submit" type="submit" name="button">Submit Another Resonse</button>
    </form>
    <form action="home.jsp">
    	<div id="home">
		  	<button type="submit" name="">Go to Home Page</button>
		</div>
	</form>
  </body>
</html>
