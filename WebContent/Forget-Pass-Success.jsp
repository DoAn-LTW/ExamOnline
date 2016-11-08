<%-- 
    Document   : Forget-Pass-Seccess
    Created on : Oct 14, 2016, 10:37:03 AM
    Author     : Kelvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quên mật khẩu</title>

     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/style_OT.css" rel="stylesheet" type="text/css"/>
<!-- Latest compiled and minified CSS -->
<!-- Optional theme -->
<link href="assets/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
<!-- Latest compiled and minified JavaScript -->
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="assets/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="wapper">
        <jsp:include page="Header.jsp"></jsp:include>
        <div class="main-menu">
            <div class="navbar navbar-inverse" id="topnav" data-spy="affix" role="navigation" data-offset-top="67">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="OnlineTest.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
                            </li>
                            <li><a href="Contact.jsp">LIÊN HỆ</a>
                            </li>
                            <li><a href="#">HƯỚNG DẪN</a>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-left">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" data-toggle="tooltip" data-placement="right" title="Tìm kiếm"></span></button>
                        </form>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Login.jsp"><span class="glyphicon glyphicon-log-in" aria-hidden="true" style="margin-right: 10px"></span>ĐĂNG NHẬP</a>
                            </li>


                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!-- /.container-fluid -->
            </div>
        </div>
        <div class="main">
            <div class="container">
                <div class="row">
                    <ol class="breadcrumb">
                        <li><span id="btn-home" class="glyphicon glyphicon-home" aria-hidden="true"></span>
                            <a href="OnlineTest.jsp">Trang chủ</a>
                        </li>
                        <li><a href="Login.jsp" title="">Đăng nhập</a></li>
                        <li class="active">Quên mật khẩu</li>
                    </ol>
                </div>
                <div class="row">
                        <div class="content">
                            <h4 id="h4-loca">Thông báo</h4>
                            <div class="row">
                                 <div class="col-lg-2 col-sm-4 col-xs-12">                            
                                    
                                </div>
                                <div class="col-lg-10 col-sm-8 col-xs-12">                            
                                    <div class="customDiv-6">
                                        <p class="text-notify"> Một email đã được gửi đến email của bạn, vui lòng check email để xem hướng dẫn để có thể đăng nhập lại.Vui lòng click vào đây <a href="Login.jsp" title="">Đăng nhập</a> để đăng nhập lại hoặc click vào đây <a href="OnlineTest.jsp" title="">Trang chủ</a> để quay về trang chủ, Cảm ơn</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script src="assets/JS/jquery.min.js" type="text/javascript"></script>
    <script src="assets/JS/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
