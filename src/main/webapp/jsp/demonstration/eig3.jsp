<%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/4/7
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>一步迭代</title>
    <!-- Bootstrap Core CSS -->
    <link href="${ctx}/static/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="${ctx}/static/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${ctx}/static/css/style.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<%--    <!--[if lt IE 9]>--%>
    <link rel="stylesheet" href="${ctx}/static/css/jquery.fullPage.css">
    <script src="${ctx}/static/vendor/jquery/jquery.min.js"></script>
    <script src="${ctx}/static/js/jquery.fullPage.js"></script>
    <style type="text/css">
        .page1{
            background: url("${ctx}/static/img/display7.jpg") no-repeat ;
            background-size: 100% 100%;
        }
        .page2{
            background: url("${ctx}/static/img/display8.jpg") no-repeat ;
            background-size: 100% 100%;
        }
        .page3{
            background:  url("${ctx}/static/img/display9.jpg") no-repeat;
            background-size: 100% 100%;
        }
    </style>
</head>
<body>
<div id="dowebok">
    <div class="page1 section" id="page1" >
        <%--            <img src="${ctx}/static/img/display1.png" style="height: 100%;width: 100%">--%>
    </div>
    <div class="page2 section" id="page2">
        <%--            <img src="${ctx}/static/img/display2.png" style="height: 100%;width: 100%">--%>
    </div>
    <div class="page3 section" id="page3">
        <%--            <img src="${ctx}/static/img/display3.png" style="height: 100%;width: 100%">--%>
            <div class="center p-20" style="position:absolute;bottom:30px;right:15px;">
                <span class="hide-menu"><a href="${ctx}/jsp/oneStepDemonstration.jsp" class="btn btn-info btn-block btn-rounded waves-effect waves-light">返回上一级</a></span>
            </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $(function(){
        $('#dowebok').fullpage();

    });
</script>
</html>

