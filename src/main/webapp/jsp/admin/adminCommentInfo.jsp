<%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/3/2
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/2/26
  Time: 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>笔记管理</title>
    <!-- Bootstrap Core CSS -->
    <link href="${ctx}/static/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="${ctx}/static/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="${ctx}/static/css/style.css" rel="stylesheet">
    <style type="text/css">
        {
            margin:  auto;
            position: absolute;
            top: 0;
            left: 0;
            right: 0  ;
            bottom: 0;
        }
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
    </style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <jsp:include page="/jsp/module/left.jsp"/>
    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row bg-title">
                <div class="col-lg-12">
                    <h4 class="page-title" style="color: #f4f8fb">所有笔记</h4>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- row -->
            <div class="row">
                <div class="col-sm-12">
                    <div class="white-box">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>姓名</th>
                                    <th>标题</th>
                                    <th>内容</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${list}" var="obj" varStatus="status">
                                    <tr>
                                        <th scope="row">${status.count}</th>
                                        <td>${obj.name}</td>
                                        <td>${obj.article}</td>
                                        <td>${obj.content}</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-xs btn-default" href="/comment/delete2/${obj.id}" title="删除" data-toggle="tooltip">删除</a>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </div>
</div>
<!-- /#wrapper -->
<!-- jQuery -->
<script src="${ctx}/static/vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="${ctx}/static/vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Menu Plugin JavaScript -->
<script src="${ctx}/static/bower_components/metisMenu/dist/metisMenu.min.js"></script>
<!--Nice scroll JavaScript -->
<script src="${ctx}/static/js/jquery.nicescroll.js"></script>
<!--Wave Effects -->
<script src="${ctx}/static/js/waves.js"></script>
<!-- Custom Theme JavaScript -->
<script src="${ctx}/static/js/myadmin.js"></script>
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
