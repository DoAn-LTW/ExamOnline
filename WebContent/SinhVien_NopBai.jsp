<%-- 
    Document   : SinhVien_NopBai
    Created on : Oct 17, 2016, 9:16:19 PM
    Author     : BAO UY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Kết quả bài làm</title>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="assets/css/style_OT.css" rel="stylesheet" type="text/css" />
    <!-- Latest compiled and minified CSS -->
    <!-- Optional theme -->
    <link href="assets/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <!-- Latest compiled and minified JavaScript -->
    <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
</head>

<body>
    <div class="wapper">
        <jsp:include page="Header.jsp"></jsp:include>
        <div class="main-menu">
            <div class="navbar navbar-inverse" id="topnav" data-spy="affix" role="navigation" data-offset-top="67">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="OnlineTest.html"><span class="glyphicon glyphicon-home" aria-hidden="true" data-toggle="tooltip" data-placement="bottom" title="Trang chủ"></span><span class="sr-only">(current)</span></a>
                            </li>
                            <li><a href="Contact.html" data-toggle="tooltip" data-placement="bottom" title="Liên hệ">LIÊN HỆ</a>
                            </li>
                            <li><a href="#" data-toggle="tooltip" data-placement="bottom" title="Hướng dẫn">HƯỚNG DẪN</a>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-left">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" data-toggle="tooltip" data-placement="right" title="Tìm kiếm"></span>
                            </button>
                        </form>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Login.html"><span class="glyphicon glyphicon-log-in" aria-hidden="true" style="margin-right: 10px"></span>ĐĂNG NHẬP</a>
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
                    <div class="col-md-10">
                        <p class="hello">Xin chào</p>

                    </div>
                    <div class="col-md-2">
                        <div class="dropdown">
                            <a id="dLabel" href="#" data-toggle="dropdown">
                            Tên sinh viên
                            <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
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
                    <div class="panel-group" id="accordion">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                 Kết quả
                                 </a>
                                 </h4>
                                </div>

                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <p>Mã số sinh viên: 14110999</p>
                                        <p>Nhóm đề: Thi giữa kì lập trình </p>
                                        <p>Họ và tên: Trần Văn A</p>
                                        <p>Số câu đúng: 5</p>
                                        <p>Lớp: 141101C</p>
                                        <p>Đề thi: GTLTW-Đề 1</p>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapsetwo">
                            Chi tiết bài làm
                        </a></h4>
                                </div>
                                <div id="collapsetwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <div>
                                            <h5>Phần 1: ....(5đ)</h5>
                                            <p>
                                                Câu 1: .....?
                                                <br>
                                                <input type="radio" name="sex" value="A">A
                                                <br>
                                                <b><i><input checked="checked" type="radio" name="sex1" value="B">B</i></b>
                                                <br>
                                                <input type="radio" name="sex" value="C">C
                                                <br>
                                                <input type="radio" name="sex" value="D">D
                                                <br> ....................................
                                                <br> Câu 10: .....?
                                                <br>
                                                <input type="radio" name="sex" value="A">A
                                                <br>
                                                <input type="radio" name="sex" value="B">B
                                                <br>
                                                <input type="radio" name="sex" value="C">C
                                                <br>
                                                <b><i><input checked="checked" type="radio" name="sex" value="D">D</i></b>
                                                <br>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <br><br><br><br><br><br><br>
        <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script src="assets/JS/jquery.min.js" type="text/javascript"></script>
    <script src="assets/JS/bootstrap.min.js" type="text/javascript"></script>
</body>

</html>