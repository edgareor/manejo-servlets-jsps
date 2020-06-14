<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expresiones en JSP</title>
</head>
<body>
	<h1> Expresiones en JSP</h1>
	<%= "Hola" + " Mundo desde Expresiones" %>	<%-- Se puede agregar una expresion directamente sin pasar por "out.print" --%> 
	<br>
	<%= 10 * 5 / 2 %>
	<br>
	Session: <%= session.getId() %>	<%-- Tiene objetos instanciados automaticamente --%>
	<br>
	<%= request.getParameter("nombre") %>  <%-- Podemos ocupar el objeto request implicito para obtener los parametros --%>
	<br>
	<%= request.getParameter("apellido") %>
	<br>
	<%= request.getParameter("rut") %>
</body>
</html>