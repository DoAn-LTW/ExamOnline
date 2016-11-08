<%-- 
    Document   : newjsp
    Created on : Oct 28, 2016, 8:34:50 PM
    Author     : Kelvin
--%>

<%@page import="model.MonHoc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <link href="assets/plugins/datatables/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/datatables/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <!-- Responsive datatable examples -->
    <link href="assets/plugins/datatables/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/plugins/bootstrap-sweetalert/sweet-alert.css" rel="stylesheet" type="text/css" />
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    
    <!-- App CSS -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <link href="assets/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <!-- Modernizr js -->
    
    <script src="assets/JS/angular.min.js" type="text/javascript"></script>
        <script src="assets/JS/jquery.min.js"></script>
        
        <script src="assets/JS/bootstrap.min.js"></script>
        
     
    </head>
    <body>
        <div id="main" ng-app="demoApp" ng-controller="InsertMHCtrl">
            <div class="row">
                <div class="col-md-6">
                        <form method="post" action="MonHocServlet" id="register-form" name="form" ng-submit="insert()" novalidate>
                            <div class="form-group">
                                <label for="inputMaMH">* Mã môn học</label>
                                <input name="mamh" id="inputMaMH" type="text" class="form-control" placeholder="" ng-model="mamh" autocomplete="off" required>

                                <!--Dấu check thể hiện việc nhập dữ liệu được nhập là hợp lệ-->
                                 <i class="fa fa-check text-success" ng-show="form.mamh.$dirty && form.mamh.$valid"></i>   
                                <div ng-show="form.mamh.$dirty && form.mamh.$invalid" class="text-danger">
                                    <i class="fa fa-times text-danger"></i>
                                    <span ng-show="form.mamh.$error.required">Bạn chưa nhập mã vai trò</span>

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTenMH">* Tên môn học</label>

                                <input name="tenmh" id="inputTenMH" ng-model="tenmh" type="text" class="form-control" placeholder="" required>
                                <i class="fa fa-check text-success" ng-show="form.tenmh.$dirty && form.tenmh.$valid"></i>

                                <div ng-show="form.tenmh.$dirty && form.tenmh.$invalid" class="text-danger">
                                    <i class="fa fa-times text-danger"></i>
                                    <span ng-show="form.tenmh.$error.required" >
                                        Bạn chưa nhập tên vai trò</span>

                                </div>
                            </div>   
                            <input type="hidden" value="insertRole" name="command">
                            <button type="submit" class="btn btn-primary" ng-disabled="!form.$dirty || (form.$dirty && form.$invalid)" style="margin-top: 10px;margin-bottom: 10px">
                                Thêm
                            </button>
                        </form>  
                </div>

                <div class="col-md-6">

                        <form method="post" action="RoleServlet" id="register-form" name="form1" ng-submit="insert()" novalidate>
                            <div class="form-group">
                                <label for="inputMaND">* Mã nội dung</label>
                                <input name="mand" id="inputMaND" type="text" class="form-control" placeholder="" ng-model="mand" autocomplete="off" required>

                                <!--Dấu check thể hiện việc nhập dữ liệu được nhập là hợp lệ-->
                                <i class="fa fa-check text-success" ng-show="form1.mand.$dirty && form1.mand.$valid"></i>   
                                <div ng-show="form1.mand.$dirty && form1.mand.$invalid" class="text-danger">
                                    <i class="fa fa-times text-danger"></i>
                                    <span ng-show="form1.mand.$error.required">Bạn chưa nhập mã vai trò</span>

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTenND">* Tên nội dung</label>

                                <input name="tennd" id="inputTenND" ng-model="tennd" type="text" class="form-control" placeholder="" required>
                                <i class="fa fa-check text-success" ng-show="form1.tennd.$dirty && form1.tennd.$valid"></i>

                                <div ng-show="form1.tennd.$dirty && form1.tennd.$invalid" class="text-danger">
                                    <i class="fa fa-times text-danger"></i>
                                    <span ng-show="form1.tennd.$error.required" >
                                        Bạn chưa nhập tên vai trò</span>

                                </div>
                            </div>   
                            <input type="hidden" value="insertRole" name="command">
                            <button type="submit" class="btn btn-primary" ng-disabled="!form1.$dirty || (form1.$dirty && form1.$invalid)" style="margin-top: 10px;margin-bottom: 10px">
                                Thêm
                            </button>
                        </form>  
                </div>
            </div>
        </div>
       <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script>
            var demoApp = angular.module('demoApp', [])
                .controller("InsertMHCtrl", ['$scope', function($scope) {
                    $scope.success = false;
                    $scope.insert = function() {
                    $scope.success = true;
                    }
                }]);
        </script>
       
       
    </body>
</html>
