<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>TUTA | ADMIN</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<link rel="stylesheet" href="/static/admin/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
<link rel="stylesheet" href="/static/admin/css/ready.css">
<link rel="stylesheet" href="/static/admin/css/demo.css">
<link rel="shortcut icon" type="image/png"
	href="/static/admin/img/Logo.png" />
</head>

<body>
	<div class="wrapper">
		<div class="main-header">
			<div class="logo-header">
				<a href="index.html" class="logo"> TUTA BOOK STORE </a>
				<button class="navbar-toggler sidenav-toggler ml-auto" type="button"
					data-toggle="collapse" data-target="collapse"
					aria-controls="sidebar" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<button class="topbar-toggler more">
					<i class="la la-ellipsis-v"></i>
				</button>
			</div>
			<nav class="navbar navbar-header navbar-expand-lg">
				<div class="container-fluid">
					<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
						<li class="nav-item dropdown">
							<a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="/static/admin/img/bao.jpg" alt="user-img" width="36" class="img-circle"><span >${nguoiDung.tennguoidung}</span></span> </a>
							<ul class="dropdown-menu dropdown-user">
								<li>
									<div class="user-box">
										<div class="u-img"><img class="rounded-circle" src="/static/admin/img/bao.jpg" alt="user"></div>
										<div class="u-text">
											
											<p class="text-muted">${nguoiDung.sodienthoai}</p><a href="/logout" class="btn btn-rounded btn-danger btn-sm">Đăng xuất</a></div>
										</div>
									</li>
								</ul>
								<!-- /.dropdown-user -->
							</li>
						</ul>
					</div>
				</nav>
			</div>
			<div class="sidebar">
				<div class="scrollbar-inner sidebar-wrapper">
					<div class="user">
						<div class="photo">
							<img src="/static/admin/img/bao.jpg">
						</div>
						<div class="info">
							<a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									${nguoiDung.tennguoidung}
									<span class="user-level">Administrator</span>
									<span class="caret"></span>
								</span>
							</a>
							<div class="clearfix"></div>

							<div class="collapse in" id="collapseExample" aria-expanded="true" style="">
								<ul class="nav">
									<!-- <li>
										<a href="#profile">
											<span class="link-collapse">My Profile</span>
										</a>
									</li> -->
									
								</ul>
							</div>
						</div>
					</div>
				<ul class="nav">
					<li class="nav-item">
						<a href="/indexAdmin">
							<i class="la la-dashboard"></i>
							<p>Dashboard</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="/sachForm">
							<i class="la la-keyboard-o"></i>
							<p>QL Sách</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="/loaiSachForm">
							<i class="la la-keyboard-o"></i>
							<p>QL Loại Sách</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="/nguoidung">
							<i class="la la-keyboard-o"></i>
							<p>QL Người Dùng</p>
						</a>
					</li>
					<li class="nav-item">
						<a href="/donhang">
							<i class="la la-keyboard-o"></i>
							<p>QL Đơn Hàng</p>
						</a>
					</li>
					
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<h4 class="page-title">Quản Lí Loại Sách</h4>
					<div class="row">
						<div class="col-md-4">
							<div class="card">
								<div class="card-header">
									<div class="card-title">Điền Thông Tin</div>
								</div>
								<form:form action="/loaisachForm" modelAttribute="item" method="get">
								<div class="card-body">
									<div class="form-group">
										<label>Mã Loại Sách</label>
										<form:input path="maloai"  type="text" class="form-control" placeholder="Nhập Mã loại Sách"/> 
										<td><form:errors path="maloai" cssClass="error" /></td>
									</div>
									<div class="form-group">
										<label>Tên Loại Sách</label> 
										<form:input path="tenloai"  type="text" class="form-control" placeholder="Nhập Tên loại Sách"/>
										<td><form:errors path="tenloai" cssClass="error" /></td>
									</div>
									<div class="form-group">
										<label>Mô Tả</label> 
										<form:input path="mota"  type="text" class="form-control" placeholder="Mô Tả loại Sách"/>
										<td><form:errors path="mota" cssClass="error" /></td>
									</div>
								</div>
								<div class="card-action row">
									<button formaction="/loaisachForm" class="btn btn-info mx-auto">Mới</button>
									<button formaction="/loaisachForm/createLoaiSach" class="btn btn-success mx-auto">Thêm</button>
									<button formaction="/loaisachForm/updateLoaiSach" class="btn btn-warning mx-auto">Sửa</button>
									<a href="/loaisachForm/deleteLoaiSach/${item.maloai}" class="btn btn-danger mx-auto">Xoá</a>
								</div>
								</form:form>
							</div>
						</div>
						<div class="col-md-8">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th scope="col">Mã Loại Sách</th>
										<th scope="col">Tên Loại Sách</th>
										<th scope="col">Mô Tả</th>
										<th scope="col">Thao Tác</th>
									</tr>
								</thead>
								<c:forEach var="item" items="${page.content}">
									<tr>
										<td>${item.maloai}</td>
										<td>${item.tenloai}</td>
										<td>${item.mota}</td>
										<td><a href="/loaisachForm/editLoaiSach/${item.maloai}">Sửa</a></td>
									<tr>
								</c:forEach>
								<table>
									<div class="d-flex justify-content-center">
										<a class="btn btn-primary mx-auto text-white"
											href="/loaisachForm?p=0">Về Đầu</a> <a
											class="btn btn-primary mx-auto text-white"
											href="/loaisachForm?p=${page.number-1}">Lùi</a> <a
											class="btn btn-primary mx-auto text-white"
											href="/loaisachForm?p=${page.number+1}">Tiến</a> <a
											class="btn btn-primary mx-auto text-white"
											href="/loaisachForm?p=${page.totalPages-1}">Về Cuối</a>
									</div>
									</div>
									</div>
									</div>
									</div>
									</div>
									<footer class="footer">
										<div class="container-fluid">
											<div class="copyright ml-auto">
												2023, made with <i class="la la-heart heart text-danger"></i>
												by <a href="https://www.facebook.com/tranvannhan.77c1">Trần
													Văn Nhân</a>
											</div>
										</div>
									</footer>
									</div>
									</div>
									</div>
									</div>
									<!-- Modal -->
									<div class="modal fade" id="modalUpdate" tabindex="-1"
										role="dialog" aria-labelledby="modalUpdatePro"
										aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered"
											role="document">
											<div class="modal-content">
												<div class="modal-header bg-primary">
													<h6 class="modal-title">
														<i class="la la-frown-o"></i> Under Development
													</h6>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body text-center">
													<p>
														Currently the pro version of the <b>Ready Dashboard</b>
														Bootstrap is in progress development
													</p>
													<p>
														<b>We'll let you know when it's done</b>
													</p>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>
</body>
<script src="/static/admin/js/core/jquery.3.2.1.min.js"></script>
<script
	src="/static/admin/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="/static/admin/js/core/popper.min.js"></script>
<script src="/static/admin/js/core/bootstrap.min.js"></script>
<script src="/static/admin/js/plugin/chartist/chartist.min.js"></script>
<script
	src="/static/admin/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
<script
	src="/static/admin/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
<script
	src="/static/admin/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
<script src="/static/admin/js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
<script
	src="/static/admin/js/plugin/jquery-mapael/maps/world_countries.min.js"></script>
<script src="/static/admin/js/plugin/chart-circle/circles.min.js"></script>
<script
	src="/static/admin/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
<script src="/static/admin/js/ready.min.js"></script>

</html>