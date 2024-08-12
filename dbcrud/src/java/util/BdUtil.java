package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class BdUtil {

    private static String url = "jdbc:mysql://localhost:3306/bdokay";
    private static String user = "root";
    private static String password = "jee59";
    private static String driver = "com.mysql.cj.jdbc.Driver";
    
    private static Connection con = null;
    
    public static Connection getCon(){
        
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BdUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        try {
            con = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            Logger.getLogger(BdUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return con;
    }
}
