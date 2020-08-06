<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Archived Threads</title>
		
		<link rel="stylesheet" type="text/css" href="archived.css"> 
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
		        <form action="admin.jsp">
	    			<div id="admin">
			  			<button type="submit" name="">Go to Main Page</button>
					</div>
				</form>
				<h1>Archived Messages</h1>
				<table>
					<tr>
						<td>Name</td>
						<td>Email</td>
						<td>Message</td>
					</tr>	
					<c:forEach items="${archived}" var="eachArchived">
						<form action="getArchivedResponses" method="post">
							<tr>
								<td>${eachArchived.getName()}</td>
								<td>${eachArchived.getEmail()}</td>
								<td>${eachArchived.getMessage()}</td>
							</tr>
						</form>
					</c:forEach>
				</table>
			</c:otherwise>
		</c:choose>
	</body>
</html>