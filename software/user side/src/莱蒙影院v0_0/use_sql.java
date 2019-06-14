/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package 莱蒙影院v0_0;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author 帅志鹏
 */

public class use_sql {

    public static final String URL = "jdbc:mysql://localhost:3306/movie_ticketing";
    public static final String USER = "root";
    public static final String PASSWORD = "1234";
    private Connection conn;
    public static Connection getConn() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
    public void conn(String a1) throws Exception {
        //1.加载驱动程序
        conn=getConn();
        Statement stmt = conn.createStatement();
        String s1="select * from film";
        ResultSet rs = stmt.executeQuery(s1);
       // ResultSet ks = stmt.executeUpdate("SELECT * FROM film");
        //如果有数据，rs.next()返回true
        while(rs.next()){
            String mu=rs.getString("fname");
            String ma=rs.getString("ftime");
            System.out.println(mu);
            System.out.println(ma);
        }
    }
    public void idcreate(String g) throws SQLException, ClassNotFoundException{
        conn=getConn();
        Statement stmt = conn.createStatement();
        ResultSet ts=stmt.executeQuery(g);
        
        
    }
    public void connect() throws Exception{
        
    }
    public int create(String g1,String g2) throws ClassNotFoundException, SQLException{//注册用户
        //随机生成id
        final double d = Math.random();
        final int b=(int)(d*100000);  
        String b2=String.valueOf(b);
        String c1="insert into app_user values("+b2+",'"+g1+"','"+g2+"');";
        System.out.println(c1);
        Statement stmt =getConn().createStatement();
        stmt.executeUpdate(c1);
        return b;
    }
    public int select(String a,String b) throws ClassNotFoundException, SQLException{//对照用户名和密码
        Statement stmt = getConn().createStatement();
        String g="select * from app_user where ID = "+a;
        ResultSet ts=stmt.executeQuery(g);
        while (ts.next()) {
        String mu = ts.getString("password");
        System.out.println(mu);
        if(mu.equals(b))
            return 1; //用户名和密码都正确     
        }
        return 0;
    }
    public void upadte(String f1,String f2,String f3){
        
    }
    
    
}