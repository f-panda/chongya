<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

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
    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="${ctx}/static/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="${ctx}/tatic/img/apple-touch-icon.png">
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
    <!-- Top bar-->
    <div class="top-bar">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-md-6 d-md-block d-none">
                    <p>Contact us on +17866537265 </p>
                </div>
                <div class="col-md-6">
                    <div class="d-flex justify-content-md-end justify-content-between">
                        <ul class="list-inline contact-info d-block d-md-none">
                            <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                        <div class="login"><a href="#" data-toggle="modal" data-target="#login-modal" class="login-btn"><i class="fa fa-sign-in"></i><span class="d-none d-md-inline-block">登录</span></a><a href="${ctx}/jsp/admin/register.jsp" class="signup-btn"><i class="fa fa-user"></i><span class="d-none d-md-inline-block">注册</span></a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Top bar end-->
    <!-- Login Modal-->
    <div id="login-modal" tabindex="-1" role="dialog" aria-labelledby="login-modalLabel" aria-hidden="true" class="modal fade">
        <div role="document" class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 id="login-modalLabel" class="modal-title">用户登录</h4>
                    <button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
                </div>
                <div class="modal-body">
                    <form action="/user/toLogin" method="post">
                        <div class="form-group">
                            <input name="number" type="text" placeholder="学号" class="form-control">
                        </div>
                        <div class="form-group">
                            <input name="password" type="password" placeholder="密码" class="form-control">
                        </div>
                        <p class="text-center">
                            <button type="submit" class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> 登录</button>
                        </p>
                    </form>
                    <p class="text-center text-muted">还未注册?</p>
                    <p class="text-center text-muted"><a href="${ctx}/jsp/admin/register.jsp"><strong>立即注册</strong></a></p>
                </div>
            </div>
        </div>
    </div>
    <!-- Login modal end-->
    <!-- Navbar Start-->
    <header class="nav-holder make-sticky">
        <div id="navbar" role="navigation" class="navbar navbar-expand-lg">
            <div class="container"><a href="index.html" class="navbar-brand home"><img src="${ctx}/static/img/logo.png" alt="Jacobi logo" class="d-none d-md-inline-block"><img src="${ctx}/static/img/logo-small.png" alt="Jacobi logo" class="d-inline-block d-md-none"><span class="sr-only">Jacobi - go to homepage</span></a>
                <button type="button" data-toggle="collapse" data-target="#navigation" class="navbar-toggler btn-template-outlined"><span class="sr-only">Toggle navigation</span><i class="fa fa-align-justify"></i></button>

                <c:if test="${empty sessionScope.user}">
                    <div id="navigation" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav ml-auto">
                            <li class="nav-item dropdown "><a href="${ctx}/jsp/admin/login.jsp" data-toggle="dropdown" class="nav-link">主页 <b class="caret"></b></a>
                            </li>
                            <!-- ========== FULL WIDTH MEGAMENU END ==================-->
                            <!-- ========== Contact dropdown ==================-->
                            <li class="nav-item dropdown">
                                <a href="${ctx}/jsp/admin/login.jsp" data-toggle="dropdown" class="dropdown-toggle">介绍 <b class="caret"></b></a>
                            </li>
                            <li class="nav-item dropdown "><a href="${ctx}/jsp/admin/login.jsp" class="nav-link">特征值求解</a>
                            </li>
                            <li class="nav-item dropdown menu-large"><a href="${ctx}/jsp/admin/login.jsp#" data-toggle="dropdown" class="dropdown-toggle">多种Jacobi方法对比<b class="caret"></b></a>

                            <!-- ========== FULL WIDTH MEGAMENU ==================-->
                            <li class="nav-item dropdown ">
                                <a href="${ctx}/jsp/admin/login.jsp" data-hover="dropdown" data-delay="200" class="check-toggle">数据分析及结论 <b class="caret"></b></a>
                            </li>
                        </ul>
                    </div>
                    <div id="search" class="collapse clearfix">
                        <form role="search" class="navbar-form">
                            <div class="input-group">
                                <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                            </div>
                        </form>
                    </div>
                </c:if>

                <c:if test="${not empty sessionScope.user}">
                <div id="navigation" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item dropdown "><a href="${ctx}/index.jsp" data-toggle="dropdown" class="nav-link">主页 <b class="caret"></b></a>
                        </li>
                        <!-- ========== FULL WIDTH MEGAMENU END ==================-->
                        <!-- ========== Contact dropdown ==================-->
                        <li class="nav-item dropdown">
                                <a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">介绍 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-item">
                                        <a href="${ctx}/jsp/Introduction/one.jsp" class="nav-link">矩阵特征值求解简述</a></li>
                                <li class="dropdown-item"><a href="${ctx}/jsp/Introduction/two.jsp" class="nav-link">Jacobi方法的起源和发展状况</a></li>
                                <li class="dropdown-item"><a href="${ctx}/jsp/Introduction/three.jsp" class="nav-link">Jacobi方法简述</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown "><a href="${ctx}/jsp/contact.jsp" class="nav-link">特征值求解</a>
                        </li>
                        <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" class="dropdown-toggle">多种Jacobi方法对比<b class="caret"></b></a>
                            <ul class="dropdown-menu megamenu">
                                <li>
                                    <div class="row">
                                        <div class="col-lg-6"><img src="${ctx}/static/img/template-homepage.png" alt="" class="img-fluid d-none d-lg-block"></div>
                                        <div class="col-lg-3 col-md-6">
                                            <h5>Portfolio</h5>
                                            <ul class="list-unstyled mb-3">
                                                <li class="nav-item"><a href="portfolio-2.html" class="nav-link">2 columns</a></li>
                                                <li class="nav-item"><a href="portfolio-no-space-2.html" class="nav-link">2 columns with negative space</a></li>
                                                <li class="nav-item"><a href="portfolio-3.html" class="nav-link">3 columns</a></li>
                                                <li class="nav-item"><a href="portfolio-no-space-3.html" class="nav-link">3 columns with negative space</a></li>
                                                <li class="nav-item"><a href="portfolio-4.html" class="nav-link">4 columns</a></li>
                                                <li class="nav-item"><a href="portfolio-no-space-4.html" class="nav-link">4 columns with negative space</a></li>
                                                <li class="nav-item"><a href="portfolio-detail.html" class="nav-link">Portfolio - detail</a></li>
                                                <li class="nav-item"><a href="portfolio-detail-2.html" class="nav-link">Portfolio - detail 2</a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3 col-md-6">
                                            <h5>About</h5>
                                            <ul class="list-unstyled mb-3">
                                                <li class="nav-item"><a href="about.html" class="nav-link">About us</a></li>
                                                <li class="nav-item"><a href="team.html" class="nav-link">Our team</a></li>
                                                <li class="nav-item"><a href="team-member.html" class="nav-link">Team member</a></li>
                                                <li class="nav-item"><a href="services.html" class="nav-link">Services</a></li>
                                            </ul>
                                            <h5>Marketing</h5>
                                            <ul class="list-unstyled">
                                                <li class="nav-item"><a href="packages.html" class="nav-link">Packages</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <!-- ========== FULL WIDTH MEGAMENU ==================-->
                        <li class="nav-item dropdown "><a href="${ctx}/jsp/analysis.jsp" data-hover="dropdown" data-delay="200" class="check-toggle">数据分析及结论 <b class="caret"></b></a>
                    </ul>
                </div>
                <div id="search" class="collapse clearfix">
                    <form role="search" class="navbar-form">
                        <div class="input-group">
                            <input type="text" placeholder="Search" class="form-control"><span class="input-group-btn">
                    <button type="submit" class="btn btn-template-main"><i class="fa fa-search"></i></button></span>
                        </div>
                    </form>
                </div>
                </c:if>
            </div>
        </div>
    </header>
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
                                    <p style="color: white">矩阵特征值问题<br>有关Jacobi方法的研究</p>
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