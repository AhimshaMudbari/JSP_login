package login_Servlet;

import java.io.IOException;
//import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("uname");
		String password=request.getParameter("password");
//		PrintWriter out = response.getWriter();
		if(uname.equals("Ahimsha")&& password.equals("admin")) {
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);
			response.sendRedirect("welcomePage.jsp");
		}
		else{
			response.sendRedirect("login.jsp");
		}
		
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


}
