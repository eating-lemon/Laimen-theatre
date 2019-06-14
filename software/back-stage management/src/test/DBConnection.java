/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

 public class DBConnection{
    
      public static Connection getConnection() throws ClassNotFoundException {  
     // JDBC 驱动名及数据库 URL
     String JDBC_DRIVER = "com.mysql.jdbc.Driver";
     String URL = "jdbc:mysql://localhost:3306/movie_ticketing";
     String USER = "root";
     String PASSWORD = "1234";
     Connection conn = null;  

            //与数据库建立连接  
             Class.forName(JDBC_DRIVER);
         try {
             conn=  (Connection) DriverManager.getConnection(URL,USER,PASSWORD);
            System.out.println("已经连接数据库");

         } catch (SQLException ex) {
             Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
         } 



        return conn;  
    }  

}
 
            
    

      