package jdbc_Login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginPage")
public class LoginPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("uname");
		String password= request.getParameter("password");
		LoginDao dao= new LoginDao();
		try {
			if(dao.checkStatus(uname, password)) {
				HttpSession session = request.getSession();
				session.setAttribute("uname", uname);
				response.sendRedirect("Home.jsp");
			}
			else {
				response.sendRedirect("Login.jsp");
			}
		} catch (ClassNotFoundException | SQLException | IOException e) {
			e.printStackTrace();
		}

		
//		doGet(request, response);
	}

}
