package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FormularioServlet")
public class FormularioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FormularioServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre = request.getParameter("nombre");	// Extraer datos enviados en el formulario hacia el servlet.
		String apellido = request.getParameter("apellido");
		String rut = request.getParameter("rut");
		String tecnologias[] = request.getParameterValues("tecnologia");	// Obtener datos de un listado de datos (checkbox, radiobutton, etc)
		
		System.out.println(nombre + ' ' + apellido + ' ' + rut + ' ' + tecnologias);	// A este nivel el log se imprime en la consola del servidor.
		
		PrintWriter out = response.getWriter();	// Preparar objeto de salida.
		out.print("<html>");
		out.print("<body>");
		out.print("<table border='1'>");
		
		out.print("<tr>");
		out.print("<td>");
		out.print("Nombre: ");
		out.print("</td>");
		out.print("<td>");
		out.print(nombre);
		out.print("</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>");
		out.print("Apellido: ");
		out.print("</td>");
		out.print("<td>");
		out.print(apellido);
		out.print("</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>");
		out.print("Rut: ");
		out.print("</td>");
		out.print("<td>");
		out.print(rut);
		out.print("</td>");
		out.print("</tr>");
		
		out.print("<tr>");
		out.print("<td>");
		out.print("Tecnologias: ");
		out.print("</td>");
		out.print("<td>");
		for (String tecno : tecnologias) {
			out.print(tecno);
			out.println();
		}
		out.print("</td>");
		out.print("</tr>");

		out.print("<br>");
		out.print(request.getMethod());
		Enumeration<String> headers = request.getHeaderNames();
		while(headers.hasMoreElements()) {
			String header = (String) headers.nextElement();
			out.print("<br><strong>" + header + ":</strong>");
			out.print(request.getHeader(header));
		}
		
		out.print("</body>");
		out.print("</html>");
	}

}
