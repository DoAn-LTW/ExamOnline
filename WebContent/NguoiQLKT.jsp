<%-- 
    Document   : NguoiQLKT
    Created on : Oct 14, 2016, 11:45:57 AM
    Author     : Kelvin
--%>

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý kỳ thi</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="assets/css/style_OT.css" rel="stylesheet" type="text/css"/>
<!-- Latest compiled and minified CSS -->
<!-- Optional theme -->
<link href="assets/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
<!-- Latest compiled and minified JavaScript -->
<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

<link href="assets/material-design-iconic-font/css/material-design-iconic-font.min.css" rel="stylesheet" type="text/css"/>
<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
</head>

<body>
     <%
        Users users=null;
        if(session.getAttribute("userQLKT")!=null)
        {
            users=(Users) session.getAttribute("userQLKT");
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
                        <li class="active">
                            <a href="#">Quản lý kỳ thi</a>
                        </li>
                      </ul>
                    
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="Login.jsp" class="glyphicon glyphicon-log-out"></a></li>
                        
                      </ul>
                    </div><!-- /.navbar-collapse -->
                  </div><!-- /.container-fluid -->
                </nav>
        </div>
        <div class="main">
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

                                        <img alt="" />
                                        <a class="dropdown-toggle dropdown-vta-login" role="button" id="dropdownMenu1" data-toggle="dropdown">
                                            <% if(users !=null) { %>
                                                <span class="hello">Xin chào <%=users.getUserName()%></span>
                                                <%}%>
                                                    <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu dropdown-vta-sub-menu" aria-labelledby="dropdownMenu1">
                                            <li><a href="Profile.jsp?UserName=<%=users.getUserName()%>">Thông tin cá nhân</a>
                                            </li>

                                            <li><a href="Doimatkhau.jsp">Đổi mật khẩu</a>
                                            </li>
                                            <li><a href="Login.jsp">Thoát</a>
                                            </li>
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
                        <li class="active">Quản lý kỳ thi</li>
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
                                        Tạo kỳ thi</a></h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <form class="form-horizontal">
                                                    <div class="form-group">
                                                        <label for="selectMaDe" class="col-sm-5 control-label text-left">Mã đề thi</label>
                                                        <div class="col-sm-7">
                                                          <select class="form-control input-xs">
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                          </select>
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="selectLopThi" class="col-sm-5 control-label text-left">Lớp thi</label>
                                                        <div class="col-sm-7">
                                                          <select class="form-control input-xs">
                                                            <option>1</option>
                                                            <option>2</option>
                                                            <option>3</option>
                                                          </select>
                                                        </div>
                                                     </div>
                                                    
                                                </form>
                                            </div>
                                            <div class="col-md-6">
                                                <form class="form-horizontal">
                                                    <div class="form-group">
                                                        <label for="inputTGLB" class="col-sm-5 control-label text-left">Thời gian làm bài</label>
                                                        <div class="col-sm-7">
                                                            <input type="text" class="form-control" required="" id="inputTGLB" placeholder="">
                                                        </div>
                                                    </div> 
                                                     <div class="form-group">
                                                        <label for="inputTGBD" class="col-sm-5 control-label text-left">Ngày thi</label>
                                                        <div class="col-sm-7">
                                                            <input type="date" class="form-control" required="" id="inputTGBD" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="inputTGT" class="col-sm-5 control-label text-left">Thời gian thi</label>
                                                        <div class="col-sm-7">
                                                            <input type="text" class="form-control" required="" id="inputTGT" placeholder="">
                                                        </div>
                                                    </div> 
                                                    
                                                    <div class="form-group">
                                                        <label for="inputDD" class="col-sm-5 control-label text-left">Địa điểm</label>
                                                        <div class="col-sm-7">
                                                            <input type="text" class="form-control" required="" id="inputDD" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="col-sm-5"></div>
                                                        <div class="col-sm-7">
                                                            <button type="button" class="btn btn-info" id="TaoKT">Lưu</button>
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
        </div>
        <br><br><br>
        <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script src="assets/JQuery/jquery-3.1.1.min.js" type="text/javascript"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/JS/QLKT.js" type="text/javascript"></script>
</body>
</html>
