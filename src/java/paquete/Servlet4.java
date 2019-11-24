package paquete;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Servlet4 extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request,HttpServletResponse response) 
            throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		response.sendRedirect("/Diagramador/index.html");
		HttpSession session = request.getSession(false);
		// session.setAttribute("user", null);
		session.removeAttribute("username");
		//session.getMaxInactiveInterval();
	}
}