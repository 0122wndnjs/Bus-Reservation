package com.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Types;

public class ConnectionClass {

	public static final String URL = "jdbc:oracle:thin:@oracle.csinzvj5kdiy.us-east-2.rds.amazonaws.com:1521:orcl";
	public static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	public static final String USERNAME = "admin";
	public static final String PASSWORD = "123456789";
	public static Connection con = null;

	public static Connection getConnection() {
		if(con!=null) {
			return con;
		} else {
			try {
				Class.forName(DRIVER);
				con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} catch (Exception e) {
				e.printStackTrace();
			}
		return con;
		}
	}
}
