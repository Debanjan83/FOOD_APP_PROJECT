package master.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import master.dao.OrderDao;
import master.dto.OrderDto;

@WebServlet("/OrderServe")
public class OrderServe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

		HttpSession session = request.getSession(false);
		String username = (session != null) ? (String) session.getAttribute("uname") : null;

		if (username == null) {
			response.sendRedirect("Login.jsp");
			return;
		}

		String fid = request.getParameter("fid");
		int oqty = Integer.parseInt(request.getParameter("oqty"));

		OrderDto odto = new OrderDto();
		odto.setFid(fid);
		odto.setOqty(oqty);
		odto.setUname(username);

		OrderDao odao = new OrderDao();
		odao.insertData(odto);

		response.sendRedirect("Billing.jsp");
	}
}
