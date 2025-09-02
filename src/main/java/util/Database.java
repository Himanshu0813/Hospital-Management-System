package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
    // Oracle connection details
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe"; 
    // Replace xe with your Oracle SID (or service name if using a service)
    private static final String USER = "c##raj";   // Or your Oracle username
    private static final String PASSWORD = "raj"; // Your Oracle password

    public static Connection getConnection() {
        try {
            // Oracle JDBC driver
            Class.forName("oracle.jdbc.driver.OracleDriver"); 
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
