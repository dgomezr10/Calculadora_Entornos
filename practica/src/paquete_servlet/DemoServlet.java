package paquete_servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class DemoServlet extends HttpServlet{

	public void doGet (HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{
		res.setContentType("text/html");
		PrintWriter pw = res.getWriter();
		
		// writing html in the stream
		
		pw.println("<html><body>");
		pw.println("Welcome to servlet");
		pw.println("</body></html>");
		
		// closing the stream
		pw.close();
	}
}
