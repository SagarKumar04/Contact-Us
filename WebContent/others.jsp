<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Contact Us</title>

    <link rel="stylesheet" href="others.css">
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
	<form action="login.jsp">
    	<div id="login">
		  	<button type="submit" name="">Go to Login Page</button>
		</div>
	</form>
    <div class="">
      <h1 id="title">Contact Us</h1>
      <p id="description">Please fill this form in a decent manner</p>
    </div>

    <div class="form">
      <form id="survey-form" class="" action="thankYouPage" method="post">
        <div class="form-element">
          <label class="label-class" id="name-label" for="name">Full Name *</label>
          <br>
          <input id="name" class="form-data" type="text" name="name" value="" placeholder="Enter your full name" required>
          <br>
        </div>

        <div class="form-element">
          <label class="label-class" id="email-label" for="email">Email *</label>
          <br>
          <input id="email" class="form-data" type="email" name="email" value="" placeholder="Enter your email" required>
          <br>
        </div>

        <div class="form-element">
          <label class="label-class" id="message" for="message">Message *</label>
          <br>
          <textarea id="message" name="message" rows="5" cols="65" placeholder="Enter your message here..." required></textarea>
          <br>
        </div>

        <div class="form-element">
          <button class="form-data" id="submit" type="submit" name="button">Submit</button>
        </div>
      </form>
    </div>


  </body>
</html>