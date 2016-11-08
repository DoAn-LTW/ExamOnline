<%-- 
    Document   : NguoiQTNHCH-ChinhSuaCH
    Created on : Oct 14, 2016, 10:44:21 AM
    Author     : Kelvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Chỉnh sửa câu hỏi</title>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/style_OT.css" rel="stylesheet" type="text/css"/>
<!-- Latest compiled and minified CSS -->
<!-- Optional theme -->
<link href="assets/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
<!-- Latest compiled and minified JavaScript -->
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="assets/JS/jquery.min.js" type="text/javascript"></script>
<link href="assets/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-8 col-xs-0">
               <div class="row">
                    <div class="col-sm-6">               
                    </div>
                </div>
            </div>
            <div class="col-md-3 col-sm-4 col-xs-9">
                <div class="block-user-info block-user-info-responsive logged">
                    <ul class="clearfix">
                            <div class="dropdown dropdown-vta">
                                <a class="dropdown-toggle dropdown-vta-login" role="button" id="dropdownMenu1" data-toggle="dropdown" >
                                    <span class="hello">Xin chào</span> Thanh Phong 
                                    <span class="caret"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-vta-sub-menu" aria-labelledby="dropdownMenu1">
                                    <li><a href="Profile.jsp">Thông tin cá nhân</a></li>

                                    <li><a href="Doimatkhau.jsp">Đổi mật khẩu</a></li>
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
                <li><a href="NguoiQTNHCH-ThemCH.jsp" title="">Quản trị câu hỏi</a>
                </li>
                <li class="active">Chỉnh sửa câu hỏi</li>
            </ol>
        </div>
        <div class="row">
            <p id="update-success"></p>
        </div>
        <div class="row">
            <div class="customDiv-2">
                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                    <div class="panel panel-primary">
                        <div class="panel-heading" role="tab" id="headingOne">
                            <h4 class="panel-title">
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Chỉnh sửa câu hỏi</a></h4>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                            <div class="panel-body">
                                <div class="row">
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <label for="inputDKL" class="col-sm-3 control-label text-left">Điều kiện lọc</label>
                                            <div class="col-sm-9">
                                                <input type="text" class="form-control" required="" id="inputDKL" placeholder="Nhập nội dung">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-9">
                                                <a class="btn btn-info" href="#" role="button">Lọc</a>
                                            </div>
                                        </div>
                                    </form>
                                    <table class="table table-hover">
                                        <tr>
                                            <th style="width : 130px">Mã câu hỏi</th>
                                            <th>Nội dung câu hỏi</th>
                                            <th style="width : 100px">Sửa</th>
                                            <th style="width : 100px">Xóa</th>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td><a href="">Sửa</a></td>
                                            <td><a href="">Xóa</a></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td><a href="">Sửa</a></td>
                                            <td><a href="">Xóa</a></td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td><a href="">Sửa</a></td>
                                            <td><a href="">Xóa</a></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="inputMaCH" class="col-sm-4 control-label">Mã câu hỏi</label>
                                                <div class="col-sm-8">
                                                    <input type="text" class="form-control" required="" id="inputMaCH" placeholder="">
                                                    <span class="field-validation-valid text-danger" data-valmsg-for="Username" data-valmsg-replace="true"></span>

                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputNDCH" class="col-sm-4 control-label">Nội dung câu hỏi</label>
                                                <div class="col-sm-8">
                                                  <textarea class="form-control" rows="3" col="10"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputDiem" class="col-sm-4 control-label">Điểm</label>
                                                <div class="col-sm-8">
                                                  <input type="text" class="form-control" required="" id="inputDiem" placeholder="">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="col-md-6">
                                        <form class="form-horizontal">
                                            <div class="form-group">
                                                <label for="inputDAA" class="col-sm-4 control-label">Phương án 1</label>
                                                <div class="col-sm-8">
                                                  <textarea class="form-control"  rows="2" col="10" id="inputDAA"></textarea>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                               <label for="inputDAB" class="col-sm-4 control-label">Phương án 2</label>
                                               <div class="col-sm-8">
                                                 <textarea class="form-control" rows="2" col="10" id="inputDAB"></textarea>
                                               </div>
                                            </div>
                                            <div class="form-group">
                                               <label for="inputDAC" class="col-sm-4 control-label">Phương án 3</label>
                                               <div class="col-sm-8">
                                                 <textarea class="form-control" rows="2" col="10" id="inputDAC"></textarea>
                                               </div>
                                            </div>
                                            <div class="form-group">
                                               <label for="inputDAD" class="col-sm-4 control-label">Phương án 4</label>
                                               <div class="col-sm-8">
                                                 <textarea class="form-control" rows="2" col="10" id="inputDAD"></textarea>
                                               </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputDA" class="col-sm-4 control-label">Đáp án</label>
                                                <div class="col-sm-8">
                                                  <input type="text" class="form-control" required="" id="inputDA" placeholder="">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-4"></div>
                                                <div class="col-sm-8">
                                                    <a href="" class="btn btn-success" role="button">Lưu</a>
                                                </div>
                                            </div>
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>  
    </div>
    
    <script src="assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/JS/Notify-Update.js" type="text/javascript"></script>
</body>
</html>
