<%-- 
    Document   : SinhVien_ThiWeb
    Created on : Oct 17, 2016, 9:11:17 PM
    Author     : BAO UY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>HỆ THỐNG THI TRẮC NGHIỆM ONLINE</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="assets/css/style_OT.css" rel="stylesheet" type="text/css" />
    <!-- Latest compiled and minified CSS -->
    <!-- Optional theme -->
    <link rel="stylesheet" type="text/css" href="assets/plugins/jquery.steps/demo/css/jquery.steps.css" />

    <!-- Switchery css -->
    <link href="assets/plugins/switchery/switchery.min.css" rel="stylesheet" />

    <!-- App CSS -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/modernizr.min.js"></script>
     <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','../../../www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-79190402-1', 'auto');
          ga('send', 'pageview');

     </script>
</head>

<body>
    <div class="wapper">
        <jsp:include page="Header.jsp"></jsp:include>
        <div class="main-menu">
            <div class="navbar navbar-inverse" id="topnav" data-spy="affix" role="navigation" data-offset-top="67">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li><a href="OnlineTest.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></a>
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
                            <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search" data-toggle="tooltip" data-placement="right" title="Tìm kiếm"></span>
                            </button>
                        </form>

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
                            <a data-toggle="dropdown" href="#">
                                Tên Sinh Viên<span class="caret"></span></a>
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
                    <h4>Kiểm tra môn lập trình web</h4>
                    <p>Thời gian làm bài: 30 phút</p>
                    <!--  <input type="button" value="Start" onclick="start()"/> -->
                    <button class="btn btn-success" type="button" onclick="start()">Start</button>
                </div>
                <div class="row">
                    <span id="h">Giờ</span> :
                    <span id="m">Phút</span> :
                    <span id="s">Giây</span>
                </div>     
                <div class="row">
                    <div class="col-xs-12">
                        <div class="card-box">
                            <div class="row">
                                <div class="col-sm-12 col-xs-12">
                                    <form id="basic-form" action="#">
                                        <div>
                                            <h3>Câu 1</h3>
                                            <section>
                                                <div class="row">
                                                        <div class="radio radio-custom">
		                                                    <input type="radio" name="radio" id="radio2" value="option2">
		                                                    <label for="radio2">
		                                                        A
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-primary">
		                                                    <input type="radio" name="radio" id="radio3" value="option3">
		                                                    <label for="radio3">
		                                                        B
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-success">
		                                                    <input type="radio" name="radio" id="radio4" value="option4">
		                                                    <label for="radio4">
		                                                        C
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-info">
		                                                    <input type="radio" name="radio" id="radio5" value="option5">
		                                                    <label for="radio5">
		                                                        D
		                                                    </label>
		                                                </div>
                                                   

                                                </div><!-- end row -->
                                            </section>
                                            <h3>Câu 2</h3>
                                            <section>
                                                <div class="row">
                                                        <div class="radio radio-custom">
		                                                    <input type="radio" name="radio" id="radio2" value="option2">
		                                                    <label for="radio2">
		                                                        A
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-primary">
		                                                    <input type="radio" name="radio" id="radio3" value="option3">
		                                                    <label for="radio3">
		                                                        B
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-success">
		                                                    <input type="radio" name="radio" id="radio4" value="option4">
		                                                    <label for="radio4">
		                                                        C
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-info">
		                                                    <input type="radio" name="radio" id="radio5" value="option5">
		                                                    <label for="radio5">
		                                                        D
		                                                    </label>
		                                                </div>
                                                   

                                                </div>

                                             

                                            </section>
                                            <h3>Câu 3</h3>
                                            <section>
                                                <div class="row">
                                                        <div class="radio radio-custom">
		                                                    <input type="radio" name="radio" id="radio2" value="option2">
		                                                    <label for="radio2">
		                                                        A
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-primary">
		                                                    <input type="radio" name="radio" id="radio3" value="option3">
		                                                    <label for="radio3">
		                                                        B
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-success">
		                                                    <input type="radio" name="radio" id="radio4" value="option4">
		                                                    <label for="radio4">
		                                                        C
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-info">
		                                                    <input type="radio" name="radio" id="radio5" value="option5">
		                                                    <label for="radio5">
		                                                        D
		                                                    </label>
		                                                </div>
                                                   

                                                </div>
                                            </section>
                                            <h3>Câu 4</h3>
                                            <section>
                                                <div class="row">
                                                        <div class="radio radio-custom">
		                                                    <input type="radio" name="radio" id="radio2" value="option2">
		                                                    <label for="radio2">
		                                                        A
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-primary">
		                                                    <input type="radio" name="radio" id="radio3" value="option3">
		                                                    <label for="radio3">
		                                                        B
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-success">
		                                                    <input type="radio" name="radio" id="radio4" value="option4">
		                                                    <label for="radio4">
		                                                        C
		                                                    </label>
		                                                </div>
		                                                <div class="radio radio-info">
		                                                    <input type="radio" name="radio" id="radio5" value="option5">
		                                                    <label for="radio5">
		                                                        D
		                                                    </label>
		                                                </div>
                                                   

                                                </div>
                                            </section>
                                        </div>
                                    </form>
                                    <a href="SinhVien_NopBai.jsp" target="_self">
                                    <input type="button" id="nopbai" value="Nộp bài" class="btn btn-danger" onclick="start()">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div><!-- end col-->
                </div>
                <!-- end row -->
            </div> <!-- container -->
        </div>
        <br><br><br><br><br><br><br><br><br><br>
        <jsp:include page="Footer.jsp"></jsp:include>
    </div>
    <script src="assets/JS/jquery.min.js"></script>
    <script src="assets/JS/tether.min.js"></script><!-- Tether for Bootstrap -->
    <script src="assets/JS/bootstrap.min.js"></script>
    <script src="assets/JS/detect.js"></script>
    <script src="assets/JS/fastclick.js"></script>
    <script src="assets/JS/jquery.blockUI.js"></script>
    <script src="assets/JS/waves.js"></script>
    <script src="assets/JS/jquery.nicescroll.js"></script>
    <script src="assets/JS/jquery.scrollTo.min.js"></script>
    <script src="assets/JS/jquery.slimscroll.js"></script>
    <script src="assets/plugins/switchery/switchery.min.js"></script>
        
    <script src="assets/plugins/jquery.steps/build/jquery.steps.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="assets/plugins/jquery-validation/dist/jquery.validate.min.js"></script>

    <!--wizard initialization-->
    <script src="assets/pages/jquery.wizard-init.js" type="text/javascript"></script>
    <script language="javascript">
        var h = 0; // Giờ
        var m = 0; // Phút
        var s = 10; // Giây

        var timeout = null; // Timeout

        function start() {
            /*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
            if (h === null) {
                h = parseInt(document.getElementById('h_val').value);
                m = parseInt(document.getElementById('m_val').value);
                s = parseInt(document.getElementById('s_val').value);
            }

            /*BƯỚC 1: CHUYỂN ĐỔI DỮ LIỆU*/
            // Nếu số giây = -1 tức là đã chạy ngược hết số giây, lúc này:
            //  - giảm số phút xuống 1 đơn vị
            //  - thiết lập số giây lại 59
            if (s === -1) {
                m -= 1;
                s = 59;
            }

            // Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
            //  - giảm số giờ xuống 1 đơn vị
            //  - thiết lập số phút lại 59
            if (m === -1) {
                h -= 1;
                m = 59;
            }

            // Nếu số giờ = -1 tức là đã hết giờ, lúc này:
            //  - Dừng chương trình
            if (h == -1) {
                // clearTimeout(timeout);

                document.getElementById("nopbai").disabled = true;
                alert('Hết giờ');
                return false;
            }

            /*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
            document.getElementById('h').innerText = h.toString();
            document.getElementById('m').innerText = m.toString();
            document.getElementById('s').innerText = s.toString();

            /*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
            timeout = setTimeout(function() {
                s--;
                start();
            }, 1000);
        }
    </script>
</body>

</html>