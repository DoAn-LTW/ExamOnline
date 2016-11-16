<%-- 
    Document   : Login
    Created on : Oct 14, 2016, 10:28:54 AM
    Author     : BAO UY
--%>

<%@page import="model.Role"%>
<%@page import="dao.RoleDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Đăng nhập</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="assets/css/style_OT.css" rel="stylesheet" type="text/css" />
    <!-- Latest compiled and minified CSS -->
    <!-- Optional theme -->
    <link href="assets/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <!-- Latest compiled and minified JavaScript -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="assets/JQuery/jquery-3.1.1.min.js" type="text/javascript"></script>
    <link href="assets/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
   
    <script src="assets/JS/angular.min.js" type="text/javascript"></script>
</head>


<body>
    
    <% 
       
        RoleDAO roleDAO=new RoleDAO();
            %>
    <div class="wapper">
        <jsp:include page="Header.jsp"></jsp:include>
         <div class="main-menu">
             <nav class="navbar navbar-inverse" data-spy="affix" role="navigation" data-offset-top="67">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-main" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand" href="OnlineTest.jsp" data-toggle="tooltip" data-placement="top" title="Trang chủ">
                          <span class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-main">
                      <ul class="nav navbar-nav">
                        <li data-toggle="tooltip" data-placement="top" title="Liên hệ"><a href="Contact.jsp">Liên hệ <span class="sr-only">(current)</span></a></li>
                        <li data-toggle="tooltip" data-placement="top" title="Hướng dẫn"><a href="#">Hướng dẫn</a></li>
                      </ul>
                      <ul class="nav navbar-nav navbar-right">
                          <li data-toggle="tooltip" data-placement="top" title="Đăng nhập"><a href="Login.jsp" >Đăng nhập</a></li>
                        
                      </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container-fluid -->
                </nav>
        </div>
        <div class="main">
            <div class="container">
                <div class="row">
                    <ol class="breadcrumb">
                        <li><span id="btn-home" class="glyphicon glyphicon-home" aria-hidden="true"></span>
                            <a href="OnlineTest.jsp">Trang chủ</a>
                        </li>
                        <li class="active">Đăng nhập</li>
                    </ol>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h4 style="margin-bottom: 15px !important">Đăng nhập hệ thống</h4>
                        <p>Bằng cách đăng nhập vào hệ thống, các bạn có thể dễ dàng xem các bài thi của mình cần phải thi, tham gia các kỳ thi do giáo viên chỉ định và xem điểm bài làm của mình.</p>
                    </div>
                    <div class="col-md-6">
                        
                        <div id="form-login" ng-app="demoApp" ng-controller="LoginCtrl">

                            <form method="post" action="UserServlet" id="login-form" class="form-horizontal" name="form" ng-submit="login()" novalidate>
                               
                                <div class="form-group">
                                    <label for="username" class="col-xs-4 control-label required">* Tài khoản</label>

                                    <div class="col-xs-8">
                                         <input name="username" type="text" class="form-control" placeholder="" ng-model="username"  autocomplete="off" required>
                                         <i class="fa fa-check text-success" ng-show="form.username.$dirty && form.username.$valid"></i>

                                        <!--Dấu check thể hiện việc nhập dữ liệu được nhập là hợp lệ-->

                                        <div ng-show="form.username.$dirty && form.username.$invalid" class="text-danger">
                                            <i class="fa fa-times text-danger"></i>

                                            <!--Nếu dữ liệu không hợp lệ-->
                                            <span ng-show="form.username.$error.required"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-xs-4 control-label required">* Mật khẩu
                                    </label>
                                    <div class="col-xs-8">
                                        <input name="password" ng-model="password" type="password" class="form-control" placeholder="" ng-minlength="6" ng-maxlength="30" required>
                                        <i class="fa fa-check text-success" ng-show="form.password.$dirty && form.password.$valid"></i>
                                        <div ng-show="form.password.$dirty && form.password.$invalid" class="text-danger">
                                                <i class="fa fa-times-circle" aria-hidden="true" text-danger></i>
                                            <span ng-show="form.password.$error.required">
                                                Mật khẩu không được bỏ trống
                                              </span>
                                            <span ng-show="form.password.$error.minlength">
                                                Mật khẩu phải dài hơn 6 ký tự
                                              </span>
                                            <span ng-show="form.password.$error.maxlength">
                                                Mật khẩu không được hơn 30 ký tự
                                              </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">                                 
                                     <label class="col-xs-4 control-label required">* Role</label>
                                    <div class="col-xs-8">
                                        <select class="form-control input-sm" name="Role" ng-model="role" required>
                                        <% for(Role c: roleDAO.getListRole()){ %>
                                            <option value=<%=c.getRoleID()%>>
                                                <%=c.getRoleID()%>
                                            </option>
                                            <% } %>
                                        </select>
                                         <i class="fa fa-check text-success" ng-show="form.role.$dirty && form.role.$valid"></i>
                                        <div ng-show="form.role.$dirty && form.role.$invalid" class="text-danger">
                                               
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">

                                    <div class="col-sm-offset-4 col-xs-8 col-xs-offset-4">
                                        <input type="hidden" value="login" name="command">
                                         <button type="submit" class="btn btn-primary" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)">
                            Đăng nhập
                        </button>
                       
                                        
                                    </div>

                                </div>

                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <jsp:include page="Footer.jsp"></jsp:include>
    </div>
   
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>

    <script>
        var demoApp = angular.module('demoApp', [])
            .controller("LoginCtrl", ['$scope', function($scope) {
                $scope.success = false;
                $scope.register = function() {
                $scope.success = true;
                }
            }]);
    </script>
</body>

</html>