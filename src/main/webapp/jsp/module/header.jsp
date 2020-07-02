<%@ page import="com.tt.domain.userInfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>头部信息</title>
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
<header>
    <!-- Top bar-->
    <div class="top-bar">
        <div class="container">
            <div class="row d-flex align-items-center">
                <div class="col-md-6 d-md-block d-none">
                    <p>Contact us on +17866537265</p>
                </div>
                <div class="col-md-6">
                    <div class="d-flex justify-content-md-end justify-content-between">
                        <ul class="list-inline contact-info d-block d-md-none">
                            <li class="list-inline-item"><a href="#"><i class="fa fa-phone"></i></a></li>
                            <li class="list-inline-item"><a href="#"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                        <div class=" col-md-6 d-md-block d-none" align="right">
                            <a href="#" data-toggle="dropdown">
                                <img src="${ctx}/static/img/user-1.png" alt="user-image" width="25" />
                                <span>
							      ${user.name}
							<i class="fa-angle-down"></i>
						</span>
                            </a>

                            <ul class="dropdown-menu user-profile-menu list-unstyled">
                                <li>
                                    <a href="/user/query/queryOneUser">
                                        <i class="fa-user"></i>
                                        个人信息
                                    </a>
                                </li>
                                <li>
                                    <a href="/user/query/queryMatrix">
                                        <i class="fa-wrench"></i>
                                        使用记录
                                    </a>
                                </li>
                                <li>
                                    <a href="/comment/query/queryByUserId">
                                        <i class="fa-edit"></i>
                                        我的笔记
                                    </a>
                                </li>
                                <%
                                    userInfo user =(userInfo) request.getSession().getAttribute("user");
                                    if(user.getRole()==1){
                                %>

                                <li>
                                    <a href="/admin/query/queryAllUsers">
                                        <i class="fa-user"></i>
                                        用户管理
                                    </a>
                                </li>
                                <li>
                                    <a href="/comment/query/queryAllUser">
                                        <i class="fa-edit"></i>
                                        笔记管理
                                    </a>
                                </li>
                                <%} %>
                            </ul>
                            </li>
                        </div>
                        <a href="/user/logout"><span class="d-none d-md-inline-block">退出</span></a>
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
                    <form action="/user/toLogin" method="get">
                        <div class="form-group">
                            <input id="id" type="text" placeholder="学号" class="form-control">
                        </div>
                        <div class="form-group">
                            <input id="password" type="password" placeholder="密码" class="form-control">
                        </div>
                        <p class="text-center">
                            <button class="btn btn-template-outlined"><i class="fa fa-sign-in"></i> 登录</button>
                        </p>
                    </form>
                    <p class="text-center text-muted">还未注册?</p>
                    <p class="text-center text-muted"><a href="customer-register.html"><strong>立即注册</strong></a></p>
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
                <div id="navigation" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item dropdown active"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">主页 <b class="caret"></b></a>
                        </li>
                        <!-- ========== FULL WIDTH MEGAMENU END ==================-->
                        <!-- ========== Contact dropdown ==================-->
                        <li class="nav-item dropdown"><a href="javascript: void(0)" data-toggle="dropdown" class="dropdown-toggle">简介<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-item"><a href="${ctx}/jsp/Introduction/one.jsp" class="nav-link">矩阵特征值问题简述</a></li>
                                <li class="dropdown-item"><a href="${ctx}/jsp/Introduction/two.jsp" class="nav-link">Jacobi方法的起源和发展状况</a></li>
                                <li class="dropdown-item"><a href="${ctx}/jsp/Introduction/three.jsp" class="nav-link">Jacobi方法简述</a></li>
                            </ul>
                        </li>
                        <li class="nav-item dropdown "><a href="/comment/query/1" class="nav-link">矩阵输入</a>
                        </li>
                        <li class="nav-item dropdown "><a href="/comment/query/2" data-toggle="dropdown" class="dropdown-toggle">单步演示<b class="caret"></b></a>
                            <ul class="dropdown-menu megamenu">
                                <li class="dropdown-item"><a href="${ctx}/jsp/oneStepDemonstration.jsp" class="nav-link">经典Jcobi</a></li>
                                <li class="dropdown-item"><a href="${ctx}/jsp/Introduction/two.jsp" class="nav-link">循环Jacobi</a></li>
                                <li class="dropdown-item"><a href="${ctx}/jsp/Introduction/three.jsp" class="nav-link">过关Jacobi</a></li>
                            </ul>
                        </li>
                        <!-- ========== FULL WIDTH MEGAMENU ==================-->
                        <li class="nav-item dropdown "><a href="/comment/query/3" data-hover="dropdown" data-delay="200" class="check-toggle">总结分析<b class="caret"></b></a>
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
            </div>
        </div>
    </header>
</header>
