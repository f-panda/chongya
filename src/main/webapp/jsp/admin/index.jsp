<%@ page import="com.tt.domain.userInfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Jacobi应用网站</title>
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
    <link rel="stylesheet" href="${ctx}/static/css/xenon-core.css">
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
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body>
<div id="all">
    <jsp:include page="${ctx}/jsp/module/header.jsp"/>
    <!-- Navbar End-->
    <div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站展示">网站展示</a></div>
    <section style="background: url('${ctx}/static/img/sx1.jpg') center center repeat; background-size: cover;" class="bar background-white relative-positioned">
        <div class="container">
            <!-- Carousel Start-->
            <div class="home-carousel">
                <div class="dark-mask mask-primary"></div>
                <div class="container">
                    <div class="homepage owl-carousel">
                        <div class="item">
                            <div class="row">
                                <div class="col-md-5 text-right">
                                    <p><img src="${ctx}/static/img/logo.png" alt="" class="ml-auto"></p>
                                    <h1>Jacobi方法的应用</h1>
                                    <p>矩阵特征值问题<br>有关Jacobi方法的研究</p>
                                </div>
                                <div class="col-md-7" align="center"><img src="${ctx}/static/img/110.jpg " alt="" class="img-fluid"></div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-5 text-right">
                                    <h1>课题成果展示</h1>
                                    <ul class="list-unstyled">
                                        <li>学生：傅祥文</li>
                                        <li>指导教师：李炎淼，刘丽娟</li>
<%--                                        <li>综合毕设</li>--%>
                                    </ul>
                                </div>
                                <div class="col-md-7" align="center"><img src="${ctx}/static/img/111.jpg" alt="" class="img-fluid"></div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="row">
                                <div class="col-md-7 " align="center"><img src="${ctx}/static/img/PI.jpg" alt="" class="img-fluid"></div>
                                <div class="col-md-5 text-md-left">
                                    <h1>进入Jacobi方法</h1>
                                    <ul class="list-unstyled">
                                        <li>众多迭代法中比较早且较简单的一种</li>
                                        <li>其命名也是为纪念普鲁士著名数学家雅可比</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Carousel End-->
        </div>
    </section>

<%--    <a href="/user/testfindALL">我要查询所有的用户信息</a>--%>
<%--    <a href="/user/testfindByName">我要查询所有姓王的用户信息</a>--%>
    </div>
<!-- Javascript files-->
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