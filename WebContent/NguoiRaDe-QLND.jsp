<%-- 
    Document   : NguoiRaDe-QLND
    Created on : Oct 14, 2016, 11:16:32 AM
    Author     : Kelvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Quản lý nhóm đề</title>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/style_OT.css" rel="stylesheet" type="text/css"/>
<!-- Latest compiled and minified CSS -->
<!-- Optional theme -->
<link href="assets/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
<!-- Latest compiled and minified JavaScript -->
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="assets/JQuery/jquery-3.1.1.min.js" type="text/javascript"></script>
<link href="assets/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-md-10">
                <p class="hello">Xin chào</p>

            </div>
            <div class="col-md-2">
                <div class="dropdown">
                    <a href="#" data-toggle="dropdown">
                                Tên Nguoi QTNHCH
                                <span class="caret"></span></a>
                    <ul class="dropdown-menu" aria-labelledby="dLabel">
                        <li><a href="Profile.jsp" title="">Sửa thông tin cá nhân</a>
                        </li>
                        <li><a href="Doimatkhau.jsp" title="">Đổi mật khẩu</a>
                        </li>
                        <li><a href="Login.jsp" title="">Đăng xuất</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <ol class="breadcrumb">
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
                <li><a href="NguoiRaDe-QLD.jsp">Quản lý đề thi</a>
                </li>
                <li class="active">Quản lý nhóm đề</li>
            </ol>
        </div>
        <div class="row">
            <div class="customDiv">
                <div class="panel panel-primary">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                  1. Cập nhật nhóm đề
                                </a>
                              </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <div class="panel-body-1">
                                <label>Tên nhóm đề
                                    <input type="" name="" size="40px">
                                </label>
                                <br>
                                <button type="" class="btn btn-danger">Thêm</button>
                                <br>
                                <br>
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Tên nhóm đề</th>
                                            <th>Sửa</th>
                                            <th>Xóa</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
