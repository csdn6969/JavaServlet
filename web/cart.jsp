<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        img {
            max-width: 80px;
            display: block;
            margin: 0 auto;
        }
        .actions {
            text-align: center;
        }
        .actions button {
            padding: 8px 16px;
            background-color: #ff6347;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .actions button:hover {
            background-color: #e74c3c;
        }
        #total {
            margin-top: 20px;
            text-align: right;
        }
        #customer-info {
            margin-top: 20px;
        }
        #customer-info label {
            display: block;
            margin-bottom: 5px;
        }
        #customer-info input[type="text"],
        #customer-info input[type="email"],
        #customer-info button {
            width: 50%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        #customer-info button {
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        #customer-info button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h1>Giỏ Hàng của Bạn</h1>
    <table id="cart-table">
        <thead>
            <tr>
                <th>Ảnh</th>
                <th>Tên Sản Phẩm</th>
                <th>Giá</th>
                <th>Số Lượng</th>
                <th>Thao Tác</th> <!-- Thêm cột mới cho nút xóa -->
            </tr>
        </thead>
        <tbody>
            <!-- Dữ liệu giỏ hàng sẽ được chèn vào đây -->
        </tbody>
    </table>

    <!-- Thêm phần tính tổng tiền -->
    <div id="total">
        <h2>Tổng Tiền: <span id="total-amount"></span></h2>
    </div>

    <!-- Form thông tin khách hàng -->
    <div id="customer-info">
        <h2>Thông Tin Khách Hàng</h2>
        <form>
            <label for="name">Tên:</label>
            <input type="text" id="name" name="name"><br><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email"><br><br>
            <label for="address">Địa Chỉ:</label>
            <input type="text" id="address" name="address"><br><br>
            <button type="submit">Xác Nhận Mua Hàng</button>
        </form>
    </div>

    <script>
       document.addEventListener('DOMContentLoaded', function() {
    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    const cartTableBody = document.getElementById('cart-table').getElementsByTagName('tbody')[0];
    let totalAmount = 0;

    cart.forEach(item => {
        let row = cartTableBody.insertRow();

        let cellImage = row.insertCell(0);
        let cellName = row.insertCell(1);
        let cellPrice = row.insertCell(2);
        let cellQuantity = row.insertCell(3);
        let cellActions = row.insertCell(4); // Thêm ô mới cho nút xóa

        // Thêm ảnh sản phẩm
        let img = document.createElement('img');
        img.src = item.Image;
        cellImage.appendChild(img);

        // Thêm tên sản phẩm
        cellName.textContent = item.Name;

        // Thêm giá sản phẩm
        cellPrice.textContent = item.Price;

        // Thêm số lượng sản phẩm
        cellQuantity.textContent = item.quantity;

        // Thêm nút xóa
        let deleteButton = document.createElement('button');
        deleteButton.textContent = 'Xóa';
        deleteButton.addEventListener('click', function() {
            // Xóa sản phẩm khỏi giỏ hàng và cập nhật lại giao diện
            cart.splice(cart.indexOf(item), 1);
            localStorage.setItem('cart', JSON.stringify(cart));
            location.reload(); // Tải lại trang để cập nhật giao diện
        });
        cellActions.appendChild(deleteButton);

        // Tính tổng tiền
        totalAmount += parseFloat((item.Price).replace('.', '').replace('₫', '')) * item.quantity;
    });

    // Chuyển đổi tổng tiền sang chuỗi với định dạng tiền tệ và dấu phân cách hàng nghìn
    const formattedTotalAmount = totalAmount.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });

    // Hiển thị tổng tiền
    document.getElementById('total-amount').textContent = formattedTotalAmount;
});    </script>
</body>
</html>
