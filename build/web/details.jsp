
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
        <link rel="stylesheet" href="css/detail.css">
        <link rel="stylesheet" href="css/receive-news.css">
    </head>
    <style>
        .product-price span.original-price {
            font-size: 25px;
            font-weight: 600;
            color: red;
            padding-right: 10px;
        }
    </style>
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
                    <a href="./cart.jsp"><i class="fa fa-shopping-bag"></i><span>Giỏ hàng</span></a>
                </div>
            </nav>
        </header>
        <div class="breadcrumb-shop"><div class="container">
                <div class="breadcrumb-list  ">
                    <ol class="breadcrumb breadcrumb-arrows" itemscope="" itemtype="http://schema.org/BreadcrumbList">
                        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
                            <a href="/" target="_self" itemprop="item"><span itemprop="name">Trang chủ</span></a>
                            <meta itemprop="position" content="1">		
                        </li>



                        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
                            <a href="https://playzone.vn/collections/ban-phim-co" target="_self" itemprop="item"><span itemprop="name">Bàn phím cơ</span></a>
                            <meta itemprop="position" content="2">
                        </li>

                        <li class="active" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
                            <span itemprop="item" content="https://playzone.vn/products/ban-phim-co-ripjaws-km780-rgb">
                                <span itemprop="name">Bàn phím cơ G.Skill Ripjaws KM780R RGB</span>
                            </span>
                            <meta itemprop="position" content="3">
                        </li>

                    </ol>
                </div>
            </div></div>



<c:forEach items="${listDt}" var="x">
    <div class="product-details-content">
        <div class="box-detail-l">
            <div class="big-img">
                <img src="${x.img}" alt="${x.name}" class="product-image">
            </div>
            <div class="small-img">
                <div class="small-img-item"><img src="https://product.hstatic.net/200000637319/product/tang_tai_nghe_somic_v4_990k__1__ed48a3fb797e4d02be31fefa29272bf8_medium.png" alt=""></div>
                <div class="small-img-item"><img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_8_img.jpg?v=624" alt=""></div>
                <div class="small-img-item"><img src="https://theme.hstatic.net/200000637319/1000990988/14/cate_feature_8_img.jpg?v=624" alt=""></div>
            </div>
        </div>
        <div class="box-detail-r">
            <div class="product-heading">
                <h1 class="product-name">${x.name}</h1>
                <span class="pro-vendor">Thương hiệu: <span class="brand-name">${x.brand}</span></span>
                <span class="pro-sku">Thời gian bảo hành: <span class="warranty-period">12 tháng</span></span>
            </div>
            <div class="wrapbox-detail">
                <div class="product-price" id="price-preview">
                    <span class="pro-title">Giá: </span>
                    <span class="original-price"></span>
                    <del class="pro-price">${x.price}</del>
                    <span class="pro-percent" data-sale-percent="44">-44%</span>
                </div>
                <div class="product-actions">
                    <div class="select-actions d-none d-lg-block clearfix">
                        <div class="quantity-area">
                            <div class="quantity-title">Số lượng: </div>
                            <button type="button" onclick="HRT.All.minusQuantity()" class="qty-btn">
                                <i class="fa fa-minus"></i>
                            </button>
                            <input type="text" id="quantity" name="quantity" value="1" min="1" class="quantity-input">
                            <button type="button" onclick="HRT.All.plusQuantity()" class="qty-btn">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                        <div class="addcart-area">
                            <button  type="button" id="${x.id}" class="add-to-cartProduct button dark btn-addtocart addtocart-modal" name="add">
                                Thêm vào giỏ
                            </button>
                            <button type="button" id="buy-now" class="button dark btn-buynow btnred addtocart-modal" name="add">
                                Mua ngay
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</c:forEach>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
            // Lấy nút bằng ID hoặc lớp
            const button = document.querySelector('.add-to-cartProduct');
            
            // Thêm sự kiện click vào nút
            button.addEventListener('click', function(event) {
                // Lấy nút đã được click
                const clickedButton = event.target;
                const img = document.querySelector('.product-image').src;
                const name = document.querySelector('.product-name').textContent;
                const price = document.querySelector('.original-price').textContent;
                // Lấy giá trị id của nút
                const id = clickedButton.id;
                // Hiển thị id trong console
               console.log(name);
                addToCart(id, img, name, price);
            });
        });
             function addToCart(productId, img, name, price) {
    // Lấy giỏ hàng từ localStorage, nếu chưa có thì tạo mảng rỗng
    let cart = JSON.parse(localStorage.getItem('cart')) || [];

    // Kiểm tra xem sản phẩm đã có trong giỏ hàng chưa
    const productIndex = cart.findIndex(product => product.id === productId);
    if (productIndex === -1) {
        // Nếu chưa có, thêm sản phẩm vào giỏ hàng
        cart.push({ id: productId, Image: img, Name: name, Price: price, quantity: 1 });
    } else {
        // Nếu đã có, tăng số lượng sản phẩm
        cart[productIndex].quantity += 1;
    }

    // Lưu giỏ hàng trở lại localStorage
    localStorage.setItem('cart', JSON.stringify(cart));

    // Hiển thị thông báo (có thể thay đổi thành cập nhật giao diện người dùng)
    console.log(`Sản phẩm có id ${productId} đã được thêm vào giỏ hàng`);
}

        document.addEventListener("DOMContentLoaded", function () {
        document.querySelectorAll('.product-price').forEach(function(pricePreview) {
            // Lấy giá trị sản phẩm
            var priceText = pricePreview.querySelector('.pro-price').textContent;
            var price = parseFloat(priceText.replace(/,/g, '').replace('₫', ''));
            // Lấy phần trăm giảm giá từ thuộc tính data-sale-percent
            var salePercent = parseFloat(pricePreview.querySelector('.pro-percent').getAttribute('data-sale-percent'));
            // Tính giá gốc
            var originalPrice = price - (price *  (salePercent / 100));
            // Định dạng giá trị gốc với dấu phân cách
            var formattedOriginalPrice = originalPrice.toLocaleString('vi-VN', {style: 'currency', currency: 'VND'});
            // Đổ giá trị lên thẻ del
            pricePreview.querySelector('.original-price').textContent = formattedOriginalPrice;
        });
    });      
        </script>
        <div class="productDetail--box box-detail-description">
            <div class="product-description mg-top">
                <div class="box-title">
                    <h2>Mô tả sản phẩm</h2>
                </div>
                <div class="description-content">

                    <div class="description-productdetail">
                        <h2 style="&quot;text-align:center&quot;"><span style="font-size:22px"><strong>TÍNH NĂNG NỔI
                                    BẬT:</strong></span></h2>
                        <h3 style="text-align: center;"><span style="font-size:20px"><strong>Sử dụng bộ Switch Cherry MX trứ
                                    danh</strong></span></h3>
                        <p style="text-align: center;"><span style="font-size:18px">Chỉ sử dụng Switch Cherry MX chính hãng
                                với khoảng cách hoạt động 2 mm và độ bền phím 50 triệu mang đến hiệu suất chơi game tuyệt
                                vời và bền bỉ</span></p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center"><img
                                src="//file.hstatic.net/200000637319/file/image__16__65140613073548e7a71ba5ff41ded2df_grande.png">
                        </p>
                        <p style="text-align: center;">&nbsp;</p>
                        <h3 style="text-align: center;"><span style="font-size:20px"><strong>Lập trình hoàn toàn mọi phím
                                    với hiệu ứng đèn LED nền RGB rực rỡ</strong></span></h3>
                        <p style="text-align: center;"><span style="font-size:18px">Mỗi phím được lập trình với chức năng
                                phím hoặc macro riêng, cũng như đèn nền trên mỗi phím độc lập với đầy đủ 16,8 triệu màu và
                                các tùy chọn hiệu ứng ánh sáng cho trải nghiệm tùy chỉnh tối ưu.</span></p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center"><img
                                src="//file.hstatic.net/200000637319/file/image__15__46f6460ec7214542a4aac011fce17e74_grande.png">
                        </p>
                        <p style="text-align: center;">&nbsp;</p>
                        <h3 style="text-align: center;"><span style="font-size:20px"><strong>Vỏ nhôm tiêu chuẩn quân
                                    sự</strong></span></h3>
                        <p style="text-align: center;"><span style="font-size:18px">Được thiết với một tấm nhôm anodized
                                quân sự cao cấp, bàn phím cung cấp cả độ bền tối đa và sự thanh lịch trực quan cho việc chơi
                                game hàng ngày mà không ghề gây mệt mỏi</span></p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center"><img
                                src="//file.hstatic.net/200000637319/file/image__14__fb74dddb93ab4c39a81fdfacfa34b909_grande.png">
                        </p>
                        <p style="text-align: center;">&nbsp;</p>
                        <h3 style="text-align: center;"><span style="font-size:20px"><strong>Lưu giữ dễ dàng</strong></span>
                        </h3>
                        <p style="text-align: center;"><span style="font-size:18px">Có khả năng lưu trữ tối đa 3 bộ nhớ hoàn
                                chỉnh (còn gọi là "chế độ") của cấu hình macro, phím và ánh sáng trong bàn phím, vì vậy trải
                                nghiệm chơi trò chơi cá nhân của bạn giờ đây sẽ theo bất cứ nơi nào bạn đi</span></p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center"><img
                                src="//file.hstatic.net/200000637319/file/g.skill-ripjaws-km780-mx-red-songphuong.vn_-600x600_b23c4659a2824cf394d6eb28da19d479_grande.jpg">
                        </p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center;">&nbsp;</p>
                        <h3 style="text-align: center;"><span style="font-size:20px"><strong>Bộ phím chế độ riêng
                                    biệt</strong></span></h3>
                        <p style="text-align: center;"><span style="font-size:18px">Được thiết kế với chức năng ghi macro
                                nhanh chóng, 6 phím macro bổ sung giúp việc thao tác và truy cập nhanh hơn, các chức năng
                                tích hợp này cho phép truy cập ngay tức khắc khi bạn cần</span></p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center;">&nbsp;</p>
                        <h3 style="text-align: center;"><span style="font-size:20px"><strong>Cụm phím chức năng tiện
                                    lợi</strong></span></h3>
                        <p style="text-align: center;"><span style="font-size:18px">Khóa phim Windows, bật đèn LED hay hẹn
                                giờ cho phím cũng hoàn toàn có thể chỉnh được với bàn phím này. Việc điều chỉnh giờ đây dễ
                                dàng hơn bao giờ hết.</span></p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center"><img
                                src="//file.hstatic.net/200000637319/file/3852402_cv_g.skill_km780_rgb_12a2f92df0c0455692118d7f62a6abed_grande.jpg">
                        </p>
                        <h3 style="text-align: center;"><span style="font-size:20px"><strong>Keycap và kê
                                    tay</strong></span></h3>
                        <p style="text-align: center;"><span style="font-size:18px">Tự nhiên và thoải mái định vị các ngón
                                tay của bạn để chạm vào từng hàng phím với phần còn lại chạm nhẹ có thể tháo rời với năm cấp
                                độ, cùng với đó là chiếc kê tay giúp bàn tay bạn không bao giờ phải mệt mỏi kể cả khi sử
                                dụng lâu dài.</span></p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center"><img
                                src="//file.hstatic.net/200000637319/file/ill_ripjaws_km780r_rgb_brown_switches_gk_kcl1c3_km780rs10na_usb_co_day_7fe065348faa482989f1b39c14536f4c_grande.jpg">
                        </p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center;">&nbsp;</p>
                        <h3 style="text-align: center;"><span style="font-size:20px"><strong>Tương thích với mọi phần mềm
                                    cùng driver G.SKILL</strong></span></h3>
                        <p style="text-align: center;"><span style="font-size:18px">Mở khóa các giới hạn để tùy chỉnh và cấp
                                cho bạn quyền kiểm soát hoàn toàn các macro, lập trình theo khóa, cài đặt đèn nền, kiểu
                                chiếu sáng và vô số cài đặt khác để cá nhân hóa hoàn toàn ( ngoài ra còn tương thích với
                                phần mềm Mystic Light Sync và RGB Fusion 2.0 )</span></p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center;">&nbsp;</p>
                        <p style="text-align: center;">&nbsp;</p>
                        <h2 style="&quot;text-align:center&quot;">&nbsp;</h2>
                        <h2 style="&quot;text-align:center&quot;"><span style="font-size:22px"><strong><u>THÔNG SỐ KĨ
                                        THUẬT:</u></strong></span></h2>
                        <p style="&quot;text-align:center&quot;">&nbsp;</p>
                        <table border="1" cellpadding="1" cellspacing="1" style="width:300px" class="&quot;table">
                            <tbody>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Màu</span></p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Đen</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Kích thước</span></p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Fullsize</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Đèn LED hiển thị</span>
                                        </p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">RGB 16.8 triệu màu (
                                                tương thích Mystic Light Sync và RGB Fusion 2.0 )</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Vỏ</span></p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Nhôm anodized </span>
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Giá đỡ dây chuột</span>
                                        </p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Có</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Cụm phím media</span>
                                        </p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Có</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Cụm phím chức
                                                năng</span></p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Có</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Switch</span></p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Cherry MX ( Red / Blue /
                                                Brown )</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Kê tay</span></p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Có</span></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="&quot;width:583px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">Giắc cắm</span></p>
                                    </td>
                                    <td style="&quot;width:586px&quot;">
                                        <p style="text-align: center;"><span style="font-size:18px">USB 2.0</span></p>
                                        <p style="text-align: center;"><span style="font-size:18px">Audio </span></p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <div class="related-products">
            <div class="title-rp">
                Sản phẩm liên quan
            </div>
            <div class="list-rp">
                <div class="list-rp-item">
                    <div class="list-rp-item-image">
                        <a href="./detail.html"> <img
                                src="//product.hstatic.net/200000637319/product/akko-3068-v2-rgb-black-01_afd497db2d404c7d804d7b04de58923b_medium.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="list-rp-item-text">
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5><a href="./detail.html">Bàn phím cơ G.Skill</a></h5>
                        </div>
                        <div class="price price-rp">
                            <p>2.000.000</p>
                        </div>
                        <div class="add-to-cart">
                            <a href="./html/cart.html"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
                <div class="list-rp-item">
                    <div class="list-rp-item-image">
                        <a href="./detail.html"> <img
                                src="//product.hstatic.net/200000637319/product/akko-3068-v2-rgb-black-01_afd497db2d404c7d804d7b04de58923b_medium.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="list-rp-item-text">
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5><a href="./detail.html">Bàn phím cơ G.Skill</a></h5>
                        </div>
                        <div class="price price-rp">
                            <p>2.000.000</p>
                        </div>
                        <div class="add-to-cart">
                            <a href="./html/cart.html"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
                <div class="list-rp-item">
                    <div class="list-rp-item-image">
                        <a href="./detail.html"> <img
                                src="//product.hstatic.net/200000637319/product/akko-3068-v2-rgb-black-01_afd497db2d404c7d804d7b04de58923b_medium.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="list-rp-item-text">
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5><a href="./detail.html">Bàn phím cơ G.Skill</a></h5>
                        </div>
                        <div class="price price-rp">
                            <p>2.000.000</p>
                        </div>
                        <div class="add-to-cart">
                            <a href="./html/cart.html"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
                <div class="list-rp-item">
                    <div class="list-rp-item-image">
                        <a href="./detail.html"> <img
                                src="//product.hstatic.net/200000637319/product/akko-3068-v2-rgb-black-01_afd497db2d404c7d804d7b04de58923b_medium.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="list-rp-item-text">
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5><a href="./detail.html">Bàn phím cơ G.Skill</a></h5>
                        </div>
                        <div class="price price-rp">
                            <p>2.000.000</p>
                        </div>
                        <div class="add-to-cart">
                            <a href="./html/cart.html"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>
                <div class="list-rp-item">
                    <div class="list-rp-item-image">
                        <a href="./detail.html"> <img
                                src="//product.hstatic.net/200000637319/product/akko-3068-v2-rgb-black-01_afd497db2d404c7d804d7b04de58923b_medium.jpg"
                                alt="">
                        </a>
                    </div>
                    <div class="list-rp-item-text">
                        <div class="manufacturer-p">
                            <h5>logitech</h5>
                        </div>
                        <div class="name-p">
                            <h5><a href="./detail.html">Bàn phím cơ G.Skill</a></h5>
                        </div>
                        <div class="price price-rp">
                            <p>2.000.000</p>
                        </div>
                        <div class="add-to-cart">
                            <a href="./html/cart.html"><span><i class="fa fa-shopping-bag"></i></span>Thêm vào giỏ</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
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
    </body>
    <script>

        var HRT = {
            All: {
                minusQuantity: function () {
                    var quantityInput = document.getElementById("quantity");
                    var currentQuantity = parseInt(quantityInput.value);
                    if (!isNaN(currentQuantity) && currentQuantity > 1) {
                        quantityInput.value = currentQuantity - 1;
                    }
                },
                plusQuantity: function () {
                    var quantityInput = document.getElementById("quantity");
                    var currentQuantity = parseInt(quantityInput.value);
                    if (!isNaN(currentQuantity)) {
                        quantityInput.value = currentQuantity + 1;
                    }
                }
            }
        };

    </script>
</html>
