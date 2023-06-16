package dbUtils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection 
{
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Connection con=null;
		String url="jdbc:oracle:thin:@10.200.20.110:1521/orcl.wipro.com";
		String user="team3";
		String password="team3";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		try
		{
			con=DriverManager.getConnection(url, user, password);
			System.out.println("Connection established");
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		return con;
	}

}
