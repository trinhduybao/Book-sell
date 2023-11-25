<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

    <div class="bg-light py-3">
      <div class="container">
        <div class="row">
          <div class="col-md-12 mb-0"><a href="/indexCustomer">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">About</strong></div>
        </div>
      </div>
    </div>  

    <div class="site-section border-bottom" data-aos="fade">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-6">
            <div class="block-16">
              <figure>
                <img src="/static/customer/images/about.jpg" alt="Image placeholder" class="img-fluid rounded">
              </figure>
            </div>
          </div>
          <div class="col-md-1"></div>
          <div class="col-md-5">
            
            
            <div class="site-section-heading pt-3 mb-4">
              <h2 class="text-black">Chúng tôi đã bắt đầu như thế nào ?</h2>
            </div>
            <p>Lựa chọn đa dạng: Trang web bán sách của bạn có thể cung cấp một lựa chọn đa dạng về sách mới và đã qua sử dụng từ các nguồn độc lập trên toàn thế giới.</p>
            <p>Tiếp cận độc giả: Một trang web bán sách có thể giúp bạn tiếp cận với độc giả tiềm năng và xây dựng mối quan hệ với họ.</p>
            
          </div>
        </div>
      </div>
    </div>

    <div class="site-section border-bottom" data-aos="fade">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 site-section-heading text-center pt-4">
            <h2>Thành Viên</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-6">
            <div class="block-38 text-center">
              <div class="block-38-img">
                <div class="block-38-header">
                  <img src="/static/customer/images/nhan.jpg" alt="Image placeholder" class="mb-4">
                  <h3 class="block-38-heading h4">Trần Văn Nhân</h3>
                  <p class="block-38-subheading">CEO/Co-Founder</p>
                </div>
                <div class="block-38-body">
                  <p>Sinh ra và lớn lên tại Hoài Mỹ, Hoài Nhơn, Bình Định một vùng đất đầy nắng và gió. Đang theo học tại FPT PolyTechnic </p>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-6">
            <div class="block-38 text-center">
              <div class="block-38-img">
                <div class="block-38-header">
                  <img src="/static/customer/images/bao.jpg" alt="Image placeholder" class="mb-4">
                  <h3 class="block-38-heading h4">Trịnh Duy Bảo</h3>
                  <p class="block-38-subheading">Co-Founder</p>
                </div>
                <div class="block-38-body">
                  <p>Sinh ra và lớn lên tại Bình Tân, Hồ Chí Minh một nơi được gọi với cái tên khác là Sài Gòn. Đang theo học tại FPT PolyTechnic </p>
                </div>
              </div>
            </div>
          </div>
        

        </div>
      </div>
    </div>
  

    <div class="site-section site-section-sm site-blocks-1 border-0" data-aos="fade">
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