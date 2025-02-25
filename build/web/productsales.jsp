<%-- 
    Document   : productsales
    Created on : 22 May 2024, 22:12:36
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/receive-news.css ">
        <link rel="stylesheet" href="css/collection.css">
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap');

        body{
            background-color: #f5f5f5;
            font-family: "Montserrat", sans-serif;
        }
        .breadcrumb-shop {
            padding: 0 20px;
        }
        .breadcrumb {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            padding: .75rem 1rem;
            margin-bottom: 1rem;
            list-style: none;
            background-color: #e9ecef;
            border-radius: .25rem;
        }
        .breadcrumb-list .breadcrumb-arrows > li + li:before {
            padding: 0 3px;
            color: #fff;
            font-family: 'FontAwesome';
            content: "/\00a0";
            font-weight: bold;

        }
        .breadcrumb-list .breadcrumb-arrows {
            font-size: 13px;
            padding: 9px 0;
            background: transparent;
            border-radius: 0;
            margin: 0;
            list-style: none;
        }
        .wrapper-mainCollection{
            padding: 0 0 0 20px;
        }
        .collection-listProduct{
            display: grid;
            grid-template-columns: 3fr 9fr;
        }
        .collection-filter{
            display: flex;
            flex-direction: column;
            gap: 20px;
        }
        .sort-by-supplier{
            background-color: #fff;
            border-radius: 6px;
        }
        .title{
            position: relative;
            width: 100%;
            cursor: pointer;
            border-bottom: 1px solid #ccc;
            padding: 10px 0 ;
        }
        .title span{
            font-size: 16px;
            font-weight: 600;
            color: #111;
        }
        .title::after{
            content: " ";
            position: absolute;
            top: 0;
            bottom: 0;
            right: 13px;
            margin: auto;
            height: 8px;
            width: 8px;
            border-color: #666;
            border-style: solid;
            border-width: 0 1px 1px 0;
            transform: translateY(-50%) rotate(45deg);
            transition: transform .2s ease;
        }
        .check-box{
            height: auto;
            overflow: hidden;
        }
        .checkbox-list li {
            display: flex;
            gap: 20px;
            cursor: pointer;
            padding: 20px 10px;
        }
        .sort-by-price{
            border-radius: 6px;
            background-color: #fff;
        }
        @keyframes hideAnimation {
            0%{
                height: 250px;
            }
            100%{
                height: 0px;
            }
        }
        .hide{
            animation-name: hideAnimation; /* Sử dụng keyframes hideAnimation */
            animation-duration: 0.3s; /* Thời gian thực hiện animation là 0.3s */
            animation-timing-function: ease; /* Hàm timing là ease (mượt mà) */
            animation-fill-mode: forwards;
        }
        .collection-content{
            padding: 0 0 0 20px;
        }
        .banner-collection{
            width: 100%;
        }
        .banner-collection img{
            width: 100%;
            object-fit: cover;
        }
        .list-sp {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .ps-item {
            width: 20%;
            height: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .ps-item:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);

        }

        .box-img-p {
            width: 100%;
            height: 200px;
        }

        .box-img-p img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
        .manufacturer-p {
            padding-left: 2px;
        }

        .manufacturer-p h5 {
            font-size: 10px;
            text-transform: uppercase;
            color: #b6b8bb;
        }

        .name-p {
            padding-left: 2px;
        }

        .name-p h5 {
            font-size: 15px;
        }

        .price {
            display: flex;
            padding: 0 2px;
            justify-content: space-between;
        }

        .sale {
            padding: 2px 5px;
            background: red;
            color: #fff;
            border-radius: 4px;
            font-size: 12px;
        }

        .add-to-cart a {
            text-decoration: none;
        }

        .add-to-cart span {
            padding-right: 10px;
        }


    </style>
    <body>
        <header>
            <h1 class="logo"><a href="home"><img src="https://theme.hstatic.net/200000637319/1000990988/14/logo.png?v=566"
                                                 alt="logo"></a></h1>
            <nav class="search">
                <form action="/search">
                    <input type="text" placeholder="Tìm kiếm tại đây...">
                </form>
                <button class="toggle-search">Search</button>
            </nav>
            <nav class="user-cart">
                <div class="login">
                    <a href="login.jsp"><i class='fa fa-user' style='font-size:24px'></i><span>Login</span></a>
                </div>
                <div class="cart">
                    <a href="cart.jsp"><i class="fa fa-shopping-bag"></i><span>Giỏ hàng</span></a>
                </div>
            </nav>
        </header>
        <div class="wrapper-mainCollection">
            <div class="collection-listProduct">
                <div class="collection-filter">
                    <div class="sort-by-supplier">
                        <div class="title">
                            <span>Nhà cung cấp</span>
                        </div>
                        <div class="check-box">
                            <ul class="checkbox-list">

                                <li>
                                    <input type="checkbox" id="data-brand-p1" value="Logitech" name="brand-filter"
                                           data-vendor="(vendor:product contains Razer)">
                                    <label for="data-brand-p1">Logitech</label>
                                </li>

                                <li>
                                    <input type="checkbox" id="data-brand-p2" value="E-DRA" name="brand-filter"
                                           data-vendor="(vendor:product contains Logitech)">
                                    <label for="data-brand-p2">E-DRA</label>
                                </li>

                                <li class="">
                                    <input type="checkbox" id="data-brand-p3" value="Glorious" name="brand-filter"
                                           data-vendor="(vendor:product contains DXRacer)">
                                    <label for="data-brand-p3">Glorious</label>
                                </li>

                                <li>
                                    <input type="checkbox" id="data-brand-p4" value="ASUS" name="brand-filter"
                                           data-vendor="(vendor:product contains G.Skill)">
                                    <label for="data-brand-p4">ASUS</label>
                                </li>
                                <li>
                                    <input type="checkbox" id="data-brand-p4" value="ACER" name="brand-filter"
                                           data-vendor="(vendor:product contains G.Skill)">
                                    <label for="data-brand-p4">ACER</label>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="sort-by-price">
                        <div class="title">
                            <span>Lọc giá</span>
                        </div>
                        <div class="check-box">
                            <ul class="checkbox-list">
                                <li>
                                    <input type="checkbox" id="data-price-p1" value="below-1000000" name="price-filter">
                                    <label for="data-price-p1">Dưới 1.000.000₫</label>
                                </li>
                                <li>
                                    <input type="checkbox" id="data-price-p2" value="1000000-2000000" name="price-filter">
                                    <label for="data-price-p2">Từ 1.000.000₫- 2.000.000₫</label>
                                </li>
                                <li>
                                    <input type="checkbox" id="data-price-p3" value="2000000-4000000" name="price-filter">
                                    <label for="data-price-p3">Từ 2.000.000₫-4.000.000₫</label>
                                </li>
                                <li>
                                    <input type="checkbox" id="data-price-p4" value="above-4000000" name="price-filter">
                                    <label for="data-price-p4">Từ 4.000.000₫ trở lên</label>
                                </li>
                            </ul>  
                        </div>
                    </div>
                </div>
                <div class="collection-content">
                    <div class="banner-collection">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/collection_banner.jpg?v=635" alt="">
                    </div>
                    <div class="collection-products">
                        <div class="title-sp">
                            <p>Top sản phẩm bán chạy</p>
                        </div>
                        <div class="list-sp">
                            <c:forEach items="${list}" var="x">
                                <div class="ps-item">
                                    <div class="box-img-p">
                                        <a href="details.jsp"> <img
                                                src="${x.img}"
                                                alt="Product 1" class="product-image" onmouseout="changeImage(this)"
                                                onmouseover="resetImage(this)"></a>
                                    </div>
                                    <div class="manufacturer-p">
                                        <h5>${x.brand}</h5>
                                    </div>
                                    <div class="name-p">
                                        <h5>${x.name}</h5>
                                    </div>
                                    <div class="price">
                                        <p>${x.price}</p>
                                        <p class="sale">
                                            ${x.sale}
                                        </p>
                                    </div>
                                    <div class="add-to-cart">
                                        <a href="cart.jsp"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                </div>
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
