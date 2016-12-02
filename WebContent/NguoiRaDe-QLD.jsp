<%-- 
    Document   : NguoiRaDe-QLD
    Created on : Oct 14, 2016, 10:52:31 AM
    Author     : BAO UY
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Users"%>
<%@page import="model.MonHoc"%>
<%@page import="model.NoiDung"%>
<%@page import="dao.MonhocDAO"%>
<%@page import="dao.NoiDungThiDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý đề</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/style_OT.css" rel="stylesheet" type="text/css" />
<!-- Latest compiled and minified CSS -->
<!-- Optional theme -->
<link href="assets/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<!-- Latest compiled and minified JavaScript -->
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script src="assets/JQuery/jquery-3.1.1.min.js" type="text/javascript"></script>
<link
	href="assets/material-design-iconic-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Ubuntu"
	rel="stylesheet">
<body>
	<%
		Users users = null;
		MonhocDAO mhDAO = new MonhocDAO();
		NoiDungThiDAO ndtDAO = new NoiDungThiDAO();
		NoiDung noiDung = new NoiDung();
		if (session.getAttribute("userQLDE") != null) {
			users = (Users) session.getAttribute("userQLDE");
		}
	%>
	<div class="wapper">
		<jsp:include page="Header.jsp"></jsp:include>
		<div class="main-menu">
			<nav class="navbar navbar-inverse" data-spy="affix" role="navigation"
				data-offset-top="55">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar-main"
							aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="OnlineTest.jsp"> <span
							class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="navbar-main">
						<ul class="nav navbar-nav">
							<li><a href="Contact.jsp">Liên hệ <span class="sr-only">(current)</span></a></li>
							<li><a href="#">Hướng dẫn</a></li>
							<li><a href="NguoiRaDe-QLD.jsp">Quản lý đề thi</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="Login.jsp" class="glyphicon glyphicon-log-out"></a></li>
						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		<div class="main">
			<div class="container" id="Update-QLND">
				<div class="row">
					<div class="col-md-9 col-sm-8 col-xs-0">
						<div class="row">
							<div class="col-sm-6"></div>
						</div>
					</div>
					<div class="col-md-3 col-sm-4 col-xs-9">
						<div class="block-user-info block-user-info-responsive logged">
							<ul class="clearfix">
								<div class="dropdown dropdown-vta">
									<a class="dropdown-toggle dropdown-vta-login" role="button"
										id="dropdownMenu1" data-toggle="dropdown"> <%
 	if (users != null) {
 %> <span class="hello">Xin chào <span
											style="color: #ED7642; font-weight: 600"> <%=users.getUserName()%></span>
											<span class="caret"></span> <%
 	}
 %></a>
									<ul class="dropdown-menu dropdown-vta-sub-menu"
										aria-labelledby="dropdownMenu1">
										<li><a
											href="Profile.jsp?UserName=<%=users.getUserName()%>">Thông
												tin cá nhân</a></li>

										<li><a
											href="Doimatkhau.jsp?UserName=<%=users.getUserName()%>">Đổi
												mật khẩu</a></li>
										<li><a href="Login.jsp">Thoát</a></li>
									</ul>
								</div>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<ol class="breadcrumb">
						<span class="glyphicon glyphicon-home" aria-hidden="true"
							style="color: #000 !important"></span>
						<li><a href="OnlineTest.jsp">Trang chủ</a></li>
						<li class="active">Quản lý đề</li>
					</ol>
				</div>
				<div class="row">

					<div class="panel-group" id="accordion" role="tablist"
						aria-multiselectable="true">
						<div class="panel panel-primary">
							<div class="panel-heading" role="tab" id="headingOne">
								<h4 class="panel-title">
									<a role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseOne"
										aria-expanded="true" aria-controls="collapseOne">1. Tạo
										mới đề thi</a>
								</h4>
							</div>

							<div id="collapseOne" class="panel-collapse collapse in"
								role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body">
									<div class="col-md-6">
										<div id="form-taodethi" ng-app="demoApp"
											ng-controller="InsertMHNDCtrl">
											<form method="post" action="TaoDeThi" id="login-taodethi"
												class="form-horizontal" name="form" ng-submit="login()"
												novalidate>
												<div class="form-group">
													<label for="inputMD" class="col-sm-4 control-label">Mã
														đề: </label>
													<div class="col-xs-8">
														<input name="made" type="text" class="form-control"
															placeholder="" ng-model="made" autocomplete="off"
															required> <i class="fa fa-check text-success"
															ng-show="form.made.$dirty && form.made.$valid"></i>

														<!--Dấu check thể hiệviệc nhập dữ liệu được nhập là hợp lệ-->

														<div ng-show="form.made.$dirty && form.made.$invalid"
															class="text-danger">
															<i class="fa fa-times text-danger"></i>

															<!--Nếu dữ liệu không hợp lệ-->
															<span ng-show="form.made.$error.required"></span>
														</div>

													</div>
												</div>
												<div class="form-group">
													<label for="inputMD" class="col-sm-4 control-label">Tên
														đề: </label>
													<div class="col-xs-8">
														<input name="tende" type="text" class="form-control"
															placeholder="" ng-model="tende" autocomplete="off"
															required> <i class="fa fa-check text-success"
															ng-show="form.tende.$dirty && form.tende.$valid"></i>
	
														<!--Dấu check thể hiệviệc nhập dữ liệu được nhập là hợp lệ-->

														<div ng-show="form.tende.$dirty && form.tende.$invalid"
															class="text-danger">
															<i class="fa fa-times text-danger"></i>

															<!--Nếu dữ liệu không hợp lệ-->
															<span ng-show="form.tende.$error.required"></span>
														</div>

													</div>
												</div>
												<div class="form-group">
													<label for="mon" class="col-sm-4 control-label">Môn
														thi: </label>
													<div class="col-sm-8">
														<select class="form-control" name="mamh">
														<option value="">Chọn</option>
															<%
																for (MonHoc c : mhDAO.getlistMH()) {
															%>
															<option value="<%=c.getMaMH()%>">
																<%=c.getMaMH()%>
															</option>
															<%
																}
															%>
														</select> <i class="fa fa-check text-success"
															ng-show="form.mamh.$dirty && form.mamh.$valid"></i>
														<div ng-show="form.mamh.$dirty && form.mamh.$invalid"
															class="text-danger"></div>

													</div>
												</div>

												<div class="form-group">

													<label for="noidung"
														class="col-sm-4 control-label required">Nội dung:
													</label>
													<div class="col-sm-8">
														<select class="form-control" id="noidung" name="mand">
														<option value="">Chọn</option>
															<%
																for (NoiDung nd : ndtDAO.getListND()) {
															%>
															<option value=<%=nd.getMaND()%>>
																<%=nd.getMaND()%>
															</option>
															<%
																}
															%>
														</select> <i class="fa fa-check text-success"
															ng-show="form.mand.$dirty && form.mand.$valid"></i>
														<div ng-show="form.mand.$dirty && form.mand.$invalid"
															class="text-danger"></div>
													</div>
												</div>

												<div class="form-group">
													<label for="soch" class="col-sm-4 control-label">Số
														câu hỏi lấy: </label>
													<div class="col-sm-8">
														<input class="form-control" type="text" id="soch" min="1"
															max="30" name="socauhoi" placeholder="Số câu hỏi sẽ lấy"
															ng-model="socauhoi" required> <span
															style="color: red"
															ng-show="form.socauhoi.$dirty && form.socauhoi.$invalid">
															<span ng-show="form.socauhoi.$error.required"></span>
														</span>
													</div>
												</div>

												<div class="form-group">
													<div class="col-sm-4"></div>
													<div class="col-sm-8">
														<button type="submit" class="btn btn-danger" id="btn-CN"
															ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">
															Thêm</button>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="panel panel-primary">
							<div class="panel-heading" role="tab" id="headingTwo">
								<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse"
										data-parent="#accordion" href="#collapseTwo"
										aria-expanded="false" aria-controls="collapseTwo">2. Danh
										sách các đề đã tạo</a>
								</h4>
							</div>
							<div id="collapseTwo" class="panel-collapse collapse"
								role="tabpanel" aria-labelledby="headingTwo">
								<div class="panel-body">

									<div class="row">
										<%
											Connection con = null;
											PreparedStatement ps = null;
											try {
												Class.forName("com.mysql.jdbc.Driver");
												con = DriverManager
														.getConnection("jdbc:mysql://localhost:3306/examonline" + "?user=root&password=14110143");
												String sql = "SELECT a.MaMH,MaDe,SLCH, TenMH from "
														+ "(select MaMH,MaDe,COUNT(dt.MaCH) as SLCH from ctdethi dt inner join cauhoi ch on dt.MaCH=ch.MaCH GROUP BY MaDe) as a "
														+ "inner JOIN monhoc mh on a.MaMH=mh.MaMH";
												ps = con.prepareCall(sql);
												ResultSet rs = ps.executeQuery(sql);
										%>
										<div class="table-responsive">
											<table class="table table-hover">
												<thead>
													<tr>
														<th>Mã đề</th>
														<th>Môn</th>
														<th>Số câu hỏi</th>
														<th>Hành động</th>
													</tr>
												</thead>
												<tbody>
													<%
														while (rs != null && rs.next()) {
													%>
													<tr>
														<td><%=rs.getString("MaDe")%></td>
														<td><%=rs.getString("TenMH")%></td>
														<td><%=rs.getInt("SLCH")%></td>
														<td><a href="XoaDeThi?maDe=<%=rs.getString("MaDe")%>"
															onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a></td>
													</tr>
													<%
														}
													%>
												</tbody>
											</table>

										</div>
										<%
											} catch (Exception e) {
												out.println(e.getMessage());
											}
										%>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br> <br> <br> <br> <br>
		<jsp:include page="Footer.jsp"></jsp:include>
		<button type="button" class="back-to-top" data-toggle="tooltip"
			data-placement="top" title="Lên đầu trang">
			<p>
				<i class="zmdi zmdi-chevron-up"></i>
			</p>
		</button>
	</div>
	<script src="assets/JS/angular.min.js" type="text/javascript"></script>
	<script src="assets/JQuery/jquery-3.1.1.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script>
		var demoApp = angular.module('demoApp', []).controller(
				"InsertMHNDCtrl", [ '$scope', function($scope) {
					$scope.success = false;
					$scope.register = function() {
						$scope.success = true;
					}
				} ]);
	</script>
	<script>
		function myFunction() {
			var x = document.getElementById("mhSelect").value;
			document.getElementById("demo").innerHTML = x;
		}
	</script>
	<script>
		function myFunction() {
			document.getElementById("demo").innerHTML = "Xóa thành công đề thi";
		}
	</script>
</body>
</html>
