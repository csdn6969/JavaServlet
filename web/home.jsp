<%-- 
    Document   : testlan1
    Created on : 13 May 2024, 01:53:43
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/slider.css">
        <link rel="stylesheet" href="css/receive-news.css">
    </head>
    <body>
        <header>
            <h1 class="logo"><a href="home"><img src="https://theme.hstatic.net/200000637319/1000990988/14/logo.png?v=566"
                                                 alt="logo"></a></h1>
            <nav class="search">
                <form class="search-form" onsubmit="return false;">
                    <input type="text" id="search-input" class="search-input" placeholder="Tìm kiếm tại đây...">
                </form>
                <button type="button" class="toggle-search">Search</button>
            </nav>

            <script>
                document.querySelector('.toggle-search').addEventListener('click', function () {
                    const searchInput = document.querySelector('.search-input').value;
                    if (searchInput) {
                        const encodedSearchInput = encodeURIComponent(searchInput);
                        window.location.href = 'search?name=' + encodedSearchInput;
                    } else {
                        alert('Vui lòng nhập từ khóa tìm kiếm');
                    }
                });
            </script>
            <nav class="user-cart">
                <div class="login">
                    <a href="login.jsp"><i class='fa fa-user' style='font-size:24px'></i><span>Login</span></a>
                </div>
                <div class="cart">
                    <a href="cart.jsp"><i class="fa fa-shopping-bag"></i><span>Giỏ hàng</span></a>
                </div>
            </nav>
        </header>
        <div class="header-bottom">
            <div class="row">
                <div class="col-lg-3 sidebar-content">
                    <div class="title-menu">
                        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" x="0" y="0"
                             viewBox="0 0 60.123 60.123" style="enable-background:new 0 0 512 512" xml:space="preserve">
                        <g>
                        <g xmlns="http://www.w3.org/2000/svg">
                        <path
                            d="M57.124,51.893H16.92c-1.657,0-3-1.343-3-3s1.343-3,3-3h40.203c1.657,0,3,1.343,3,3S58.781,51.893,57.124,51.893z">
                        </path>
                        <path
                            d="M57.124,33.062H16.92c-1.657,0-3-1.343-3-3s1.343-3,3-3h40.203c1.657,0,3,1.343,3,3   C60.124,31.719,58.781,33.062,57.124,33.062z">
                        </path>
                        <path
                            d="M57.124,14.231H16.92c-1.657,0-3-1.343-3-3s1.343-3,3-3h40.203c1.657,0,3,1.343,3,3S58.781,14.231,57.124,14.231z">
                        </path>
                        <circle cx="4.029" cy="11.463" r="4.029"></circle>
                        <circle cx="4.029" cy="30.062" r="4.029"></circle>
                        <circle cx="4.029" cy="48.661" r="4.029"></circle>
                        </g>
                        </g>
                        </svg>
                        <span>Danh mục sản phẩm</span>
                    </div>
                    <div class="sidebar-menu">
                        <ul class="link-list list-root">
                            <c:forEach items="${listMenu}" var="y">
                                <li class="item-submenu">
                                    <a href="/btWeb/category.jsp?categoryName=${y.name}">${y.name}<span><i class='fa fa-angle-right'></i></span></a>
                                </li>
                            </c:forEach>
                        </ul>

                    </div>
                </div>
                <div class="col-lg-6 policy" style='padding: unset;'>
                    <div class="box-policy">
                        <ul>
                            <li class="box-policy-item">
                                <div class="box-icon">
                                    <img src="//theme.hstatic.net/200000637319/1000990988/14/header_03_policy_1_ico.png?v=566"
                                         alt="Đảm bảo chất lượng">
                                </div>
                                <div class="box-text">Đảm bảo chất lượng</div>
                            </li>
                            <li class="box-policy-item">
                                <div class="box-icon">
                                    <img src="//theme.hstatic.net/200000637319/1000990988/14/header_03_policy_2_ico.png?v=566"
                                         alt="Hỗ trợ trả góp">
                                </div>
                                <div class="box-text">Hỗ trợ trả góp</div>
                            </li>
                            <li class="box-policy-item">
                                <div class="box-icon">
                                    <img src="//theme.hstatic.net/200000637319/1000990988/14/header_03_policy_3_ico.png?v=566"
                                         alt="Miễn phí vận chuyển nội thành HN">
                                </div>
                                <div class="box-text">Miễn phí vận chuyển nội thành HN</div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="banner">
            <div class="row">
                <div class="col-lg-3" style="padding: unset;"></div>
                <div class="col-lg-6 slider">
                    <div class="slider-content">
                        <div class="overlay"></div>
                    </div>
                    <div class="slider-dot">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                    <div class="btn-next-prev">
                        <i class="fa fa-solid fa-angle-left"></i>
                        <i class="fa fa-solid fa-angle-right"></i>
                    </div>
                </div>
                <div class="col-lg-3 banner-right" style="padding: unset;">
                    <div class="group-banner-item">
                        <div class="banner-right-item">
                            <img src="https://theme.hstatic.net/200000637319/1000990988/14/banner_top_1_img_large.jpg?v=574"
                                 alt="">
                        </div>
                        <div class="banner-right-item">
                            <img src="https://theme.hstatic.net/200000637319/1000990988/14/banner_top_2_img_large.jpg?v=574"
                                 alt="">
                        </div>
                        <div class="banner-right-item">
                            <img src="https://theme.hstatic.net/200000637319/1000990988/14/banner_top_3_img_large.jpg?v=574"
                                 alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="home-category">

            <div class="list-item-category">
                <div class="cate-item-inner">
                    <div class="cate-item-image">
                        <a href="/">
                            <img src="https://theme.hstatic.net/200000637319/1000990988/14/categorybanner_1_img.jpg?v=574"
                                 alt="">
                        </a>
                    </div>
                </div>
                <div class="cate-item-inner">
                    <div class="cate-item-image">
                        <a href="/">
                            <img src="https://theme.hstatic.net/200000637319/1000990988/14/categorybanner_2_img.jpg?v=574"
                                 alt="">
                        </a>
                    </div>
                </div>
                <div class="cate-item-inner">
                    <div class="cate-item-image">
                        <a href="/">
                            <img src="https://theme.hstatic.net/200000637319/1000990988/14/categorybanner_3_img.jpg?v=574"
                                 alt="">
                        </a>
                    </div>
                </div>
                <div class="cate-item-inner">
                    <div class="cate-item-image">
                        <a href="/">
                            <img src="https://theme.hstatic.net/200000637319/1000990988/14/categorybanner_4_img.jpg?v=574"
                                 alt="">
                        </a>
                    </div>
                </div>
            </div>

        </section>

        <section id="products-sales">
            <div class="box-sales">
                <div class="ps-item-banner">
                    <a href="details.jsp"> <img
                            src="https://theme.hstatic.net/200000637319/1000990988/14/home_coll_1_banner.png?v=624"
                            alt=""></a>
                </div>
                <div class="ps-item-right">
                    <c:forEach items="${listPro}" var= "x">
                        <div class="ps-item">
                            <div class="box-img-p">
                                <a href="details.jsp?name=${x.name}"> <img
                                        src="${x.img}"
                                        alt="Product 1" class="product-image"></a>
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
            <div class="explore">
                <a href="showproductsales   ">Xem tất cả SẢN PHẨM KHUYẾN MÃI</a>
            </div>
        </section>
        <section id="selling-products">
            <div class="box-sp">
                <div class="title-sp">
                    <p>Top sản phẩm bán chạy</p>
                </div>
                <div class="list-sp">
                    <div class="ps-item">
                        <div class="box-img-p">
                            <a href="details.jsp"> <img
                                    src="https://product.hstatic.net/200000637319/product/tang_tai_nghe_somic_v4_990k__1__ed48a3fb797e4d02be31fefa29272bf8_medium.png"
                                    alt="Product 1" class="product-image" onmouseout="changeImage(this)"
                                    onmouseover="resetImage(this)"></a>
                        </div>
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5>Bàn phím cơ G.Skill</h5>
                        </div>
                        <div class="price">
                            <p>2.000.000</p>
                            <p class="sale">
                                40%
                            </p>
                        </div>
                        <div class="add-to-cart">
                            <a href="cart.jsp"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                    <div class="ps-item">
                        <div class="box-img-p">
                            <a href="details.jsp"> <img
                                    src="https://product.hstatic.net/200000637319/product/tang_tai_nghe_somic_v4_990k__1__ed48a3fb797e4d02be31fefa29272bf8_medium.png"
                                    alt="Product 1" class="product-image" onmouseout="changeImage(this)"
                                    onmouseover="resetImage(this)"></a>
                        </div>
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5>Bàn phím cơ G.Skill</h5>
                        </div>
                        <div class="price">
                            <p>2.000.000</p>
                            <p class="sale">
                                40%
                            </p>
                        </div>
                        <div class="add-to-cart">
                            <a href="cart.jsp"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                    <div class="ps-item">
                        <div class="box-img-p">
                            <a href="details.jsp"> <img
                                    src="https://product.hstatic.net/200000637319/product/tang_tai_nghe_somic_v4_990k__1__ed48a3fb797e4d02be31fefa29272bf8_medium.png"
                                    alt="Product 1" class="product-image" onmouseout="changeImage(this)"
                                    onmouseover="resetImage(this)"></a>
                        </div>
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5>Bàn phím cơ G.Skill</h5>
                        </div>
                        <div class="price">
                            <p>2.000.000</p>
                            <p class="sale">
                                40%
                            </p>
                        </div>
                        <div class="add-to-cart">
                            <a href="cart.jsp"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                    <div class="ps-item">
                        <div class="box-img-p">
                            <a href="details.jsp"> <img
                                    src="https://product.hstatic.net/200000637319/product/tang_tai_nghe_somic_v4_990k__1__ed48a3fb797e4d02be31fefa29272bf8_medium.png"
                                    alt="Product 1" class="product-image" onmouseout="changeImage(this)"
                                    onmouseover="resetImage(this)"></a>
                        </div>
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5>Bàn phím cơ G.Skill</h5>
                        </div>
                        <div class="price">
                            <p>2.000.000</p>
                            <p class="sale">
                                40%
                            </p>
                        </div>
                        <div class="add-to-cart">
                            <a href="cart.jsp"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                    <div class="ps-item">
                        <div class="box-img-p">
                            <a href="details.jsp"> <img
                                    src="https://product.hstatic.net/200000637319/product/tang_tai_nghe_somic_v4_990k__1__ed48a3fb797e4d02be31fefa29272bf8_medium.png"
                                    alt="Product 1" class="product-image" onmouseout="changeImage(this)"
                                    onmouseover="resetImage(this)"></a>
                        </div>
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5>Bàn phím cơ G.Skill</h5>
                        </div>
                        <div class="price">
                            <p>2.000.000</p>
                            <p class="sale">
                                40%
                            </p>
                        </div>
                        <div class="add-to-cart">
                            <a href="cart.jsp"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                    <div class="ps-item">
                        <div class="box-img-p">
                            <a href="details.jsp"> <img
                                    src="https://product.hstatic.net/200000637319/product/tang_tai_nghe_somic_v4_990k__1__ed48a3fb797e4d02be31fefa29272bf8_medium.png"
                                    alt="Product 1" class="product-image" onmouseout="changeImage(this)"
                                    onmouseover="resetImage(this)"></a>
                        </div>
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5>Bàn phím cơ G.Skill</h5>
                        </div>
                        <div class="price">
                            <p>2.000.000</p>
                            <p class="sale">
                                40%
                            </p>
                        </div>
                        <div class="add-to-cart">
                            <a href="cart.jsp"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="featured-categories">
            <div class="box-fc">
                <div class="title-fc">
                    <p>Danh mục nổi bật</p>
                </div>
                <div class="list-cate">
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_1_img.jpg?v=624" alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_2_img.jpg?v=624" alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_3_img.jpg?v=624" alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_4_img.jpg?v=624" alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>

                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_5_img.jpg?v=624" alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_6_img.jpg?v=624" alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_7_img.jpg?v=624" alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>

                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_8_img.jpg?v=624" alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_9_img.jpg?v=624" alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_10_img.jpg?v=624"
                             alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_11_img.jpg?v=624"
                             alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_12_img.jpg?v=624"
                             alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_13_img.jpg?v=624"
                             alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                    <div class="cate-item">
                        <img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_14_img.jpg?v=624"
                             alt="">
                        <h4>Chuột chơi game</h4>
                        <a href="#"></a>
                    </div>
                </div>
            </div>
        </section>
        <section id="new-collection">
            <div class="title-nc">
                Bộ sưu tập mới
            </div>
            <section id="new-collection">
                <div class="box-nc">
                    <div class="banner-nc">
                        <a href="#">
                            <img src="https://theme.hstatic.net/200000637319/1000990988/14/home_tabs_1_banner.jpg?v=624" alt="">
                        </a>
                    </div>
                    <div class="list-nc">
                        <c:forEach items="${listMouse}" var = "x">
                            <div class="nc-item">
                                <div class="box-img-p">
                                    <a href="details?name=${x.namemouse}"> <img
                                            src="${x.img}"></a>
                                </div>
                                <div class="manufacturer-p">
                                    <h5>${x.brand}</h5>
                                </div>
                                <div class="name-p">
                                    <h5>${x.namemouse}</h5>
                                </div>
                                <div class="price">
                                    <p>${x.price}<span>₫</span></p>
                                </div>
                                <div class="add-to-cart">
                                    <a href="./html/cart.html"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                                </div>
                            </div>
                        </c:forEach>

                    </div>



            </section>
            <div class="explore-nc">
                <a href="collection.jsp">Xem tất cả Chuột chơi game</a>
            </div>
            <section id="blog">
                <div class="title-box-blog">
                    Bài viết mới nhất
                </div>
                <div class="posts">
                    <div class="main-posts">
                        <div class="posts-image">
                            <a href="#"><img
                                    src="https://file.hstatic.net/200000637319/article/likenewpc_5337d23b963448a298e9022b8a7ef4af.jpg"
                                    alt="">
                            </a>
                        </div>
                        <div class="list-posts-item-text">
                            <a href="#">siêu thanh lý loa lazer chỉ từ 1.5 triệu đồng</a>
                        </div>
                        <div class="posting-time">
                            13 tháng 04, 2024
                        </div>
                    </div>
                    <div class="list-posts">
                        <div class="list-posts-item">
                            <div class="list-posts-item-image">
                                <a href="#"><img
                                        src="//file.hstatic.net/200000637319/article/cloud_ii__1__58a4855889534cb0acb2c71b7db6bf63_compact.png"
                                        alt=""></a>
                            </div>
                            <div class="list-posts-item-text">
                                <a href="#">siêu thanh lý loa lazer chỉ từ 1.5 triệu đồng</a>
                                <div class="posting-time">
                                    13 tháng 04, 2024
                                </div>
                            </div>

                        </div>
                        <div class="list-posts-item">
                            <div class="list-posts-item-image">
                                <a href="#"><img
                                        src="//file.hstatic.net/200000637319/article/likenewpc_5337d23b963448a298e9022b8a7ef4af_compact.jpg"
                                        alt=""></a>
                            </div>
                            <div class="list-posts-item-text">
                                <a href="#">siêu thanh lý loa lazer chỉ từ 1.5 triệu đồng</a>
                                <div class="posting-time">
                                    13 tháng 04, 2024
                                </div>
                            </div>

                        </div>
                        <div class="list-posts-item">
                            <div class="list-posts-item-image">
                                <a href="#"><img
                                        src="//file.hstatic.net/200000637319/article/likenewpc_5337d23b963448a298e9022b8a7ef4af_compact.jpg"
                                        alt=""></a>
                            </div>
                            <div class="list-posts-item-text">
                                <a href="#">siêu thanh lý loa lazer chỉ từ 1.5 triệu đồng</a>
                                <div class="posting-time">
                                    13 tháng 04, 2024
                                </div>
                            </div>

                        </div>
                        <div class="list-posts-item">
                            <div class="list-posts-item-image">
                                <a href="#"><img
                                        src="//file.hstatic.net/200000637319/article/thu_cu_doi_moi_pc_29ec0c23f42e4ac1bdc5d1a4fe6b30b4_compact.png"
                                        alt=""></a>
                            </div>
                            <div class="list-posts-item-text">
                                siêu thanh lý loa lazer chỉ từ 1.5 triệu đồng
                                <div class="posting-time">
                                    13 tháng 04, 2024
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <section id="receive-news">
                <div class="title-receive-news">
                    Đăng ký để nhận thông tin mới về sản phẩm
                </div>
                <div class="form-email">
                    <div class="box-form">
                        <i class="fa fa-envelope" style="font-size:20px; color: #333;"></i>
                        <form action="post">
                            <input type="text" name="email" placeholder="Vui lòng nhập email của bạn...">
                        </form>
                        <button>Đăng kí</button>
                    </div>
                </div>
            </section>
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
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>
            <script>
                                        document.querySelectorAll('.item-submenu').forEach(item => {
                                            item.addEventListener('click', (event) => {
                                                const categoryName = event.target.textContent;
                                                loadProductsByCategory(categoryName);
                                            });
                                        });
                                        function loadProductsByCategory(categoryName) {
                                            fetch('category?categoryName=' + encodeURIComponent(categoryName))
                                                    .then(response => response.json())
                                                    .then(products => {

                                                        products.forEach(product => {
                                                            console.log(product);
                                                        });
                                                    })
                                                    .catch(error => {
                                                        console.error('Error fetching products:', error);
                                                    });
                                        }
            </script>
    </body>
    <script src="js/slider.js"></script>
    <script src="js/changeImageProduct.js"></script>

</html>
