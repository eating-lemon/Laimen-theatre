/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package test.dianying;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.sun.imageio.plugins.common.ImageUtil;
import java.io.*;
import java.sql.*;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 *
 * @author 帅志鹏
 */
public class ip {
    public static void readImage2DB() {
        String path = "D:/1.png";
        Connection conn = null;
        PreparedStatement ps = null;
        FileInputStream in = null;
        try {
            in = pictureint.readImage(path);
            conn = (Connection) DBConnection.getConn();
            String sql = "insert into photo (id,name,photo)values(?,?,?)";
            ps = (PreparedStatement) conn.prepareStatement(sql);
            ps.setInt(1, 1);
            ps.setString(2, "Tom");
            ps.setBinaryStream(3, in, in.available());
            int count = ps.executeUpdate();
            if (count > 0) {
                System.out.println("插入成功！");
            } else {
                System.out.println("插入失败！");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeConn(conn);
            if (null != ps) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
 
    }
    public static void readDB2Image() {
        String targetPath = "D:/image/1.png";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = (Connection) DBConnection.getConn();
            String sql = "select * from photo where id =?";
            ps = (PreparedStatement) conn.prepareStatement(sql);
            ps.setInt(1, 1);
            rs = ps.executeQuery();
            while (rs.next()) {
                InputStream in = rs.getBinaryStream("photo");
                pictureint.readBin2Image(in, targetPath);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBConnection.closeConn(conn);
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
 
        }
    }
   
}
    

