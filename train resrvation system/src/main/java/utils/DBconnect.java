package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnect {
public static Connection getConnection() throws ClassNotFoundException, SQLException {
		
		String username = "root";
		String pass = "123456";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/railxpress?characterEncoding=utf8",username,pass);
		
		return conn;
	}
}
