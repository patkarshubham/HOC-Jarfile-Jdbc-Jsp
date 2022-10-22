

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection{
	public static Connection con=null;
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/college","root","");			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return con;
	}
	
}