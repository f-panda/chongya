<%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/5/13
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>总结分析</title>
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
    <link href="${ctx}/static/css/style.css" rel="stylesheet">
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
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <style type="text/css">
        table td {
            max-width: 100px;
            word-wrap: break-word;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
        }
        table td:hover {
            white-space: normal;
            overflow: auto;
        }
    </style> <![endif]-->
</head>
<body>
<div id="all">
    <jsp:include page="${ctx}/jsp/module/header.jsp"/>
    <div id="content">
        <div class="container">
            <div class="row bar">
                <!-- LEFT COLUMN _________________________________________________________-->
                <div id="blog-post" class="col-md-9">
                    <section class="post">
                        <div class="heading">
                            <h2>参考文献</h2>
                        </div>
                        <table class="table" style="margin-left: 50px">
                            <tbody>
                            <tr>
                                <i class="ti-thumb-up " style="color: red;padding: 687px"></i>
                            </tr>
                            <c:forEach items="${document}" var="obj" varStatus="status">
                                <tr>
                                    <th scope="row" style="width: 40px">[${status.count}]</th>
                                    <td><p class="text-info" style="color: black;"><a href="${obj.address}" target="_blank" onclick="add(${obj.id},${obj.hot})">${obj.name}</a> </p></td>
                                    <td>${obj.hot}</td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </section>
                </div>
                <div class="col-md-3" >
                    <jsp:include page="${ctx}/jsp/module/right.jsp"/>
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
<script src="${ctx}/static/js/add.js"></script>
<script src="${ctx}/static/bower_components/metisMenu/dist/metisMenu.min.js"></script>
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