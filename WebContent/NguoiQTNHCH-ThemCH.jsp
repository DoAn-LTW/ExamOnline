<%-- 
    Document   : NguoiQTNHCH-ThemCH
    Created on : Oct 14, 2016, 10:39:56 AM
    Author     : Kelvin
--%>

<%@page import="dao.NoiDungThiDAO"%>
<%@page import="model.NoiDung"%>
<%@page import="model.MonHoc"%>
<%@page import="dao.MonhocDAO"%>
<%@page import="model.Users"%>
<%@page import="model.CauHoi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/examonline" user="root"
	password="14110143" />

<!DOCTYPE html>
<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm câu hỏi</title>

<link href="assets/plugins/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/datatables/buttons.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<!-- Responsive datatable examples -->
<link href="assets/plugins/datatables/responsive.bootstrap4.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/bootstrap-sweetalert/sweet-alert.css"
	rel="stylesheet" type="text/css" />
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />

<!-- App CSS -->
<link href="assets/css/style_OT.css" rel="stylesheet" type="text/css" />
<link href="assets/font-awesome-4.6.3/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<!-- Modernizr js -->

<script src="assets/JS/angular.min.js" type="text/javascript"></script>
<script src="assets/JS/jquery.min.js"></script>

<script src="assets/JS/bootstrap.min.js"></script>

<script>
	var demoApp = angular.module('demoApp', []).controller("InsertMHNDCtrl",
			[ '$scope', function($scope) {
				$scope.success = false;
				$scope.insert = function() {
					$scope.success = true;
				}
			} ]);
</script>
</head>

<body>
	<%
		Users users = null;
		MonHoc monHoc = null;
		NoiDung noidung = null;
		CauHoi cauhoi = null;
		MonhocDAO monhocDAO = new MonhocDAO();
		NoiDungThiDAO noiDungThiDAO = new NoiDungThiDAO();
		if (session.getAttribute("userNHCH") != null) {
			users = (Users) session.getAttribute("userNHCH");
		}
		if (session.getAttribute("insertMH") != null) {
			monHoc = (MonHoc) session.getAttribute("insertMH");
		}
		if (session.getAttribute("insertNoidung") != null) {
			noidung = (NoiDung) session.getAttribute("insertNoidung");
		}
		if (session.getAttribute("insertCauhoi") != null) {
			cauhoi = (CauHoi) session.getAttribute("insertCauhoi");
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
							class="glyphicon glyphicon-home" aria-hidden="true"></span>
						</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="navbar-main">
						<ul class="nav navbar-nav">
							<li><a href="#">Liên hệ <span class="sr-only">(current)</span></a>
							</li>
							<li><a href="#">Hướng dẫn</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown" role="button" aria-haspopup="true"
								aria-expanded="false">Quản lý câu hỏi <span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Thêm câu hỏi</a></li>
									<li><a href="#" id="CSCH">Sửa câu hỏi</a></li>

								</ul></li>
						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li><a href="Login.jsp" class="glyphicon glyphicon-log-out"></a>
							</li>

						</ul>
					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		<div class="main">
			<div class="container" id="Update-CSCH">
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

									<img alt="" /> <a class="dropdown-toggle dropdown-vta-login"
										role="button" id="dropdownMenu1" data-toggle="dropdown"> <%
 	if (users != null) {
 %>
										<span class="hello">Xin chào <%=users.getUserName()%></span> <%
 	}
 %>
										<span class="caret"></span>
									</a>
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
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<ol class="breadcrumb">
						<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
						<li><a href="NguoiQTNHCH-ThemCH.jsp" title="">Quản trị
								câu hỏi</a></li>
						<li class="active">Thêm câu hỏi</li>
					</ol>
				</div>
				<div class="row">
					<p id="update-success"></p>
				</div>
				<div class="row">
					<div class="customDiv-2">
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseOne"
											aria-expanded="true" aria-controls="collapseOne"> 1. Thêm
											môn học - Nội dung</a>
									</h4>
								</div>
								<div id="collapseOne" class="panel-collapse collapse in"
									role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
										<div id="main" ng-app="demoApp" ng-controller="InsertMHNDCtrl">
											<div class="row">
												<div class="col-md-6">
													<form method="post" action="MonHocServlet"
														id="register-form" name="form" ng-submit="insert()"
														novalidate>
														<div class="form-group">
															<label for="inputMaMH">* Mã môn học</label> <input
																name="mamh" id="inputMaMH" type="text"
																class="form-control" placeholder="" ng-model="mamh"
																autocomplete="off" required>

															<!--Dấu check thể hiện việc nhập dữ liệu được nhập là hợp lệ-->
															<i class="fa fa-check text-success"
																ng-show="form.mamh.$dirty && form.mamh.$valid"></i>
															<div ng-show="form.mamh.$dirty && form.mamh.$invalid"
																class="text-danger">
																<i class="fa fa-times text-danger"></i> <span
																	ng-show="form.mamh.$error.required">Bạn chưa
																	nhập mã môn học</span>

															</div>
														</div>
														<div class="form-group">
															<label for="inputTenMH">* Tên môn học</label> <input
																name="tenmh" id="inputTenMH" ng-model="tenmh"
																type="text" class="form-control" placeholder="" required>
															<i class="fa fa-check text-success"
																ng-show="form.tenmh.$dirty && form.tenmh.$valid"></i>

															<div ng-show="form.tenmh.$dirty && form.tenmh.$invalid"
																class="text-danger">
																<i class="fa fa-times text-danger"></i> <span
																	ng-show="form.tenmh.$error.required"> Bạn chưa
																	nhập tên môn học</span>

															</div>
														</div>
														<input type="hidden" value="insertRole" name="command">
														<button type="submit" class="btn btn-primary"
															ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)"
															style="margin-top: 10px; margin-bottom: 10px">
															Thêm</button>
													</form>
													<div class="card-box table-responsive">
														<sql:query var="items" sql="Select *  from monhoc" />
														<table id="datatable-buttons"
															class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Mã môn học</th>
																	<th>Tên môn học</th>

																</tr>
															</thead>
															<tbody>
																<c:forEach items="${items.rowsByIndex}" var="row">
																	<tr>
																		<c:forEach items="${row}" var="col">
																			<td>${col}</td>

																		</c:forEach>
																	</tr>

																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
												<div class="col-md-6">
													<form method="post" action="NoiDungThiServlet"
														id="register-form" name="form1" ng-submit="insert()"
														novalidate>
														<div class="form-group">
															<label for="inputMaND">* Mã nội dung</label> <input
																name="mand" id="inputMaND" type="text"
																class="form-control" placeholder="" ng-model="mand"
																autocomplete="off" required>

															<!--Dấu check thể hiện việc nhập dữ liệu được nhập là hợp lệ-->
															<i class="fa fa-check text-success"
																ng-show="form1.mand.$dirty && form1.mand.$valid"></i>
															<div ng-show="form1.mand.$dirty && form1.mand.$invalid"
																class="text-danger">
																<i class="fa fa-times text-danger"></i> <span
																	ng-show="form1.mand.$error.required">Bạn chưa
																	nhập mã nội dung</span>

															</div>
														</div>
														<div class="form-group">
															<label for="inputTenND">* Tên nội dung</label> <input
																name="tennd" id="inputTenND" ng-model="tennd"
																type="text" class="form-control" placeholder="" required>
															<i class="fa fa-check text-success"
																ng-show="form1.tennd.$dirty && form1.tennd.$valid"></i>

															<div ng-show="form1.tennd.$dirty && form1.tennd.$invalid"
																class="text-danger">
																<i class="fa fa-times text-danger"></i> <span
																	ng-show="form1.tennd.$error.required"> Bạn chưa
																	nhập tên nội dung</span>

															</div>
														</div>
														<div class="form-group">
															<label for="inputMaMH">* Mã môn học</label> <select
																class="form-control input-sm" name="mamh"
																ng-model="manh" required>
																<%
																	for (MonHoc c : monhocDAO.getlistMH()) {
																%>
																<option value=<%=c.getMaMH()%>>
																	<%=c.getMaMH()%>
																</option>
																<%
																	}
																%>
															</select> <i class="fa fa-check text-success"
																ng-show="form.mamh.$dirty && form.manh.$valid"></i>
															<div ng-show="form.mamh.$dirty && form.manh.$invalid"
																class="text-danger"></div>

														</div>
														<input type="hidden" value="insertND" name="command">
														<button type="submit" class="btn btn-primary"
															ng-disabled="!form1.$dirty || (form1.$dirty && form1.$invalid)"
															style="margin-top: 10px; margin-bottom: 10px">
															Thêm</button>

													</form>
													<div class="card-box table-responsive">
														<sql:query var="items" sql="Select *  from noidung" />
														<table id="datatable-buttons"
															class="table table-striped table-bordered">
															<thead>
																<tr>
																	<th>Mã nội dung</th>
																	<th>Tên nội dung</th>
																	<th>Mã môn học</th>

																</tr>
															</thead>
															<tbody>
																<c:forEach items="${items.rowsByIndex}" var="row">
																	<tr>
																		<c:forEach items="${row}" var="col">
																			<td>${col}</td>

																		</c:forEach>
																	</tr>

																</c:forEach>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseTwo"
											aria-expanded="true" aria-controls="collapseTwo"> 2. Nhập
											câu hỏi</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6">
												<form class="form-horizontal" action="ThemCauHoi"
													method="post">
													<div class="form-group">
														<label for="inputEmail3"
															class="col-sm-4 control-label text-left">Mã môn
															học</label>
														<div class="col-sm-8">
															<select class="form-control input-xs" name="maMH">
																<%
																	for (MonHoc c : monhocDAO.getlistMH()) {
																%>
																<option value=<%=c.getMaMH()%>>
																	<%=c.getMaMH()%>
																</option>
																<%
																	}
																%>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label for="inputEmail3"
															class="col-sm-4 control-label text-left">Nội dung
															thi</label>
														<div class="col-sm-8">
															<select class="form-control input-xs" name="maND">
																<%
																	for (NoiDung c : noiDungThiDAO.getListND()) {
																%>
																<option value=<%=c.getMaND()%>>
																	<%=c.getMaND()%>
																</option>
																<%
																	}
																%>
															</select>
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-4"></div>
														<div class="col-sm-8">
															<button type="button" class="btn btn-info">Xem
																câu hỏi</button>
															<button type="button" class="btn btn-primary"
																data-toggle="modal" data-target=".bs-example-modal-lg">Thêm
																câu hỏi</button>
															<div class="modal fade bs-example-modal-lg" tabindex="-1"
																role="dialog" aria-labelledby="myLargeModalLabel">
																<div class="modal-dialog modal-lg" role="document">
																	<div class="modal-content">
																		<div class="modal-header">
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																			<h4 class="modal-title" id="myModalLabel">Thêm
																				câu hỏi</h4>
																		</div>

																		<div class="modal-body">
																			<div class="col-md-6">
																				<div class="form-group">
																					<label for="inputMaCH"
																						class="col-sm-4 control-label">Mã câu hỏi</label>
																					<div class="col-sm-8">
																						<input type="text" name="mach"
																							class="form-control" required="" id="inputMaCH"
																							placeholder=""> <span
																							class="field-validation-valid text-danger"
																							data-valmsg-for="Username"
																							data-valmsg-replace="true"></span>

																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputNDCH"
																						class="col-sm-4 control-label">Nội dung
																						câu hỏi</label>
																					<div class="col-sm-8">
																						<textarea class="form-control" name="ndcauhoi"
																							rows="3" col="10"></textarea>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputDiem"
																						class="col-sm-4 control-label">Điểm</label>
																					<div class="col-sm-8">
																						<input type="text" name="diem"
																							class="form-control" required="" id="inputDiem"
																							placeholder="">
																					</div>
																				</div>
																			</div>
																			<div class="col-md-6">
																				<div class="form-group">
																					<label for="inputDAA"
																						class="col-sm-4 control-label">Phương án 1</label>
																					<div class="col-sm-8">
																						<textarea class="form-control" name="PAA" rows="2"
																							col="10" id="inputDAA"></textarea>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputDAB"
																						class="col-sm-4 control-label">Phương án 2</label>
																					<div class="col-sm-8">
																						<textarea class="form-control" name="PAB" rows="2"
																							col="10" id="inputDAB"></textarea>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputDAC"
																						class="col-sm-4 control-label">Phương án 3</label>
																					<div class="col-sm-8">
																						<textarea class="form-control" name="PAC" rows="2"
																							col="10" id="inputDAC"></textarea>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputDAD"
																						class="col-sm-4 control-label">Phương án 4</label>
																					<div class="col-sm-8">
																						<textarea class="form-control" name="PAD" rows="2"
																							col="10" id="inputDAD"></textarea>
																					</div>
																				</div>
																				<div class="form-group">
																					<label for="inputDA" class="col-sm-4 control-label">Đáp
																						án</label>
																					<div class="col-sm-8">
																						<input type="text" class="form-control" name="DA"
																							required="" id="inputDA" placeholder="">
																					</div>
																				</div>
																			</div>
																		</div>
																		<div class="modal-footer">
																			<button type="button" class="btn btn-default"
																				data-dismiss="modal">Đóng</button>
																			<button type="submit" class="btn btn-primary">Lưu</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</form>
											</div>
											<div class="col-md-6"></div>
										</div>

									</div>
								</div>
							</div>
							<div class="panel panel-primary">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
										<a role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseThree"
											aria-expanded="true" aria-controls="collapseThree"> 3.
											Import ngân hàng câu hỏi</a>
									</h4>
								</div>
								<div id="collapseFour" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
										<div class="row">
											<div class="col-md-6">
												<form class="form-horizontal">
													<div class="form-group">
														<label for="inputEmail3"
															class="col-sm-4 control-label text-left">Môn thi</label>
														<div class="col-sm-8">
															<select class="form-control input-xs" value="">
																<option>1</option>
																<option>2</option>
																<option>3</option>
																<option>4</option>
																<option>5</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<label for="inputEmail3"
															class="col-sm-4 control-label text-left">Nội dung
															thi</label>
														<div class="col-sm-8">
															<select class="form-control input-xs" value="">
																<option>1</option>
																<option>2</option>
																<option>3</option>
																<option>4</option>
																<option>5</option>
															</select>
														</div>
													</div>
													<div class="form-group">
														<div class="col-sm-4 control-label text-left"></div>
														<div class="col-sm-8">
															<button type="button" class="btn btn-success"
																data-toggle="modal" data-target=".bs-example-modal-sm">Import
															</button>
															<div class="modal fade bs-example-modal-sm" tabindex="-1"
																role="dialog" aria-labelledby="mySmallModalLabel">
																<div class="modal-dialog modal-sm" role="document">
																	<div class="modal-content">
																		<p>Chọn đường dẫn để tải tệp lên:</p>
																		<input type="file" name=""> <a href="#"
																			class="btn btn-success" id="btn-OK" role="button">OK</a>
																	</div>
																</div>
															</div>
															<button type="" class="btn btn-danger"
																style="margin-left: 10px" id="btn-CN-import">Cập
																nhật</button>
														</div>
													</div>
												</form>
											</div>
											<div class="col-md-6"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<br> <br> <br>
		<jsp:include page="Footer.jsp"></jsp:include>
	</div>
	<!-- Include all compiled plugins (below), or include individual files as needed -->



</body>

</html>
