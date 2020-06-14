package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletTestHttpSession
 */
@WebServlet("/ServletTestHttpSession")
public class ServletTestHttpSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String mensaje = null;
		
		// Obtener valor de atributo contador, si no posee el atributo devolvera "null", por eso debemos recibirlo en un tipo Object.
		Integer contador = (Integer) session.getAttribute("contador");
		
		// Si es primera vez dar valor de 1 al contador
		if (contador == null) {
			contador = 1;
			mensaje = "Bienvenido por primera vez";
		} else {
			contador++;
			mensaje = "Bienvenido nuevamente";
		}
		
		// De cualquiera de las dos formas establecer el atributo en la sesion con el valor correspondiente
		session.setAttribute("contador", contador);
		
		response.setContentType("application/json;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("{\"contador\":" + contador + ", \"íd\":" + "\"" + session.getId() + "\", "+ "\"mensaje\":" + "\"" + mensaje + "\"" + "}");
	}

}
