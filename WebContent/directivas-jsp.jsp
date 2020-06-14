<%@ page import="utils.Calculadora" language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Directivas JSP</title>
</head>
<body>
	<h1>Directivas JSP</h1>
	<%
		String result = Calculadora.dividir(10, 20);
	%>
	<table border="1">
	<tr>
		<th>Division</th>
	</tr>
	<tr>
		<td>Resultado:</td>
		<td><%= result %></td>
	</tr>
	</table>
</body>
</html>