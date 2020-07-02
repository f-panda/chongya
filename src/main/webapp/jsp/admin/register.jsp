<%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/2/20
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>注册</title>
    <link rel="stylesheet" type="text/css" href="${ctx}/static/css/demo.css">
    <script src="${ctx}/static/js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <!--Framework-->
    <script src="${ctx}/static/js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/jquery-ui.js" type="text/javascript"></script>
    <!--End Framework-->
    <script src="${ctx}/static/js/jquery.ffform.js" type="text/javascript"></script>
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="${ctx}/static/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="${ctx}/static/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- Bootstrap Select-->
    <link rel="stylesheet" href="${ctx}/static/vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="${ctx}/static/vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="${ctx}/static/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="${ctx}/static/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="${ctx}/static/css/custom.css">
    <%--    table--%>
    <link rel="stylesheet" href="${ctx}/static/css/style.input.css">
    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="${ctx}/static/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="${ctx}/static/img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="${ctx}/static/img/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="${ctx}/static/img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="${ctx}/static/img/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="${ctx}/static/img/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="${ctx}/static/img/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="${ctx}/static/img/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="${ctx}/static/img/apple-touch-icon-152x152.png">
    <link href="${ctx}/static/css/demo.css" rel="stylesheet" type="text/css">
    <script src="${ctx}/static/js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <!--Framework-->
    <script src="${ctx}/static/js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/js/jquery-ui.js" type="text/javascript"></script>
    <!--End Framework-->
    <script src="${ctx}/static/js/jquery.ffform.js" type="text/javascript"></script>
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

    <script type="text/javascript">
        $(document).ready(function () {
            $('#form').ffform({ animation: 'flip', submitButton: '#submit', validationIndicator: '#validation', errorIndicator: '#error', successIndicator: '#success', 'fields': [{ 'id': 'name', required: true, requiredMsg: 'Name is required', type: 'alpha', validate: true, msg: '姓名不可用' }, { 'id': 'number', required: true, requiredMsg: 'number is required', type: 'number', validate: true, msg: '学号不可用' }, { 'id': 'password', required: false, type: 'custom', validate: false, msg: '密码无效' }, { 'id': 'classid', required: false, type: 'text', validate: false, msg: ''}] });
        });
     </script>
</head>
<body style="padding-top: 60px">
<div class="demos-buttons">
</div>
<section id="getintouch" class="flipInX animated">
    <div class="container" style="border-bottom: 0;">
        <h1 style="color: black">
            <span>欢迎注册</span>
        </h1>
    </div>
        <div class="container"style="border-bottom: 0;">
                    <form action="/user/register" method="post">
                            <div class="form-group">
                                <label for="name">姓名</label>
                                <input id="name" type="text" class="form-control" name="name" required autofocus>
                            </div>

                            <div class="form-group">
                                <label for="number">学号</label>
                                <input id="number" type="number" class="form-control" name="number" required>
                            </div>

                            <div class="form-group">
                                <label for="password">密码</label>
                                <input id="password" type="password" class="form-control" name="password" required data-eye>
                            </div>

                            <div class="form-group">
                                <label for="password">班级</label>
                                <input id="classid" type="text" class="form-control" name="classid" placeholder="例：交通121" required data-eye>
                            </div>

                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="aggree" value="1"> 我保证信息真实有效
                                </label>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-template-outlined btn-lg"><i class="fa fa-sign-in"></i>
                                    注册
                                </button>
                            </div>
                            <div class="margin-top20 text-center">
                                已经有账号? <a href="${ctx}/jsp/admin/login.jsp">登录</a>
                            </div>
                        </form>


            </div>
        </div>
    </div>
</section>
<script src="${ctx}/static/vendor/jquery/jquery.min.js"></script>
<script src="${ctx}/static/vendor/popper.js/umd/popper.min.js"> </script>
<script src="${ctx}/static/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${ctx}/static/vendor/jquery.cookie/jquery.cookie.js"> </script>
<script src="${ctx}/static/vendor/waypoints/lib/jquery.waypoints.min.js"> </script>
<script src="${ctx}/static/vendor/jquery.counterup/jquery.counterup.min.js"> </script>
<script src="${ctx}/static/vendor/owl.carousel/owl.carousel.min.js"></script>
<script src="${ctx}/static/vendor/owl.carousel2.thumbs/owl.carousel2.thumbs.min.js"></script>
<script src="${ctx}/static/js/jquery.parallax-1.1.3.js"></script>
<script src="${ctx}/static/vendor/bootstrap-select/js/bootstrap-select.min.js"></script>
<script src="${ctx}/static/vendor/jquery.scrollto/jquery.scrollTo.min.js"></script>
<script src="${ctx}/static/js/front.js"></script>
</body>
</html>
