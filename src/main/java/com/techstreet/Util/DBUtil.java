package com.techstreet.Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {

	private static final String URL      = "jdbc:postgresql://localhost/techstreet";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "root@123";
	
	static
	{
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(URL,USERNAME,PASSWORD);
	}
}
