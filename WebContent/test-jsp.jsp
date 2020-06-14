<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test JSP</title>
</head>
<body>
	<h1>Test JSP</h1>
	<br>
	<ul>
		<li> <% out.print("Hola Mundo desde codigo Java"); %></li>	<%--Podemos usar la variable "out" directamente.--%>
		<li> <%= "Hola Mundo desde codigo Java con Expression" %> </li> <%-- Podemos escribir mensajes con Expression Languaje --%>
		<li> ${"Hola mundo desde codigo EL (Expression Languaje)"} </li> <%-- Podemos escribir mensajes con Expression Languaje --%>
	</ul>
</body>
</html>