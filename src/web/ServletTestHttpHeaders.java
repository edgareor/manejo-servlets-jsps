package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ServletTestHttpHeaders")
public class ServletTestHttpHeaders extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// Refrescar pagina cada un segundo
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json");
		response.setHeader("refresh", "1");			// Refrescar la pagina cada 1 segundo.
		PrintWriter out = response.getWriter();
		Date fecha = new Date();				// Imprimir fecha en pagina
		out.print("{\"fecha\":" + fecha + "}"); // {"fecha":Thu Jun 04 17:24:58 CLT 2020}
	}
	
	// Generar documento Excel desde Servlet
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		response.setContentType("application/vnd.ms-excel");
//		response.setHeader("Content-Disposition", "attacment;filename=testServlet.xls");
//		PrintWriter out = response.getWriter();
//		out.println("\tSuma");				// cada out.println() indica una fila de la hoja.
//		out.println("\t20");				// Cada \t, indica un saldo de celda, o salto de columna en una misma fila
//		out.println("\t30");
//		out.println("Total\t=SUM(B2:B3)");
//	}
	
	// Descargar archivo de tipo MIME especificado
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		response.setContentType("application/json");
//		response.setHeader("Content-Disposition", "attacment;filename=testServlet.json");	// Indicar que el contenido se va a descargar y tendra dicho nombre.
//		PrintWriter out = response.getWriter();
//		out.print("{\"key\":\"value\", \"key2\":\"value2\"}");						// Contenido que se descargara
//	}
	
	// Manejo de  codigos de estado HTTP para respuestas
	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//			
//		int x = 0;
//		if (x==1) {
//			response.setContentType("application/json");
//			PrintWriter out = response.getWriter();
//			out.print("{'key':'value', 'key2':'value2'}");
//		} else {
//			//response.sendError(404);											// Ejemplo 1, con numeros.
//			response.sendError(response.SC_BAD_REQUEST, "Mensaje a mostrar del error junto con el codigo de estado");	// Ejemplo con constantes, todas comienzan por SC y cada una hace referencia a un codido de estado en especifico.
//		}
//	  }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
