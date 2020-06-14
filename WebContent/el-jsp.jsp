<!DOCTYPE html>
<jsp:useBean class="beans.Persona" id="persona" scope="session"/>	<%-- Agregar bean a JSP --%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expression Languaje JSP</title>
</head>
<body>
	<h1>Expression Languaje JSP</h1>
	<%
		String nombre = "Edgar";
	%>
	<jsp:setProperty name="persona" property="nombre" value="<%=nombre %>"/>	<%-- Modificar valor de atributo a bean --%>
	<ul>
		<li><strong> ID Aplicacion: </strong> ${pageContext.session.id}</li>
		<li><strong>Nombre Aplicacion: </strong> ${pageContext.request.contextPath}</li>
		<li><strong>Navegador: </strong> ${header['User-Agent']}</li>
		<li><strong>Cookie: </strong> ${cookie.JSESSIONID.value}</li>
		<li><strong>Server: </strong> ${pageContext.servletContext.serverInfo}</li>
		<li><strong>Nombre Persona: </strong> ${persona.nombre}</li>	<%-- Obtener valor de un atributo de un bean --%>
	</ul>
</body>
</html>