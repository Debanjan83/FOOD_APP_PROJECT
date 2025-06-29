package master.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import master.dao.FoodDao;
import master.dto.FoodDto;
@WebServlet("/FoodDelServe")
public class FoodDelServe extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		String fid=request.getParameter("fid");
		FoodDto fdto=new FoodDto();
		fdto.setFid(fid);
		FoodDao fdao=new FoodDao();
		fdao.deleteData(fdto);
		response.sendRedirect("FoodList.jsp");
	}
}