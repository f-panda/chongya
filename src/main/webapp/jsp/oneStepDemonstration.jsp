<%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/3/2
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>单步演示</title>
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
    <link href="${ctx }/umeditor/themes/default/_css/umeditor.css" type="text/css" rel="stylesheet">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->

</head>
<body>
<div id="all">
    <jsp:include page="${ctx}/jsp/module/header.jsp"/>
    <!-- Navbar End-->

    <div id="content">
        <div id="contact" class="container">
            <div class="row" style="margin-left: 0px;">
                <div class="col-lg-8">
                    <section class="bar">
                        <div class="heading">
                            <h2>选择矩阵</h2>
                        </div>
                        <form action="/step/demonstration" method="post">
                        <label style="margin-bottom: 1.5rem">
                            <img src="${ctx}/static/img/matrix1.png"><input type="radio"  name="radioId" id="1" value="1"  />
                            <img src="${ctx}/static/img/matrix2.png"><input type="radio"  name="radioId" id="2" value="2"  />
                            <img src="${ctx}/static/img/matrix3.png"><input type="radio"  name="radioId" id="3" value="3"  />
                        </label>
                        <br>
                            <div style="margin-left: 20rem">
                                <button type="submit" class="btn btn-outline-primary" >确定</button>
                            </div>
                        </form>
                    </section>
                </div>

                        <div class="col-lg-4">
                            <section class="bar mb-0">
                                <h3 class="text-uppercase">小贴士</h3>
                                <p class="MsoNormal"><span lang="EN-US"
                                                           style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;">&nbsp;</span>Jacobi方法适用于实对称矩阵<br>矩阵中除对角线上的元素外<br>其余元素满足<br>
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
                                    a<sub>ij</sub>=a<sub>ji</sub></p>
                                <div style="margin-top:auto;width:auto;margin-left: auto;margin-right: auto;">
                                    <div class=TRS_Editor>
                                        <div class="TRS_PreAppend" style="overflow-x: hidden">
                                            <h3 class="text-uppercase">笔记</h3>
                                            <form action="${ctx}/comment/insert/1" method="post">
                                                <textarea name="content" id="content" style="width: 100%; height: 80px;" placeholder="请在此处记录笔记..."></textarea>
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
                    </section>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Javascript files-->
<script type="text/javascript">
    <c:if test="radioId=null">
    window.alert("请选择矩阵")
    </c:if>
    <c:if test="${not empty error}">
    window.alert("${error}")
    </c:if>
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
<script src="${ctx}/static/js/table.js"></script>
<script type="text/javascript">
    var mm=function()
    {
        if('${msg}'!==''){
            window.alert("${msg}");
        }
    }();
</script>

</body>
</html>
