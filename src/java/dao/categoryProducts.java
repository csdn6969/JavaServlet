/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;
import context.DBContext;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import entity.categoryProduct;

/**
 *
 * @author Admin
 */
public class categoryProducts {
        public static List<categoryProduct> getProductsByCategory(String categoryName) {
        List<categoryProduct> productList = new ArrayList<>();

        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet rs = null;
        try {
      
            connection = new DBContext().getConnection();

            // Chuẩn bị truy vấn SQL
            String query = "SELECT * FROM Products p JOIN Categories c ON p.category_id = c.category_id WHERE c.category_name = ?";
            statement = connection.prepareStatement(query);
            statement.setString(1, categoryName);

            // Thực thi truy vấn
            rs = statement.executeQuery();

            // Lặp qua kết quả và thêm sản phẩm vào danh sách
            int cnt = 0;
            while (rs.next()) {
                if(cnt < 10){
                    productList.add(new categoryProduct(rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5)));
                }
                cnt++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Đóng các đối tượng ResultSet, PreparedStatement và Connection
            try {
                if (rs != null) {
                   rs.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return productList;
    }
}
