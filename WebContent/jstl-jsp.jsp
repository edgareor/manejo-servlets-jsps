<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSTL Test</title>
</head>
<body>
	<h1>JSTL Test</h1>
	<%-- Variables con JSTL --%>
	<c:set var="Nombre" value="Edgar" />
	Valor Variable: <c:out value="${Nombre}" />
	<br>
	<%-- If con JSTL --%>
	<c:set var="Condicion" value="true" />
	<c:if test="${Condicion == true}">
		La condicion es verdadera
	</c:if>
	<br>
	<%-- condicion switch --%>
	<c:choose>
		<c:when test="${param.value == 1}">
			Opcion 1 seleccionada
		</c:when>
		<c:when test="${param.value == 2}">
			Opcion 2 seleccionada
		</c:when>
		<c:otherwise>
			Opcion desconocida
		</c:otherwise>
	</c:choose>
	<br>
	<%-- ciclo for con JSTL --%>
	<%
		String arreglo[]= {"Jehova", "Cristo", "Edgar", "Virginia"};
		request.setAttribute("arreglo", arreglo);
	%>
	<c:forEach var="nombre" items="${arreglo}">
		Nombre: ${nombre}
		<br>
	</c:forEach>
</body>
</html>