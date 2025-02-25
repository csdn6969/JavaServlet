<%-- 
    Document   : search
    Created on : 13 May 2024, 13:10:19
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/search.css">
    </head>
    <body>
        <header>
        <h1 class="logo"><a href="/"><img src="https://theme.hstatic.net/200000637319/1000990988/14/logo.png?v=566"
                    alt="logo"></a></h1>
        <nav class="search">
            <form action="/search">
                <input type="text" placeholder="Tìm kiếm tại đây...">
            </form>
            <button class="toggle-search">Search</button>
        </nav>
        <nav class="user-cart">
            <div class="login">
                <a href="html/Login.html"><i class='fa fa-user' style='font-size:24px'></i><span>Login</span></a>
            </div>
            <div class="cart">
                <a href="./html/cart.html"><i class="fa fa-shopping-bag"></i><span>Giỏ hàng</span></a>
            </div>
        </nav>
    </header>
    <div class="cnt-res">
        <h3>Tìm kiếm</h3>
        <P>Có 122 sản phẩm cho tìm kiếm</P>
    </div>
    <div class="box-rs">
        <div class="title-rs">
            <p>Kết quả tìm kiếm cho <span>"logitech"</span></p>
        </div>
        <div class="list-rs">
            <c:forEach items="${list}" var="x">
                <div class="rs-item">
                <div class="box-img">
                    <a href="#"> <img
                       src="${x.img}"></a>
                </div>
                <div class="manufacturer">
                    <h5>${x.brand}</h5>
                </div>
                <div class="name">
                    <h5>${x.name}</h5>
                </div>
                <div class="price">
                    <p>${x.price}</p>
                </div>
                <div class="add-to-cart">
                    <a href="./html/cart.html"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
    <footer>
        <div class="box-footer">
            <div class="about">
                <h3>Về Playzone</h3>
                <h6>Playzone là một trong những shop gaming gear chuyên nghiệp đầu tiên xuất hiện tại Việt Nam. Chúng
                    tôi luôn luôn học hỏi, thay đổi về cả kiến thức chuyên môn và cách thức làm việc để phục vụ khách
                    hàng tốt nhất có thể.</h6>
                <div class="social">
                    <div class="social-item"><a href="/"><i class="fa fa-facebook-f"></i></a></i></div>
                    <div class="social-item"><a href="#"><i class="fa fa-twitter"></i></a></div>
                    <div class="social-item"><a href="#"><i class="fa fa-instagram"></i></a></div>
                    <div class="social-item"><a href="#"><i class="fa fa-google"></i></a></div>
                    <div class="social-item"><a href="#"><i class="fa fa-youtube"></i></a></div>
                </div>
            </div>
            <div class="contact">
                <h3>Thông tin liên hệ</h3>
                <ul>
                    <li> <span><i class="fa fa-map-marker"></i></span> kiot số 7, 210 Lê Trọng Tấn, Thanh Xuân, Hà Nội
                    </li>
                    <li><span><i class="fa fa-phone"></i></span> 0964.246.999</li>
                    <li><span><i class="fa fa-envelope"></i></span> info@playzone.vn</li>
                </ul>
            </div>
            <div class="support">
                <h3>Hỗ trợ khách hàng</h3>
                <ul>
                    <li><a href="#">Tìm kiếm</a></li>
                    <li><a href="#">Giới thiệu</a></li>
                    <li><a href="#">Chính sách đổi trả</a></li>
                    <li><a href="#">Chính sách bảo mật</a></li>
                    <li><a href="#">Hướng dẫn thanh toán</a></li>
                    <li><a href="#">Điều khoản dịch vụ</a></li>
                    <li><a href="#">Liên hệ</a></li>
                </ul>
            </div>
            <div class="link">
                <h3>Liên kết</h3>
                <ul>
                    <li><a href="#">Sản phẩm khuyến mãi</a></li>
                    <li><a href="#">Sản phẩm nổi bật</a></li>
                    <li><a href="#">Tất cả sản phẩm</a></li>
                </ul>
            </div>
            <div class="policy">
                <h3>Chính sách</h3>
            </div>
        </div>
        <div class="ft-footer">
            <p>Copyright © 2024 5 Anh em sieu nhan.</p>
        </div>
    </footer>
    </body>
</html>
