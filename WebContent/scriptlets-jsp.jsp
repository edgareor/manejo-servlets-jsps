<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Scriptlets JSP</title>
</head>
<%--Agregar codigo condicionado --%>
<% 
	String color = request.getParameter("color");
	if (color == null || color.trim().equals("")){
		color = "gray";
	}
%>
<body bgcolor="<%=color%>">
	<h1>Scriptlets JSP</h1>
	<% String cp = request.getContextPath(); %>
	<% out.print(cp); %>
	<br>
	<br>
	<a href="/ManejoServletsJsps/index.jsp">Volver</a>
</body>
</html>