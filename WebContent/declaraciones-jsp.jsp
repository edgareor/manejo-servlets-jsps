<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Declaraciones JSP</title>
</head>
<%! public int contador = 0;%>
<%
	contador++;
%>
<body>
	<h1>Declaraciones JSP</h1>
	<h2>Contador: <%= contador %></h2>
</body>
</html>