package master.servlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import master.dao.FoodDao;
import master.dto.FoodDto;
@WebServlet("/FoodUpdServe")
public class FoodUpdServe extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		response.setContentType("text/html");
		String fid=request.getParameter("fid");
		String fname=request.getParameter("fname");
		double fprice=Double.parseDouble(request.getParameter("fprice"));
		FoodDto fdto=new FoodDto();
		fdto.setFid(fid);
		fdto.setFname(fname);
		fdto.setFprice(fprice);
		FoodDao fdao=new FoodDao();
		fdao.updateData(fdto);
		response.sendRedirect("FoodList.jsp");
	}
}