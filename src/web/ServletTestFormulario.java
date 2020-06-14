package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletTestFormulario
 */
@WebServlet("/ServletTestFormulario")
public class ServletTestFormulario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		// Obtener listado de atributos de session
		@SuppressWarnings("unchecked")
		List<String> datos = (List<String>) session.getAttribute("datos");
		
		// Si la lista es null, procedemos a crearla, y crear los atributos con valores de null
		if(datos == null) {
			datos = new ArrayList<>();
			session.setAttribute("datos", datos);
		}
		
		// Extraer datos de formulario
		String nombre = request.getParameter("nombre");	
		String apellido = request.getParameter("apellido");
		String rut = request.getParameter("rut");
		
		String datosNuevos = nombre + ' ' + apellido + ' ' + rut;
		
		// Validamos si se ingresaron datos, entonces tenemos que adicionarle los nuevos datos
		if(datosNuevos != null && !datosNuevos.trim().equals("")) {
			datos.add(datosNuevos);
		}
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		for (String dat : datos) {
			out.print(dat);
			out.print("<br>");
		}
		out.print("<br>");
		out.print("<a href='/ManejoServletsJsps/index.jsp'> Regresar a Formulario </a>");
	}

}
