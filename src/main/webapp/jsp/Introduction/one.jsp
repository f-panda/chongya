<%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/1/30
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>矩阵特征值求解</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../../static/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../../static/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Google fonts - Roboto-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,700">
    <!-- Bootstrap Select-->
    <link rel="stylesheet" href="../../static/vendor/bootstrap-select/css/bootstrap-select.min.css">
    <!-- owl carousel-->
    <link rel="stylesheet" href="../../static/vendor/owl.carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="../../static/vendor/owl.carousel/assets/owl.theme.default.css">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../../static/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../../static/css/custom.css">
    <!-- Favicon and apple touch icons-->
    <link rel="shortcut icon" href="../../static/img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="../../static/img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="57x57" href="../../static/img/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="72x72" href="../../static/img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="../../static/img/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="../../static/img/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="../../static/img/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="../../static/img/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="../../static/img/apple-touch-icon-152x152.png">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<div id="all">
    <jsp:include page="${ctx}/jsp/module/header.jsp"/>

    <div id="content">
        <div class="container"style="background-color: white">
            <section class="bar">
                <div class="row">
                    <div class="col-md-12">
                        <div class="heading">
                            <h2>矩阵特征值求解</h2>
                        </div>
                        <p class="lead" style="margin-bottom: 10px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在任意一个矩阵A中，P_A (λ)=det⁡(λI-A)=0的根为矩阵A的特征值.在任意一个矩阵A中，P_A (λ)=det⁡(λI-A)=0的根为矩阵A的特征值。
                            而满足λ_i v=Av的向量v为矩阵A的对于特征值λ_i的特征向量，P_A (λ)称为矩阵A的特征多项式.。
                        </p>
                        <p class="lead">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;特征分解是使用最广的矩阵分解之一，其就是矩阵分解成一组特征向量和特征值。最直接求解矩阵特征值和特征向量的方法就是考虑对线性方程组AX=b求根，但在对于由工程技术中产生的大型稀疏矩阵方程组（A的阶数很高，但零元素较多，例如求某些偏微分方程数值解所产生的线性方程组），利用迭代法求解此方程组就是合适的，迭代中对矩阵进行相似变换，可以说都可利用A中有大量零元素的特点。而Jacobi迭代法就是众多迭代法中比较早且较简单的一种，其命名也是为纪念普鲁士著名数学家雅可比。
                        </p>
                                        </div>
                                    </div>
                            </section>
                        </div>
                    </div>
            </div>
        </div>
    </div>
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
