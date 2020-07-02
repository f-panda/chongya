<%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/2/17
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>登录</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
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


</head>
<body style="padding-top: 60px">
    <div class="demos-buttons">

    </div>
    <section id="getintouch" class="flipInX animated">
        <div class="container" style="border-bottom: 0;">
            <h1 style="color: black">
                <span>请先登录</span>
            </h1>
        </div>
        <div class="container"style="border-bottom: 0;">
            <form action="/user/toLogin" method="post">
                <div class="form-group "  align="center">
                    <input name="number" type="number" placeholder="学号" class="form-control">
                </div>
                <div class="form-group"  align="center">
                    <input name="password" type="password" placeholder="密码" class="form-control">
                </div>
                <div class="form-group"  align="center">
                    <label  style="margin-left: -150px">
                        <input name="vercode" type="text" id="vv" placeholder="图形验证码" class="form-control"></label>
                   <label>
                    <div style="margin-left: 10px;">
                        <img src="/verifiCode" class="from-control">
                        <a href="javascript:reImg();" class="layadmin-user-jump-change layadmin-link" style="margin-top: 7px;">换一张</a>
                    </div>
                    </label></div>


                <p class="text-center">
                    <button type="submit" class="btn btn-template-outlined btn-lg"><i class="fa fa-sign-in"></i> 登录</button>
                </p>
            </form>
            <div id="item">
                <h2 style="color:red">${msg}</h2>
            </div>
            <div class="w3layouts_more-buttn"STYLE="align-content: center">
                <h2 style="color:black">还未注册？
                    <a href="${ctx}/jsp/admin/register.jsp">立即注册
                    </a>
                </h2>
            </div>
        </div>
    </section>
</body>
<script>
    //更换验证码
    function reImg() {
        var img = document.getElementById("vv");
        var newSrc = "/verifiCode?rnd=" + Math.random();
        img.src = newSrc;
    }
</script>
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
</html>
