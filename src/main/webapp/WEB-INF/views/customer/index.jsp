<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>TUTA &mdash; Book Store</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700">
    <link rel="stylesheet" href="/static/customer/fonts/icomoon/style.css">
    <link rel="stylesheet" href="/static/customer/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/customer/css/magnific-popup.css">
    <link rel="stylesheet" href="/static/customer/css/jquery-ui.css">
    <link rel="stylesheet" href="/static/customer/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/static/customer/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/static/customer/css/aos.css">
    <link rel="stylesheet" href="/static/customer/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200;300;400;500;600;700;800&family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link rel="shortcut icon" type="image/png" href="/static/customer/images/Logo.png" />
  </head>
  <body>
  
  <div class="site-wrap">
    <header class="site-navbar" role="banner">
      <div class="site-navbar-top">
        <div class="container">
          <div class="row align-items-center">

            <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
              <form action="" class="site-block-top-search">
              </form>
            </div>

            <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
              <div class="site-logo">
                <a href="/indexCustomer" class="js-logo-clone">TUTA</a>
              </div>
            </div>

            <div class="col-6 col-md-4 order-3 order-md-3 text-right">
              <div class="site-top-icons">
                <ul>
                  <li><a href="/myprofileCustomer"><span class="icon icon-person"></span></a></li>
                  
                  <li>
                    <a href="/view-to-cart" class="site-cart">
                      <span class="icon icon-shopping_cart"></span>
                      <span class="count">${cartsize}</span>
                    </a>
                  </li> 
                  <li class="d-inline-block d-md-none ml-md-0"><a href="#" class="site-menu-toggle js-menu-toggle"><span class="icon-menu"></span></a></li>
                </ul>
              </div> 
            </div>

          </div>
        </div>
      </div> 
      <nav class="site-navigation text-right text-md-center" role="navigation">
        <div class="container">
          <ul class="site-menu js-clone-nav d-none d-md-block">
            <li>
              <a href="/indexCustomer">HOME</a>
            </li>
            <li class="">
              <a href="/aboutCustomer">About</a>
            </li>
            <li><a href="/shopCustomer">Shop</a></li>
            <li><a href="/contactCustomer">Contact</a></li>
          </ul>
        </div>
      </nav>
    </header>

    <div class="site-blocks-cover" style="background-image: url(/static/customer/images/sach.jpg);" data-aos="fade">
      <div class="container">
        <div class="row align-items-start align-items-md-center justify-content-end">
          <div class="col-md-5 text-center text-md-left pt-5 pt-md-0">
            <h1 class="mb-2">Tìm những cuốn sách hoàn hảo của bạn</h1>
            <div class="intro-text text-center text-md-left">
                <a href="/shopCustomer" class="btn btn-sm btn-primary">Mua Ngay</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-section site-section-sm site-blocks-1">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="">
            <div class="icon mr-4 align-self-start">
              <span class="icon-truck"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Free Shipping</h2>
              <p>Mọi sản phẩm của Cửa Hàng khi đặt hàng trực tuyến đều được miễn phí vận chuyển. Nếu có phát sinh phí vận chuyển vui lòng liên hệ Cửa Hàng.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="100">
            <div class="icon mr-4 align-self-start">
              <span class="icon-refresh2"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Free Returns</h2>
              <p>Mọi sản phẩm của Cửa Hàng khi nhận hàng nếu cảm thấy không hài lòng có thể trả lại cho cửa hàng. Mọi chi phí về vấn đề trả hàng đều được Cửa Hàng chi trả và hoàn toàn miễn phí.</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-lg-flex mb-4 mb-lg-0 pl-4" data-aos="fade-up" data-aos-delay="200">
            <div class="icon mr-4 align-self-start">
              <span class="icon-help"></span>
            </div>
            <div class="text">
              <h2 class="text-uppercase">Customer Support</h2>
              <p>Chúng tôi luôn hỗ trợ khách hàng về mọi vấn đề khách hàng gặp phải trong quá trình mua sản phẩm của Cửa Hàng chúng tôi.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="site-section block-3 site-blocks-2 bg-light">
      <div class="container">
        <!-- <div class="row justify-content-center">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Sản phẩm nổi bật</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="nonloop-block-3 owl-carousel">
            
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="/static/customer/images/sachitem1.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Tâm Lý Học Tội Phạm - Phác Họa Chân Dung Kẻ Phạm Tội</a></h3>
                    <p class="mb-0"></p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="/static/customer/images/sachitem2.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Thao Túng Tâm Lý - Nhận Diện, Thức Tỉnh Và Chữa Lành Những Tổn Thương Tiềm Ẩn</a></h3>
                    <p class="mb-0"></p>
                    <p class="text-primary font-weight-bold">$100</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="/static/customer/images/sachitem3.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Nghĩ Giàu & Làm Giàu (Tái Bản 2020)</a></h3>
                    <p class="mb-0"></p>
                    <p class="text-primary font-weight-bold">$50</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="/static/customer/images/sachitem4.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Chiến Tranh Tiền Tệ - Phần 1 - Ai Thực Sự Là Người Giàu Nhất Thế Giới? (Tái bản 2022)</a></h3>
                    <p class="mb-0"></p>
                    <p class="text-primary font-weight-bold">$70</p>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="block-4 text-center">
                  <figure class="block-4-image">
                    <img src="/static/customer/images/sachitem5.jpg" alt="Image placeholder" class="img-fluid">
                  </figure>
                  <div class="block-4-text p-4">
                    <h3><a href="#">Đắc Nhân Tâm (Tái Bản 2021)</a></h3>
                    <p class="mb-0"></p>
                    <p class="text-primary font-weight-bold">$120</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div> -->
      </div>
    </div>
    <footer class="site-footer border-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="row">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Điều hướng</h3>
              </div>
              <div class="col-md-6 col-lg-4">
                <ul class="list-unstyled">
                  <li><a href="#">Bán trực tuyến</a></li>
                  <li><a href="#">Đặc trưng</a></li>
                  <li><a href="#">Giỏ hàng</a></li>
                  <li><a href="#">Người xây dựng cửa hàng</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-4">
                <ul class="list-unstyled">
                  <li><a href="#">Thương mại di động</a></li>
                  <li><a href="#">Vận chuyển thả</a></li>
                  <li><a href="#">Phát triển trang web</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-4">
                <ul class="list-unstyled">
                  <li><a href="#">Điểm bán hàng</a></li>
                  <li><a href="#">Phần cứng</a></li>
                  <li><a href="#">Phần mềm</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3 mb-4 mb-lg-0">
            <h3 class="footer-heading mb-4">Khuyến Mãi</h3>
            <a href="#" class="block-6">
              <img src="/static/customer/images/sach2.jpg" alt="Image placeholder" class="img-fluid rounded mb-4">
              <h3 class="font-weight-light  mb-0">Tìm những cuốn sách hoàn hảo của bạn</h3>
              <p>Khuyến mãi từ 20 &mdash; 30/09, 2023</p>
            </a>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="block-5 mb-5">
              <h3 class="footer-heading mb-4">Thông tin liên hệ</h3>
              <ul class="list-unstyled">
                <li class="address">Đường Võ Nguyên Giáp, Hoài Mỹ, Hoài Nhơn, Bình Định</li>
                <li class="phone"><a href="tel://23923929210">+84376758600</a></li>
                <li class="email">ads.tranvannhan@gmail.com</li>
              </ul>
            </div>

            <div class="block-7">
              <form action="#" method="post">
                <label for="email_subscribe" class="footer-heading">Đăng ký</label>
                <div class="form-group">
                  <input type="text" class="form-control py-4" id="email_subscribe" placeholder="Email">
                  <input type="submit" class="btn btn-sm btn-primary" value="Gửi">
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            
            Copyright &copy;<script>document.write(new Date().getFullYear());</script> &mdash; Proudly created with Tran Van Nhan and Trinh Duy Bao</a>
            
            </p>
          </div>
        </div>
      </div>
    </footer>
  </div>

  <script src="/static/customer/js/jquery-3.3.1.min.js"></script>
  <script src="/static/customer/js/jquery-ui.js"></script>
  <script src="/static/customer/js/popper.min.js"></script>
  <script src="/static/customer/js/bootstrap.min.js"></script>
  <script src="/static/customer/js/owl.carousel.min.js"></script>
  <script src="/static/customer/js/jquery.magnific-popup.min.js"></script>
  <script src="/static/customer/js/aos.js"></script>
  <script src="/static/customer/js/main.js"></script>
    
  </body>
</html>