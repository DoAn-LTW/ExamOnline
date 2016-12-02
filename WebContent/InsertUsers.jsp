<%-- 
    Document   : DSTaiKhoan
    Created on : Oct 14, 2016, 9:31:18 AM
    Author     : Kelvin
--%>
<%@page import="javax.jws.soap.SOAPBinding.Use"%>
<%@page import="model.Users"%>
<%@page import="dao.UsersDAO"%>
<%@page import="model.Role"%>
<%@page import="dao.RoleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/examonline" user="root"
	password="14110143" />
<!DOCTYPE html>
<html>

<!-- Mirrored from coderthemes.com/uplon_1.4/light/tables-datatable.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Oct 2016 16:07:41 GMT -->

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- App title -->
<title>Admin - Danh sách tài khoản</title>

<!-- DataTables -->

<link href="assets/plugins/bootstrap-sweetalert/sweet-alert.css"
	rel="stylesheet" type="text/css" />
<!-- Switchery css -->
<link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" />

<!-- App CSS -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'../../../www.google-analytics.com/analytics.js', 'ga');

	ga('create', 'UA-79190402-1', 'auto');
	ga('send', 'pageview');
</script>

<!-- Modernizr js -->
<script src="assets/JS/modernizr.min.js"></script>
<script src="assets/JS/angular.min.js" type="text/javascript"></script>
<script src="assets/JS/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				var x_timer;
				$("#username").keyup(function(e) {
					clearTimeout(x_timer);
					var user_name = $(this).val();
					x_timer = setTimeout(function() {
						check_username_ajax(user_name);
					}, 1000);
				});

				function check_username_ajax(username) {
					$("#user-result").html(
							'<img src="assets/Images/ajax-loader.gif" />');
					$.post('CheckEmailServlet', {
						'username' : username
					}, function(data) {
						$("#user-result").html(data);
					});
				}
			});
</script>
<link
	href="assets/material-design-iconic-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" type="text/css" />

</head>

<body class="fixed-left">
	<%
		UsersDAO usersDAO = new UsersDAO();
		RoleDAO roleDAO = new RoleDAO();
		Users users = null;
		Role role = null;
		if (session.getAttribute("userAdmin") != null) {
			users = (Users) session.getAttribute("userAdmin");
		}
	%>
	<!-- Begin page -->
	<div id="wrapper">
		<!-- Top Bar Start -->
		<div class="topbar">
			<!-- LOGO -->
			<div class="topbar-left">
				<a href="Admin.jsp" class="logo"> <i
					class="zmdi zmdi-group-work icon-c-logo"></i> <span>ADMIN</span>
				</a>
			</div>
			<div class="navbar navbar-custom">
				<ul class="nav navbar-nav">
					<li class="nav-item">
						<button
							class="button-menu-mobile open-left waves-light waves-effect">
							<i class="zmdi zmdi-menu"></i>
						</button>
					</li>
					<li class="nav-item hidden-mobile">
						<form role="search" class="app-search">
							<input type="text" placeholder="Search..." class="form-control">
							<a href="#"><i class="zmdi zmdi-search"></i></a>
						</form>
					</li>
				</ul>
				<ul class="nav navbar-nav pull-right">

					<li class="nav-item dropdown notification-list"><a
						class="nav-link dropdown-toggle arrow-none waves-effect waves-light nav-user"
						data-toggle="dropdown" href="#" role="button"
						aria-haspopup="false" aria-expanded="false"> <img src=""
							alt="user" class="img-circle">
					</a>
						<div
							class="dropdown-menu dropdown-menu-right dropdown-arrow profile-dropdown "
							aria-labelledby="Preview">
							<!-- item-->
							<div class="dropdown-item noti-title">

								<h5 class="text-overflow">
									<small>Xin chào <%=users.getUserName()%></small>
								</h5>

							</div>

							<!-- item-->

							<a href="Profile.jsp?UserName=<%=users.getUserName()%>"
								class="dropdown-item notify-item"> <i
								class="zmdi zmdi-account-circle"></i> <span>Profile</span>
							</a>

							<!-- item-->
							<a href="Doimatkhau.jsp" class="dropdown-item notify-item"> <i
								class="zmdi zmdi-lock-open"></i> <span>Đổi mật khẩu</span>

							</a>

							<!-- item-->
							<a href="Login.jsp" class="dropdown-item notify-item"> <i
								class="zmdi zmdi-power"></i> <span>Logout</span>
							</a>

						</div></li>

				</ul>
			</div>
		</div>
		<div class="left side-menu">
			<div class="sidebar-inner slimscrollleft">
				<!--- Sidemenu -->
				<div id="sidebar-menu">
					<ul>
						<li class="text-muted menu-title"><i class="fa fa-users"
							aria-hidden="true"></i> Quản lý tài khoản</li>
						<li class="has_sub"><a href="InsertUsers.jsp"
							class="waves-effect" id="DSTK"><span
								style="margin-left: 20px">Thêm tài tài khoản</span> </a></li>
						<li class="has_sub"><a href="DSTaiKhoan.jsp"
							class="waves-effect" id="DSTK"><span
								style="margin-left: 20px">Danh sách tài khoản</span> </a></li>
						<li class="has_sub"><a href="javascript:void(0);"
							class="waves-effect"><span style="margin-left: 20px">Chi
									tiết </span> <span class="menu-arrow"></span></a>
							<ul class="list-unstyled">
								<li><a href="DSTK-NQTNHCauHoi.jsp" id="DSTK-QTNHCH">Người
										quản trị ngân hàng câu hỏi</a></li>
								<li><a href="DSTK-NguoiRaDe.jsp" id="DSTK-NRD">Người ra
										đề</a></li>
								<li><a href="DSTKNQTKyThi.jsp" id="DSTK-NQTKT">Người
										quản trị kỳ thi</a></li>
								<li><a href="DSTKSinhVien.jsp" id="DSTK-SV">Sinh viên</a></li>
							</ul></li>
						<li class="has_sub"><a href="DSRole.jsp" class="waves-effect"><span
								style="margin-left: 20px"> Vai trò </span></a></li>

					</ul>
					<div class="clearfix"></div>
				</div>
				<!-- Sidebar -->
				<div class="clearfix"></div>

			</div>
		</div>
		<!-- Left Sidebar-->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">
					<div class="row">
						<div class="col-xs-12">
							<div class="page-title-box">
								<h4 class="page-title">
									HCMUTE <small>EXAM</small>
								</h4>
								<ol class="breadcrumb ">
									<li><a href="OnlineTest.jsp">Trang chủ</a></li>
									<li><a href="Admin.jsp">Admin</a></li>
									<li class="active">Danh sách tài khoản</li>
								</ol>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="row">
						<h2>THÊM TÀI KHOẢN</h2>
					</div>
					<div class="row">
						<div id="main" ng-app="demoApp" ng-controller="RegisterCtrl">
							<form method="post" action="UserServlet" id="register-form"
								name="form" ng-submit="register()" novalidate>
								<div class="form-group">
									<label for="username">* Tên đăng nhập</label> <input
										name="username" id="username" type="text" class="form-control"
										placeholder="" ng-model="username"
										autocomplete="off" required> <span id="user-result"></span>
									<!--Dấu check thể hiện việc nhập dữ liệu được nhập là hợp lệ-->
									<div ng-show="form.username.$dirty && form.username.$invalid"
										class="text-danger">
										<i class="fa fa-times text-danger"></i> <span>Bạn chưa
											nhập tên tài khoản</span>
									</div>
								</div>
								<div class="form-group">
									<label for="password">* Mật khẩu</label> <input name="password"
										id="form-input" ng-model="password" type="password"
										class="form-control" placeholder="" ng-minlength="6"
										ng-maxlength="30" required> <i
										class="fa fa-check text-success"
										ng-show="form.password.$dirty && form.password.$valid"></i>

									<div ng-show="form.password.$dirty && form.password.$invalid"
										class="text-danger">
										<i class="fa fa-times text-danger"></i> <span
											ng-show="form.password.$error.required"> Mật khẩu
											không được bỏ trống</span> <span
											ng-show="form.password.$error.minlength"> Mật khẩu
											phải dài hơn 6 kí tự</span> <span
											ng-show="form.password.$error.maxlength"> Mật khẩu
											phải ngắn hơn 30 kí tự</span>
									</div>
								</div>

								<div class="form-group">
									<label for="fullname">* Tên người dùng</label> <input
										name="fullname" id="form-input" type="text"
										class="form-control" placeholder=""
										ng-model="fullname" autocomplete="off" required> <i
										class="fa fa-check text-success"
										ng-show="form.fullname.$dirty && form.fullname.$valid"></i>

									<!--Dấu check thể hiện việc nhập dữ liệu được nhập là hợp lệ-->

									<div ng-show="form.fullname.$dirty && form.fullname.$invalid"
										class="text-danger">
										<i class="fa fa-times text-danger"></i>

										<!--Nếu dữ liệu không hợp lệ-->
										<span ng-show="form.fullname.$error.required">Bạn chưa
											nhập tên người dùng</span>
									</div>
								</div>
								<div class="form-group">
									<label for="inputemail">* Email</label> <input name="email"
										id="form-input" type="email" class="form-control"
										placeholder="" ng-model="email" autocomplete="off"
										required> <i class="fa fa-check text-success"
										ng-show="form.email.$dirty && form.email.$valid"></i>

									<!--Dấu check thể hiện việc nhập dữ liệu được nhập là hợp lệ-->

									<div ng-show="form.email.$dirty && form.email.$invalid"
										class="text-danger">
										<i class="fa fa-times text-danger"></i>

										<!--Nếu dữ liệu không hợp lệ-->
										<span ng-show="form.email.$error.required">Bạn chưa
											nhập email</span>
									</div>
								</div>
								<div class="form-group">
									<label for="inputlop">* Lớp</label> <input name="lop"
										id="form-input" type="text" class="form-control"
										placeholder="Nếu là sinh viên thì nhập mã lớp vào đây" autocomplete="off" required>
								</div>
								<div class="form-group">
									<label for="inputRole">* Vai trò</label> <select
										class="form-control input-sm" name="Role" id="form-input"
										ng-model="role" required>
										<%
											for (Role c : roleDAO.getListRole()) {
										%>
										<option value=<%=c.getRoleID()%>>
											<%=c.getRoleID()%>
										</option>
										<%
											}
										%>
									</select> <i class="fa fa-check text-success"
										ng-show="form.role.$dirty && form.role.$valid"></i>
									<div ng-show="form.role.$dirty && form.role.$invalid"
										class="text-danger"></div>
								</div>
								<input type="hidden" value="insert" name="command">
								<button type="submit" class="btn btn-primary"
									ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)"
									style="margin-top: 10px; margin-bottom: 10px">Đăng ký
								</button>


							</form>
						</div>

					</div>

				</div>
			</div>
		</div>
		<footer class="footer text-right"> 2016 © HCMUTE </footer>
	</div>
	<!-- content -->
	<script>
		var resizefunc = [];
	</script>

	<!-- jQuery  -->

	<script src="assets/JS/tether.min.js"></script>
	<!-- Tether for Bootstrap -->
	<script src="assets/JS/bootstrap.min.js"></script>
	<script src="assets/JS/detect.js"></script>
	<script src="assets/JS/fastclick.js"></script>
	<script src="assets/JS/jquery.blockUI.js"></script>
	<script src="assets/JS/waves.js"></script>
	<script src="assets/JS/jquery.nicescroll.js"></script>
	<script src="assets/JS/jquery.scrollTo.min.js"></script>
	<script src="assets/JS/jquery.slimscroll.js"></script>
	<script src="assets/plugins/switchery/switchery.min.js"></script>

	<!-- Sweet Alert js -->
	<script src="assets/plugins/bootstrap-sweetalert/sweet-alert.min.js"
		type="text/javascript"></script>
	<script src="assets/pages/jquery.sweet-alert.init.js"
		type="text/javascript"></script>
	<!-- Required datatable js -->
	<script src="assets/plugins/datatables/jquery.dataTables.min.js"></script>


	<script src="assets/JS/jquery.core.js"></script>
	<script src="assets/JS/jquery.app.js"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$('#datatable').DataTable();

					//Buttons examples
					var table = $('#datatable-buttons').DataTable({
						lengthChange : false,
						buttons : [ 'copy', 'excel', 'pdf', 'colvis' ]
					});

					table.buttons().container().appendTo(
							'#datatable-buttons_wrapper .col-md-6:eq(0)');
				});
	</script>
	<script>
		var demoApp = angular.module('demoApp', []).controller("RegisterCtrl",
				[ '$scope', function($scope) {
					$scope.success = false;
					$scope.register = function() {
						$scope.success = true;
					}
				} ]);
	</script>
</body>

<!-- Mirrored from coderthemes.com/uplon_1.4/light/tables-datatable.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 14 Oct 2016 16:07:55 GMT -->

</html>