package master.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import master.dao.RegisterDao;
@WebServlet("/LoginServe")
public class LoginServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");

		RegisterDao rdao = new RegisterDao();
		boolean flag = rdao.checkLogin(uname, pass);

		if ("admin".equals(uname) && "admin".equals(pass)) {
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);
			response.sendRedirect("Nav.jsp");
		} else if (flag) {
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);
			response.sendRedirect("NavClient.jsp");
		} else {
			response.sendRedirect("Error.jsp");
		}
	}
}
