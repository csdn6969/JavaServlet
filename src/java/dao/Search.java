/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.prodetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class Search {
     Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<prodetails> getSearch(String name) {
        List<prodetails> list = new ArrayList<>();
          String query = "SELECT * FROM products WHERE product_name LIKE ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
             ps.setString(1, "%" + name + "%");
             
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new prodetails(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng ResultSet
            try {
                if (rs != null) rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            // Đóng PreparedStatement
            try {
                if (ps != null) ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            // Đóng Connection
            try {
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return list;
    }
}
