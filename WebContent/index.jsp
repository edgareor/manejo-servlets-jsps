<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario Servlet</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
<script type="text/javascript" src="funciones.js"></script>
</head>
<body>
	<div
		style="width: 30%; height: 20%; margin: 1px auto; text-align: center">
		<h2>Formulario Servlet</h2>
		<form name="form1" action="/ManejoServletsJsps/FormularioServlet"
			method="post" onsubmit="return validarFormulario(this);">
			<fieldset>
				<legend>Ingresar Persona</legend>
				<input type="hidden" name="oculto" value="valorOculto">
				<table id="enfasis">
					<tr>
						<td class="columna">Nombre: (*)</td>
						<td class="default"><input type="text" name="nombre"
							value="Escribir nombre" onfocus="this.select()"></td>
					</tr>
					<tr>
						<td class="columna">Apellido: (*)</td>
						<td class="default"><input type="text" name="apellido"
							value="Escribir apellido" onfocus="this.select()">
						<td>
					</tr>
					<tr>
						<td class="columna">Rut: (*)</td>
						<td class="default"><input type="text" name="rut"
							value="Escribir rut" onfocus="this.select()"></td>
					</tr>
					<tr>
						<td class="columna">Tecnologías: (*)</td>
						<td class="default">
							Java <input type="checkbox" name="tecnologia" value="Java"> 
							Node <input type="checkbox" name="tecnologia" value="Node"> 
							Python <input type="checkbox" name="tecnologia" value="Python">
						</td>
					</tr>
					<tr style="text-align: center">
						<td><input type="submit" value="Enviar" class="default"></td>
						<td><input type="reset" value="Borrar" class="default"></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
	<div
		style="width: 30%; height: 20%; margin: 1px auto; text-align: center">
		<h2>Formulario Servlet - Carrito Personas</h2>
		<form name="form1" action="/ManejoServletsJsps/ServletTestFormulario"
			method="post" onsubmit="return validarFormulario(this);">
			<fieldset>
				<legend>Ingresar Persona</legend>
				<input type="hidden" name="oculto" value="valorOculto">
				<table id="enfasis">
					<tr>
						<td class="columna">Nombre: (*)</td>
						<td class="default"><input type="text" name="nombre"
							value="Escribir nombre" onfocus="this.select()"></td>
					</tr>
					<tr>
						<td class="columna">Apellido: (*)</td>
						<td class="default"><input type="text" name="apellido"
							value="Escribir apellido" onfocus="this.select()">
						<td>
					</tr>
					<tr>
						<td class="columna">Rut: (*)</td>
						<td class="default"><input type="text" name="rut"
							value="Escribir rut" onfocus="this.select()"></td>
					</tr>
					<tr>
						<td class="columna">Tecnologías: (*)</td>
						<td class="default">
							Java <input type="checkbox" name="tecnologia" value="Java"> 
							Node <input type="checkbox" name="tecnologia" value="Node"> 
							Python <input type="checkbox" name="tecnologia" value="Python">
						</td>
					</tr>
					<tr style="text-align: center">
						<td><input type="submit" value="Enviar" class="default"></td>
						<td><input type="reset" value="Borrar" class="default"></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
		<div
		style="width: 30%; height: 20%; margin: 1px auto; text-align: center">
		<h2>Formulario Expresiones JSP</h2>
		<form name="form1" action="/ManejoServletsJsps/expresiones-jsp.jsp"
			method="post" onsubmit="return validarFormulario(this);">
			<fieldset>
				<legend>Ingresar Persona</legend>
				<input type="hidden" name="oculto" value="valorOculto">
				<table id="enfasis">
					<tr>
						<td class="columna">Nombre: (*)</td>
						<td class="default"><input type="text" name="nombre"
							value="Escribir nombre" onfocus="this.select()"></td>
					</tr>
					<tr>
						<td class="columna">Apellido: (*)</td>
						<td class="default"><input type="text" name="apellido"
							value="Escribir apellido" onfocus="this.select()">
						<td>
					</tr>
					<tr>
						<td class="columna">Rut: (*)</td>
						<td class="default"><input type="text" name="rut"
							value="Escribir rut" onfocus="this.select()"></td>
					</tr>
					<tr style="text-align: center">
						<td><input type="submit" value="Enviar" class="default"></td>
						<td><input type="reset" value="Borrar" class="default"></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
	<div
		style="width: 30%; height: 20%; margin: 1px auto; text-align: center">
		<h2>Formulario Scriptlets JSP</h2>
		<form name="form1" action="/ManejoServletsJsps/scriptlets-jsp.jsp"
			method="get" onsubmit="return validarFormulario(this);">
			<fieldset>
				<legend>Ingresar Color</legend>
				<table id="enfasis">
					<tr>
						<td class="columna">Color: (*)</td>
						<td class="default"><input type="text" name="color"
							placeholder="Escribir color" onfocus="this.select()"></td>
					</tr>
					<tr style="text-align: center">
						<td><input type="submit" value="Enviar" class="default"></td>
						<td><input type="reset" value="Borrar" class="default"></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</body>
</html>