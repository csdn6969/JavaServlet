<%-- 
    Document   : collection
    Created on : 13 May 2024, 13:09:09
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        .title-cp{
            margin: 10px 0;
        }
        .tt-text{
            font-size: 18px;
            font-weight: bold;
        }
        .list-rp{
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .list-rp-item{
            background: #fff;
            padding: 0 3px;
            width: calc(100% / 5);
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .list-rp-item-image{
            width: 100%;
        }
        .list-rp-item-image img{
            width: 100%;
            object-fit: cover;
        }
        .price-rp{
            color: #e70505;
        }
        .pagination {
            margin: 30px 0;
            text-align: center;
        }

        .pagination ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .pagination li {
            display: inline-block;
            margin-right: 5px;
        }

        .pagination li a {
            display: block;
            padding: 8px 12px;
            text-decoration: none;
            background-color: #007bff;
            color: #fff;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .pagination li a:hover {
            background-color: #0056b3;
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
                    <a href="./html/cart.html"><i class="fa fa-shopping-bag"></i><span>Giỏ hàng</span></a>
                </div>
            </nav>
        </header>

        <div class="breadcrumb-shop">
            <div class="container">
                <div class="breadcrumb-list  ">
                    <ol class="breadcrumb breadcrumb-arrows">
                        <li>
                            <a href="/" ><span itemprop="name">Trang chủ</span></a>
                            <meta itemprop="position" content="1">
                        </li>

                    </ol>
                </div>
            </div>
        </div>

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
                        <div class="title-cp">  
                            <span class="tt-text">Chuột chơi game</span>
                        </div>
                        <div class="list-rp">


                        </div>
                        <div class="pagination">
                            <ul>
                                <li><a href="#">Previous</a></li>
                                <li><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">Next</a></li>
                            </ul>
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
        document.addEventListener('DOMContentLoaded', () => {
            const checkboxes = document.querySelectorAll('input[name="brand-filter"], input[name="price-filter"]');
            checkboxes.forEach(checkbox => {
                checkbox.addEventListener('change', filterProducts);
            });

            // Tải sản phẩm theo danh mục khi trang được tải
            const params = new URLSearchParams(window.location.search);
            const categoryName = params.get('categoryName');
            loadProductsByCategory(categoryName);
        });

        let allProducts = []; // Lưu trữ tất cả sản phẩm khi tải lần đầu

        function loadProductsByCategory(categoryName) {
            fetch('category?categoryName=' + encodeURIComponent(categoryName))
                    .then(response => response.json())
                    .then(products => {
                        allProducts = products; // Lưu trữ tất cả sản phẩm
                        displayProducts(products); // Hiển thị tất cả sản phẩm lần đầu
                    })
                    .catch(error => {
                        console.error('Error fetching products:', error);
                    });
        }

        function filterProducts() {
            const selectedBrands = [];
            const selectedPriceRanges = [];
            document.querySelectorAll('input[name="brand-filter"]:checked').forEach(checkbox => {
                selectedBrands.push(checkbox.value);
            });
            document.querySelectorAll('input[name="price-filter"]:checked').forEach(checkbox => {
                selectedPriceRanges.push(checkbox.value);
            });
            let filteredProducts = allProducts;
            // Lọc theo nhãn hiệu
            if (selectedBrands.length > 0) {
                filteredProducts = filteredProducts.filter(product => selectedBrands.includes(product.brand));
            }

            // Lọc theo mức giá
            if (selectedPriceRanges.length > 0) {
                filteredProducts = filteredProducts.filter(product => {
                    return selectedPriceRanges.some(range => {
                        const price = parseInt(product.price.replace(/[^\d]/g, ''));
                        if (range === 'below-1000000') {
                            return price < 1000000;
                        } else if (range === '1000000-2000000') {
                            return price >= 1000000 && price <= 2000000;
                        } else if (range === '2000000-4000000') {
                            return price >= 2000000 && price <= 4000000;
                        } else if (range === 'above-4000000') {
                            return price > 4000000;
                        }
                        return false;
                    });
                });
            }

            displayProducts(filteredProducts);
        }
        function displayProducts(products) {
            const params = new URLSearchParams(window.location.search);
            const totalProducts = products.length;
            const listRP = document.querySelector('.list-rp');
            const title_cp = document.querySelector('.title-cp');
            title_cp.innerHTML = '';

            const newSpan1 = document.createElement('span');
            newSpan1.classList.add('tt-text');
            const textTT = document.createTextNode(params.get('categoryName'));
            newSpan1.appendChild(textTT);
            title_cp.appendChild(newSpan1);

            const newSpan2 = document.createElement('span');
            const countText = document.createTextNode(totalProducts + " sản phẩm hiển thị");
            newSpan2.appendChild(countText);
            title_cp.appendChild(newSpan2);

            const breadcrumb = document.querySelector('.breadcrumb');
            const newLi = document.createElement('li');
            const newA = document.createElement('a');
            newA.href = './btWeb/category.jsp?categoryName=' + params.get('categoryName');

            const newSpan3 = document.createElement('span');
            const textSpan3 = document.createTextNode(params.get('categoryName'));
            newSpan3.appendChild(textSpan3);
            newA.appendChild(newSpan3);
            newLi.appendChild(newA);
            breadcrumb.appendChild(newLi);

            listRP.innerHTML = '';
            products.forEach(product => {
                const newItem = document.createElement('div');
                newItem.classList.add('list-rp-item');

                const itemImage = document.createElement('div');
                itemImage.classList.add('list-rp-item-image');
                const imageLink = document.createElement('a');
                imageLink.href = './details?name='+product.name;
                const image = document.createElement('img');
                image.src = product.img;
                image.alt = '';
                imageLink.appendChild(image);
                itemImage.appendChild(imageLink);
                newItem.appendChild(itemImage);

                const itemText = document.createElement('div');
                itemText.classList.add('list-rp-item-text');

                const manufacturer = document.createElement('div');
                manufacturer.classList.add('manufacturer-p');
                const manufacturerName = document.createElement('h5');
                manufacturerName.textContent = product.brand;
                manufacturer.appendChild(manufacturerName);
                itemText.appendChild(manufacturer);

                const productName = document.createElement('div');
                productName.classList.add('name-p');
                const productNameLink = document.createElement('h5');
                const productNameAnchor = document.createElement('a');
                productNameAnchor.href = '/btWeb/detail.jsp';
                productNameAnchor.textContent = product.name;
                productNameLink.appendChild(productNameAnchor);
                productName.appendChild(productNameLink);
                itemText.appendChild(productName);

                const price = document.createElement('div');
                price.classList.add('price', 'price-rp');
                const priceParagraph = document.createElement('p');
                priceParagraph.textContent = product.price;
                price.appendChild(priceParagraph);
                itemText.appendChild(price);

                const addToCart = document.createElement('div');
                addToCart.classList.add('add-to-cart');
                const addToCartLink = document.createElement('a');
                addToCartLink.href = './html/cart.html';
                const cartSpan = document.createElement('span');
                cartSpan.innerHTML = '<i class="fa fa-shopping-bag"></i>';
                addToCartLink.appendChild(cartSpan);
                addToCartLink.appendChild(document.createTextNode('Thêm vào giỏ'));
                addToCart.appendChild(addToCartLink);
                itemText.appendChild(addToCart);

                newItem.appendChild(itemText);
                listRP.appendChild(newItem);
            });
        }


    </script>
    <<script src="js/collection.js"></script>
</html>
