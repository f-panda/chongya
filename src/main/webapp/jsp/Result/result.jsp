<%@ page import="com.tt.domain.Matrix" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/2/21
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>矩阵求解结果</title>
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
    <div>
        <jsp:include page="${ctx}/jsp/module/header.jsp"/>
    </div>
    <div>
        <div id="content">
            <div id="contact" class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <section class="bar" style="padding: 40px 35px;">
                            <div class="heading">
                                <h2> ${msg}</h2>
                            </div>
                            <div style="padding-left: 33px">
                            <div>
                                <h3>特征值矩阵：</h3>
                            </div>
                            <div style="position: relative;width: ${width}px;height: ${height}px;">
                                <span style="display:inline-block;position: absolute;left: 0px;top: 0px;width: ${ww}px;height: ${height}px;"><img  src="${ctx}/static/img/left.jpg" style="width: 38%"/></span>
                                <div style="position: absolute;left: 10px;top: 9px;">
                                    <c:forEach items="${value}" var="obj">
                                        <c:forEach items="${obj}" var="val">
                                                <span style="display:inline-block;width: 55px;text-align: center">${val}</span>&nbsp;&nbsp;&nbsp;
                                        </c:forEach>
                                        <br>
                                    </c:forEach>
                                </div>
                                <span style="display:inline-block;position: absolute;right: 0px;top: 0px;width: ${ww}px;height:${height}px;"><img src="${ctx}/static/img/right.png" style="width: 46%"/></span>
                            </div>
                            <div style="padding-top: 10px">
                                <h3>特征向量矩阵：</h3>
                            </div>
                            <div style="position: relative;width:${width}px;height:${height}px;">
                                <span style="display:inline-block;position: absolute;left: 0px;top: 0px;width: ${ww}px;height:${height}px;"><img  src="${ctx}/static/img/left.jpg" style="width: 38%"/></span>

                                    <div style="position: absolute;left: 10px;top: 9px;">
                                        <c:forEach items="${vector}" var="obj">
                                            <c:forEach items="${obj}" var="val">
                                                    <span style="display:inline-block;width: 55px;text-align: center">${val}</span>&nbsp;&nbsp;&nbsp;
                                            </c:forEach>
                                            <br>
                                        </c:forEach>
                                    </div>
                                <span style="display:inline-block;position: absolute;right: 0px;top: 0px;width:${ww}px;height: 90px;"><img src="${ctx}/static/img/right.png" style="width: 46%"/></span>
                            </div>
                            <div style="padding-top: 10px">
                                <span><h3>迭代次数：</h3></span>
                                <span style=""><h3>&nbsp;&nbsp;${matrix.st}</h3></span>
                            </div>
                        </div>
                    </section>
                    </div>

                            <div class="col-lg-4">
                                <section class="bar mb-0">
                                    <h3 class="text-uppercase">小贴士</h3>
                                    <p class="MsoNormal"><span lang="EN-US"
                                                               style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;</span>n阶矩阵就会有n个特征值<br>
                                        每个特征值对应一组特征向量<br>
                                        Jacobi方法求解特征向量较方便<br>
                                        可在笔记中记录下自己的特征值和特征向量
                                        <%--                            <math xmlns="http://www.w3.org/1998/Math/MathML">--%>
                                        <%--                            <mrow>--%>
                                        <%--                                <msub>--%>
                                        <%--                                    <mi>a</mi>--%>
                                        <%--                                    <mn>ij</mn>--%>
                                        <%--                                </msub>--%>
                                        <%--                                <mo>=</mo>--%>
                                        <%--                                <msub>--%>
                                        <%--                                    <mi>a</mi>--%>
                                        <%--                                    <mn>ji</mn>--%>
                                        <%--                                </msub>--%>
                                        <%--                            </mrow>--%>
                                        <%--                        </math>--%>
                                    <div style="margin-top:auto;width:auto;margin-left: auto;margin-right: auto;">
                                        <div class=TRS_Editor>
                                            <div class="TRS_PreAppend" style="overflow-x: hidden">
                                                <h3 class="text-uppercase">笔记</h3>
                                                <form action="${ctx}/comment/insert/1" method="post">
                                                    <textarea name="content" style="width: 100%; height: 80px;" placeholder="请在此处记录笔记..."></textarea>
                                                    <p class="MsoNormal"><span lang="EN-US"
                                                                               style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;</span>
                                                    </p>
                                                    </p>
                                                    <p align="right" class="MsoNormal" style="text-align: right">
                                                        <input type="submit" style="font-size: 1rem" CLASS="btn btn-outline-primary" value="提交" >
                                                    </p>
                                                </form>
                                                </p>
                                                <script>
                                                    <c:if test="${not empty msg}">

                                                    alert("${msg}");

                                                    </c:if>
                                                </script>
                                                <c:forEach items="${list}" var="commentDto">
                                                    <p class="MsoNormal">
                                                    <hr>
                                                    <span
                                                            style="font-size: 12pt; font-family: 宋体">${commentDto.name}：</span>

                                                    <p class="MsoNormal"><span
                                                            style="font-size: 12pt; font-family: 宋体">&nbsp;&nbsp;&nbsp;${commentDto.content}</span>

                                                    </p>

                                                    </p>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                            </section>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
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
</html>
