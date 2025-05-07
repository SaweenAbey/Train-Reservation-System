package com.Railxpress.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnect {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
			String root="root";
			String pwd="123456";
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/raill?characterEncoding=utf8",root,pwd);
			
			return con;
	}
}
