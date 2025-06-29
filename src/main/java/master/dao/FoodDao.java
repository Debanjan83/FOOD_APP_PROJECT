package master.dao;
import java.sql.*;
import master.dto.FoodDto;
import master.utilities.ConnectionFactory;
public class FoodDao
{
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String select_sql="select * from food";
	private String insert_sql="insert into food values(?,?,?)";
	private String delete_sql="delete from food where fid=?";
	private String update_sql="update food set fprice=?,fname=? where fid=?";
	public void insertData(FoodDto fdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps = cn.prepareStatement(insert_sql);
			ps.setString(1, fdto.getFid());
			ps.setString(2, fdto.getFname());
			ps.setDouble(3, fdto.getFprice());
			ps.executeUpdate();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void deleteData(FoodDto fdto)
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			ps = cn.prepareStatement(delete_sql);
			ps.setString(1, fdto.getFid());
			ps.executeUpdate();
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public void updateData(FoodDto fdto)
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/foodapp","root","Debanjan_83");
			ps = cn.prepareStatement(update_sql);
			ps.setString(3, fdto.getFid());
			ps.setString(2, fdto.getFname());
			ps.setDouble(1, fdto.getFprice());
			ps.executeUpdate();
		}
		catch(ClassNotFoundException ce)
		{
			ce.printStackTrace();  //check the line number where the exception occurs
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
	}
	public ResultSet getData()
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(select_sql);
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
	public ResultSet getFnameDetails(String fname)
	{
		String sql="select * from food where fname='"+fname+"'";
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(sql);
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
}
