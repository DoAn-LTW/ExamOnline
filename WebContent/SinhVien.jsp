<%-- 
    Document   : SinhVien
    Created on : Oct 14, 2016, 1:06:22 PM
    Author     : BAO UY
--%>

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Sinh viên</title>
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
     <%
        Users users=null;
        if(session.getAttribute("userSV")!=null)
        {
            users=(Users) session.getAttribute("userSV");
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
                                        <a class="dropdown-toggle dropdown-vta-login" role="button" id="dropdownMenu1" data-toggle="dropdown" >
                                            <% if(users !=null){ %>
                                            <span class="hello">Xin chào <%=users.getUserName()%></span>  
                                            <span class="caret"></span>
                                            <%} %>
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
                        <li class="active">Thêm câu hỏi</li>
                    </ol>
                </div>
            
                <div class="row">
                    <div class="customDiv-5">
                      <div class="list-group">
                    <a href="SinhVien_ThiWeb.jsp" class="list-group-item">Bài thi giữa kì lập trình web</a>
                    <a href="Bài thi giữa kì cơ sở dữ liệu" class="list-group-item">Bài thi giữa kì cơ sở dữ liệu</a>
                    <a href="Bài thi giữa kì công nghệ phần mềm" class="list-group-item">Bài thi giữa kì công nghệ phần mềm</a>
                    
                    </div>
                </div>
            </div>
            </div>
        </div>
       <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
</body>
</html>
