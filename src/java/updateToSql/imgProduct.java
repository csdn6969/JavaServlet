package updateToSql;
import context.DBContext;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class imgProduct {

    public static void main(String[] args) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "INSERT INTO Images (name, image) VALUES (?, ?)";
        String imagePath = "C:\\Users\\Admin\\Pictures\\nature";

        try {
            // Lấy kết nối tới cơ sở dữ liệu
            conn = new DBContext().getConnection();

            // Đọc dữ liệu của tệp ảnh thành một mảng byte
            File imageFile = new File(imagePath);
            FileInputStream fis = new FileInputStream(imageFile);
            byte[] imageData = new byte[(int) imageFile.length()];
            fis.read(imageData);
            fis.close();

            // Tạo một đối tượng PreparedStatement với câu lệnh SQL
            ps = conn.prepareStatement(query);

            // Thiết lập các tham số cho câu lệnh INSERT
            ps.setString(1, "Chuột a4"); // Tên của ảnh
            ps.setBytes(2, imageData);   // Dữ liệu của ảnh dưới dạng mảng byte

            // Thực thi câu lệnh INSERT để chèn dữ liệu ảnh vào cơ sở dữ liệu
            int rowsInserted = ps.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("Đã chèn ảnh thành công vào cơ sở dữ liệu.");
            } else {
                System.out.println("Không thể chèn ảnh vào cơ sở dữ liệu.");
            }

        } catch (SQLException | IOException e) {
            e.printStackTrace();
        } finally {
            // Đóng các tài nguyên
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
