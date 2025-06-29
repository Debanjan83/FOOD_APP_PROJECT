package master.dao;
import java.sql.*;
import master.dto.OrderDto;
import master.utilities.ConnectionFactory;
public class OrderDao
{
	private Connection cn=null;
	private Statement st=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	private String insert_sql = "INSERT INTO order_details(fid, oqty, uname) VALUES (?, ?, ?)";
	private String select_sql="select * from order_details";
	private String billing_sql="SELECT O.OID,O.ODT,F.FID,F.FNAME,O.OQTY,F.FPRICE,(O.OQTY*F.FPRICE)*.12 GST,(O.OQTY*F.FPRICE*.12)+(O.OQTY*F.FPRICE) TOTAL_PRICE FROM FOOD F, ORDER_DETAILS O WHERE F.FID=O.FID";
	public void insertData(OrderDto odto) {
	    try {
	        ConnectionFactory con = new ConnectionFactory();
	        cn = con.getConn();
	        ps = cn.prepareStatement(insert_sql);
	        ps.setString(1, odto.getFid());
	        ps.setInt(2, odto.getOqty());
	        ps.setString(3, odto.getUname());
	        ps.executeUpdate();
	    } catch (SQLException se) {
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
	public ResultSet getBillingData()
	{
		try
		{
			ConnectionFactory con=new ConnectionFactory();
			cn=con.getConn();
			st=cn.createStatement();
			rs=st.executeQuery(billing_sql);
		}
		catch(SQLException se)
		{
			se.printStackTrace();
		}
		return rs;
	}
}
