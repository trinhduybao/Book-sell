<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/static/css/login.css">
<!-- <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/bootstrap.min.js"></script> -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="shortcut icon" type="image/png"
	href="/static/customer/images/Logo.png" />
<title>TUTA &mdash; Book Store - SignUp</title>
</head>

<body ng-app="myApp">
	<div class="main container-fluid p-0 mx-auto w-100"
		style="margin-top: 30px !important;">
		<div class="mx-auto w-50 h-50">
			<div class="form-login w-75 h-100 mx-auto">
				<form:form action="/signup" modelAttribute="acc" method="post">
					<%-- <form action="/signup" method="post"> --%>
						<div>
							<p>Tên Đăng Nhập:</p>
							<form:input path="tendangnhap" class="w-100 pl-5 rounded-3"
								type="text" placeholder="Nhập Tên Đăng Nhập"/>
							<form:errors path="tendangnhap" class="err"/>
							<c:if test="${errUserNameExist}"><span class="err">Tên Đăng Nhập đã tồn tại trên Hệ Thống</span></c:if>
							<!-- <input name="tenDangNhap" class="w-100 mb-3 pl-5 rounded-3"
								type="text" placeholder="Nhập Tên Đăng Nhập"> -->
						</div>
						<div>
							<p class="mt-3">Mật Khẩu:</p>
							<form:input path="matkhau" class="w-100  pl-5 rounded-3"
								type="password" placeholder="Nhập Mật Khẩu"/>
							<form:errors path="matkhau" class="err"/>
							<!-- <input name="matKhau" class="w-100 mb-3 rounded-3"
								type="password" placeholder="Nhập Mật Khẩu"> -->
						</div>
						<div>
							<p class="mt-3">Xác Nhận Mật Khẩu:</p>
							<input name="xNMatKhau" class="w-100 pl-5 rounded-3"
								type="password" placeholder="Nhập Xác Nhận Mật Khẩu" value="${xnMK}">
								<c:if test="${err}"><span class="err">Vui lòng nhập Xác Nhận Mật Khẩu</span></c:if>
								<c:if test="${errNoEquals}"><span class="err">Xác Nhận Mật Khẩu không trùng với Mật Khẩu</span></c:if>
						</div>
						<div>
							<p class="mt-3">Họ Và Tên:</p>
							<form:input path="tennguoidung" class="w-100 pl-5 rounded-3"
								type="text" placeholder="Nhập Họ Và Tên"/>
							<form:errors path="tennguoidung" class="err"/>
							<!-- <input name="hoVaTen" class="w-100 mb-3 pl-5 rounded-3"
								type="text" placeholder="Nhập Họ Và Tên"> -->
						</div>
						<div>
							<p class="mt-3">Số Điện Thoại:</p>
							<form:input path="sodienthoai" class="w-100 pl-5 rounded-3"
								type="text" placeholder="Nhập Số Điện Thoại"/>
							<form:errors path="sodienthoai" class="err"/>
							<!-- <input name="soDienThoai" class="w-100 mb-3 rounded-3"
								type="text" placeholder="Nhập Số Điện Thoại"> -->
						</div>
						<div class="mb-3">
							<p class="mt-3">Địa Chỉ:</p>
							<form:input path="diachi" class="w-100 pl-5 rounded-3"
								type="text" placeholder="Nhập Địa Chỉ"/>
							<form:errors path="diachi" class="err"/>
							<!-- <input name="diaChi" class="w-100 mb-3 pl-5 rounded-3"
								type="text" placeholder="Nhập Địa Chỉ"> -->
						</div>
						<div class="w-75 mx-auto" style="text-align: center;">
						<c:if test="${mess}"><span class="success fs-5">Tạo Tài Khoản Thành Công</span></c:if>
							<button type="submit" class="w-100 mt-3 rounded-pill btn-login">--
								Sign Up --</button>
						</div>
						<div class="text-center mt-3 mb-4">
							<span>Have an account ?</span><a class="ms-2" href="/loginForm">Log
								In</a>
						</div>
					<%-- </form> --%>
				</form:form>
			</div>
		</div>
	</div>
</body>

</html>