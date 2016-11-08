<%-- 
    Document   : NguoiRaDe-QLD
    Created on : Oct 14, 2016, 10:52:31 AM
    Author     : BAO UY
--%>

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý đề</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</head>

<body>
     <%
        Users users=null;
        if(session.getAttribute("userQLDE")!=null)
        {
            users=(Users) session.getAttribute("userQLDE");
        }
        %>
    <div class="wapper">
        <jsp:include page="Header.jsp"></jsp:include>
         <div class="main-menu">
            <nav class="navbar navbar-inverse" data-spy="affix" role="navigation" data-offset-top="55">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-main" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a  class="navbar-brand" href="OnlineTest.jsp">
                          <span class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-main">
                      <ul class="nav navbar-nav">
                        <li ><a href="#">Liên hệ <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Hướng dẫn</a></li>
                        <li class="dropdown">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Quản lý đề thi <span class="caret"></span></a>
                          <ul class="dropdown-menu">
                            <li><a href="NguoiRaDe-QLD.jsp">Thêm đề thi</a></li>
                            <li><a href="#" id="CSCH">Sửa đề thi</a></li>
                            
                          </ul>
                        </li>
                      </ul>
                    
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="Login.jsp" class="glyphicon glyphicon-log-out"></a></li>
                        
                      </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container-fluid -->
                </nav>
         </div>
         <div class="main" >
            <div class="container" id="Update-QLND">
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
                                        
                                        <img alt="" />
                                        <a class="dropdown-toggle dropdown-vta-login" role="button" id="dropdownMenu1" data-toggle="dropdown" >
                                            <% if(users !=null) { %>
                                            <span class="hello">Xin chào  <%=users.getUserName() %></span>
                                            <span class="caret"></span>
                                            <% } %>
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
                       <li><a href="#">Quản lý đề thi</a>
                       </li>
                       <li class="active">Quản lý đề</li>
                    </ol>
                </div>
                <div class="row">
                    
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                             <div class="panel panel-primary">
                                <div class="panel-heading" role="tab" id="headingOne">
                                   <h4 class="panel-title"><a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">1. Tạo mới đề thi</a>
                                   </h4>
                                </div>
                                <span style="color: red;margin-left: 15px">Không được để trống mục nào</span>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                        <div class="col-md-6">
                                            <form ng-app="myApp" ng-controller="validateCtrl" name="myForm" novalidate class="form-horizontal">
                                                <div class="form-group">
                                                    <label for="mon" class="col-sm-4 control-label">Môn thi: </label>
                                                    <div class="col-sm-8">
                                                        <select class="form-control" value="">
                                                            <option>1</option>                                                           
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="mad" class="col-sm-4 control-label">Mã đề: </label>
                                                    <div class="col-sm-8">
                                                        <input type="text" id="mad" name="made" class="form-control" placeholder="Mã đề" ng-model="made" required>
                                                        <span style="color:red" ng-show="myForm.made.$dirty && myForm.made.$invalid">
                                                        <span ng-show="myForm.made.$error.required"></span>
                                                        </span>
                                                    </div>
                                                </div>                                      
                                                
                                                <div class="form-group">
                                                    <label for="tglb" for="mon" class="col-sm-4 control-label">Thời gian làm bài: </label>
                                                    <div class="col-sm-8">
                                                        <input type="text" id="tglb" class="form-control" name="tg" placeholder="Thời gian làm bài" ng-model="tg" required>
                                                        <span style="color:red" ng-show="myForm.tg.$dirty && myForm.tg.$invalid">
                                                        <span ng-show="myForm.tg.$error.required"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="noidung" class="col-sm-4 control-label">Nội dung: </label>
                                                    <div class="col-sm-8">
                                                        <select class="form-control" id="noidung">
                                                           <option>Nội dung 1</option>
                                                           <option>Nội dung 2</option>
                                                           <option>Nội dung 3</option>
                                                           <option>Nội dung 4</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="soch" class="col-sm-4 control-label">Số câu hỏi lấy: </label>
                                                    <div class="col-sm-8">
                                                        <input class="form-control" type="number" id="soch" min="1" max="30" name="socauhoi" placeholder="Số câu hỏi sẽ lấy" ng-model="socauhoi" required>
                                                        <span style="color:red" ng-show="myForm.socauhoi.$dirty && myForm.socauhoi.$invalid">
                                                        <span ng-show="myForm.socauhoi.$error.required"></span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                   <div class="col-sm-4"></div>
                                                   <div class="col-sm-8">
                                                    <button type="" class="btn btn-danger" id="btn-CN" 
                                                       ng-disabled="myForm.tendethi.$dirty && myForm.tendethi.$invalid
                                                       || myForm.made.$dirty && myForm.made.$invalid
                                                       || myForm.mon.$dirty && myForm.mon.$invalid
                                                       || myForm.tg.$dirty && myForm.tg.$invalid
                                                       || myForm.socauhoi.$dirty && myForm.socauhoi.$invalid
                                                       || myForm.tg.$dirty && myForm.tg.$invalid" ><span>Thêm</span></button>
                                                    </div>
                                                </div>
                                            </form>
                                       </div>

                                   </div>
                                </div>
                             </div>
                             <div class="panel panel-primary">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                   <h4 class="panel-title"><a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">2. Danh sách các đề đã tạo</a></h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                   <div class="panel-body">
                                      <div class="row">
                                         <div class="col-md-4">
                                         </div>
                                         <div class="col-md-3">
                                            <label for="">Lọc nhóm đề thi: </label>
                                            <select>
                                            <option>Đề 1</option>
                                            <option>Đề 2</option>
                                            <option>Đề 3</option>
                                            <option>Đề 4</option>
                                         </select>
                                         </div>
                                         <div class="col-md-3">
                                            <button type="" class="btn btn-danger">Lọc</button>
                                         </div>
                                         <div class="col-md-2">
                                         </div>
                                      </div>
                                      <div class="row">
                                         <table class="table table-bordered">
                                            <thead>
                                               <tr>
                                                  <th>Mã đề</th>
                                                  <th>Môn</th>
                                                  <th>Thời gian</th>
                                                  <th>Người ra đề</th>
                                                  <th>Xem chi tiết</th>
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
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
                                               </tr>
                                               <tr>
                                                  <td></td>
                                                  <td></td>
                                                  <td></td>
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
                    </form>
                </div>          
            </div>
         </div>
         <br><br><br><br><br>
        <jsp:include page="Footer.jsp"></jsp:include>
         <button type="button" class="back-to-top" data-toggle="tooltip" data-placement="top" title="Lên đầu trang">
            <p><i class="zmdi zmdi-chevron-up"></i>
            </p>
         </button>
      </div>
      <script >
         jQuery(document).ready(function($) {
                $("#QLND").click(function(e) {
                    var url;
                    url = "NguoiRaDe_QLNĐ.html";
                    $("#Update-QLND").load(url);
                });
            });
      </script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
      <script>
         var app = angular.module('myApp', []);
         app.controller('validateCtrl', function($scope) {
             // $scope.tendethi = 'Tên đề thi';
             // $scope.slch1 = 'Số câu hỏi nhóm 1';
             // $scope.slch2 = 'Số câu hỏi nhóm 2';
             // $scope.diem1 = 'Tổng điểm nhóm 1';
             // $scope.diem2 = 'Tổng điểm nhóm 2';
             // $scope.tg = 'Thời gian làm bài';
         
         });
      </script>
</body>
</html>
