<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="/static/css/login.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="shortcut icon" type="image/png"
	href="/static/customer/images/Logo.png" />
<title>TUTA &mdash; Book Store - Login</title>
</head>

<body>
	<div class="container-fluid p-0">
		<div class="main container-fluid p-0">
			<div class="mx-auto w-50 h-50">
				<form action="/login" method="post">
					<div class="form-login w-75 h-100 mx-auto">
						<div class="w-100">
							<p>Tên Đăng Nhập:</p>
							<input name="tenDangNhap" class="w-100 mb-3 pl-5 rounded-3"
								type="text" placeholder="Enter your username">

						</div>
						<div class="w-100">
							<p>Mật Khẩu:</p>
							<input name="matKhau" class="w-100 mb-3 rounded-3"
								type="password" placeholder="Enter your password">
							<c:if test="${errACC}">
								<span class="err">Sai Tên Đăng Nhập hoặc Mật Khẩu</span>
							</c:if>
							<c:if test="${errRong}">
								<span class="err">Không Được Bỏ Trống Tên Đăng Nhập hoặc Mật Khẩu</span>
							</c:if>
						</div>

						<div class="w-75 mx-auto">
							<button type="submit" class="w-100 mt-4 rounded-pill btn-login">--
								Log In --</button>
						</div>
						<div class="text-center mt-4 mb-4">
							<span>Don't have an account ?</span><a class="ms-2"
								href="/signupForm">Sign Up</a>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>

</html>