<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.tt.domain.userInfo" %><%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/3/2
  Time: 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>修改个人信息</title>

    <link href="${ctx}/static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type='text/css' media="all">
    <link href="${ctx}/static/css/materialdesignicons.min.css" rel="stylesheet" type='text/css' media="all">
    <link href="${ctx}/static/css/style.min.css" rel="stylesheet" type='text/css' media="all">
</head>
<body background="${ctx}/static/img/sx1.jpg">
<main class="lyear-layout-content" style="width: 80%">

    <div class="container-fluid">

        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><h4>修改用户</h4></div>
                    <div class="card-body">
                        <c:forEach items="${list}" var="user" varStatus="status">
                        <form class="form-horizontal" action="/user/update" method="post">
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-hf-username">用户名</label>
                                <div class="col-md-7">
                                    <input class="form-control" type="text" id="example-hf-username" name="name" value="${user.name}"}>
                                    <input class="form-control" type="hidden" name="id" value="${user.id}" }>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-hf-password">密码</label>
                                <div class="col-md-7">
                                    <input class="form-control" type="text" id="example-hf-password" name="password" value="${user.password}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-hf-email">学号</label>
                                <div class="col-md-7">
                                    <input class="form-control" type="text" id="example-hf-email" name="number" value="${user.number}" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label" for="example-hf-phone">班级</label>
                                <div class="col-md-7">
                                    <input class="form-control" type="text" id="example-hf-phone" name="classid" value="${user.classid}" readonly>
                                </div>
                            </div>
                            </c:forEach>
                            <div class="form-group">
                                <div class="col-md-9 col-md-offset-3">
                                    <button class="btn btn-primary" type="submit">修改</button>
                                </div>
                            </div>

                        </form>
                    </div>
<%--                    <script type="text/javascript">--%>
<%--                        function updateUser(id){--%>
<%--                            let pwd = null;--%>
<%--                            pwd=${user.password};--%>
<%--                            let Name = null;--%>
<%--                            Name= ${user.name};--%>
<%--                            let classid = null;--%>
<%--                            classid=${user.classid};--%>
<%--                            if(pwd==""||Name==""){--%>
<%--                                alert("请输入密码和姓名");--%>
<%--                            }else{--%>
<%--                                $.ajax({--%>
<%--                                    type : "POST", //提交方式--%>
<%--                                    url : "user/update",//路径--%>
<%--                                    data : {--%>
<%--                                        "password" : pwd,--%>
<%--                                        "method" :"update",--%>
<%--                                        "name" : Name,--%>
<%--                                        "classid":classid,--%>
<%--                                        "id":id--%>
<%--                                    },--%>
<%--                                    success : function(result) {--%>
<%--                                        if (result=="true") {--%>
<%--                                            alert("更新成功！");--%>
<%--                                            refreshPage();--%>
<%--                                        } else {--%>
<%--                                            alert("更新失败！");--%>
<%--                                        }--%>
<%--                                    }--%>
<%--                                });--%>
<%--                            }--%>
<%--                        }--%>
<%--                    </script>--%>
                </div>
            </div>
        </div>

    </div>

</main>
</body>
</html>