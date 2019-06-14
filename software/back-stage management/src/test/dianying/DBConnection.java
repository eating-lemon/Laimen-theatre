/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test.dianying;

import java.sql.*;

/**
 *
 * @author DELL
 */
public class DBConnection {
    
    public static final String URL = "jdbc:mysql://localhost:3306/movie_ticketing";
    public static final String USER = "root";
    public static final String PASSWORD = "1234";
    private Connection conn;
    
    public void zenjia(String a1,String a2) throws SQLException, ClassNotFoundException{
        
        conn = DriverManager.getConnection(URL, USER, PASSWORD);
    }
    public static Connection getConn() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
     public static void closeConn(Connection conn) {
        if (null != conn) {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("关闭连接失败！");
                e.printStackTrace();
            }
        }
    }
    
    
}
