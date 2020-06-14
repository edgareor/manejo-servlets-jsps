package web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletTestCookies")
public class ServletTestCookies extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Contador de visitas de usuario
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Suponemos siempre que es un usuario nuevo.
		int contador = 0;
		
		// Obtenemos arreglo de cookies de la peticion.
		Cookie[] cookies = request.getCookies();
		
		// Validamos que no exista cookie de visitante recurrente
		if (cookies != null) {
			for (Cookie co: cookies) {
				if((co.getName().equals("contador"))) {
					contador = Integer.valueOf(co.getValue());
				}
			}
		}
		
		// Si es primera vez esta bien que el contador se incremente a 1, si no reiterado, se incrementara en el numero correspondiente
		contador++;
		
		Cookie co = new Cookie("contador", String.valueOf(contador));
		co.setMaxAge(3600);	// Establecer periodo de vencimiento de la cookie, en segundos.
		
		response.addCookie(co);
		response.setContentType("application/json");
		PrintWriter out = response.getWriter();
		out.print("{\"contador\":" + contador + "}");
}
	
	// Validar usuario recurrente con Cookies
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//			// Suponemos siempre que es un usuario nuevo.
//			boolean nuevoUsuario = true;
//			
//			// Obtenemos arreglo de cookies de la peticion.
//			Cookie[] cookies = request.getCookies();
//			
//			// Validamos que no exista cookie de visitante recurrente
//			if (cookies != null) {
//				for (Cookie co: cookies) {
//					if((co.getName().equals("visitanteRecurrente")) && (co.getValue().equals("si"))) {
//						nuevoUsuario = false;
//						break;
//					}
//				}
//			}
//			
//			String mensaje = null;
//			if (nuevoUsuario) { // Si no existe cookie de visitante recurrente, se procede a agregarla
//				Cookie co = new Cookie("visitanteRecurrente", "si");
//				response.addCookie(co);
//				mensaje = "Gracias por visitar nuestra pagina por primera vez";
//			} else {
//				mensaje = "Gracias por visitar nuestra pagina nuevamente";
//			}
//			
//			response.setContentType("application/json");
//			PrintWriter out = response.getWriter();
//			out.print(mensaje);
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}
