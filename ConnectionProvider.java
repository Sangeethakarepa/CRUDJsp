package com.sangeetha.dbconnection;

	import java.sql.Connection;
	import java.sql.DriverManager;
	import java.sql.SQLException;

	public class ConnectionProvider {

	    private static Connection con = null;

	    public static Connection getConnection() {
	        if (con != null)
	            return con;
	        else {
	            try {
	                
	                String driver = "oracle.jdbc.driver.OracleDriver";
	                String url = "jdbc:oracle:thin:@localhost:1521:XE";
	                String user = "system";
	                String password = "tiger";
	                Class.forName(driver);
	                con = DriverManager.getConnection(url, user, password);
	            } catch (ClassNotFoundException cnfe) {
	                System.out.println(cnfe);
	            } catch (SQLException sqe) {
	                System.out.println(sqe);
	            } 
	            return con;
	        }

	    }
}
