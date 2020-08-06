<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Responses</title>

    <link rel="stylesheet" href="admin.css">
  </head>
  <body>
   
   <%
   	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
   %>
   
  	<c:choose>
    	<c:when test="${empty username}">
        	<form action="login.jsp">
    			<div id="login">
		  			<button type="submit" name="">Login</button>
				</div>
			</form>
    	</c:when>
    	<c:otherwise>
        	<form id="" class="" action="getActiveResponses" method="get">
      			<button class="form-data" id="submit" type="submit" name="button">Active Responses</button>
    		</form>
    		<form id="" class="" action="getArchivedResponses" method="post">
      			<button class="form-data" id="submit" type="submit" name="button">Archived Responses</button>
    		</form>
    		<form action="getLogoutPage" method="get">
    			<div id="logout">
		  			<button type="submit" name="">Logout</button>
				</div>
			</form>
    	</c:otherwise>
	</c:choose>
  </body>
</html>