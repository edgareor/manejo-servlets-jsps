<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean class="beans.Persona" id="persona" scope="session"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    	<%
    		String nombre = "Edgar";
    		String apellido = "Ojeda";
    		String rut = "RUT";
    	%>
        <jsp:setProperty name="persona" property="nombre" value="<%=nombre %>"/>
        <jsp:setProperty name="persona" property="apellido" value="<%=apellido %>"/>
        <jsp:setProperty name="persona" property="rut" value="<%=rut %>"/>
        <%="Los Nuevos datos son: "%>
        <h1> Nombre: <jsp:getProperty name="persona" property="nombre"/></h1>
        <h1> Apellido: <jsp:getProperty name="persona" property="apellido"/></h1>
        <h1> Rut: <jsp:getProperty name="persona" property="rut"/></h1>
    </body>
</html>