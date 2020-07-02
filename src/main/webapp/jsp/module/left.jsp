<%@ page import="com.tt.domain.userInfo" %><%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/3/4
  Time: 17:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的管理</title>
</head>
<header>
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" style="margin-bottom: 0">
        <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
            <div class="top-left-part"><a class="logo" href="dashboard.html"><i class="glyphicon glyphicon-fire"></i>&nbsp;<span class="hidden-xs">我的管理</span></a></div>
            <ul class="nav navbar-top-links navbar-left hidden-xs">
                <li><a href="javascript:void(0)" class="open-close hidden-xs hidden-lg waves-effect waves-light"><i class="ti-arrow-circle-left ti-menu"></i></a></li>
            </ul>
            <ul class="nav navbar-top-links navbar-right pull-right">
                <li>
                    <form role="search" class="app-search hidden-xs">
                        <input type="text" placeholder="Search..." class="form-control">
                        <a href=""><i class="ti-search"></i></a>
                    </form>
                </li>
                <li>
                    <a class="profile-pic" href="#"> <img src="${ctx}/static/img/user-1.png" alt="user-img" width="36" class="img-circle"><b class="hidden-xs">${user.name}</b> </a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-header -->
        <!-- /.navbar-top-links -->
        <!-- /.navbar-static-side -->
    </nav>
    <div class="navbar-default sidebar nicescroll" role="navigation">
        <div class="sidebar-nav navbar-collapse ">
            <ul class="nav" id="side-menu">
                <li class="sidebar-search hidden-sm hidden-md hidden-lg">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" placeholder="条件查询">
                        <input type="text" class="form-control" placeholder="条件查询">
                        <input type="text" class="form-control" placeholder="条件查询">
                        <span class="input-group-btn">
                                <button class="btn btn-default" type="button"><i class="ti-search"></i> </button>
                            </span>
                    </div>
                </li>
                <li>
                    <a href="/user/query/queryOneUser" class="waves-effect"><i class="glyphicon ti-id-badge fa-fw"></i> 个人信息</a>
                </li>
                <li>
                    <a href="/user/query/queryMatrix" class="waves-effect"><i class="ti-comment-alt  fa-fw"></i>使用记录</a>
                </li>
                <li>
                    <a href="/comment/query/queryByUserId" class="waves-effect"><i class="ti-write fa-fw"></i>我的笔记</a>
                </li>
                <%
                    userInfo userInfo=(com.tt.domain.userInfo)session.getAttribute("user");
                    if(userInfo.getRole()==1){
                %>
                <li>
                    <a href="/admin/query/queryAllUsers" class="waves-effect"><i class="ti-user  fa-fw"></i>用户管理</a>
                </li>
                <li>
                    <a href="/comment/query/queryAllUser" class="waves-effect"><i class="ti-pencil-alt fa-fw"></i>笔记管理</a>
                </li>
                <%  }
                %>
            </ul>
            <div class="center p-20">
                <span class="hide-menu"><a href="${ctx}/jsp/admin/index.jsp" class="btn btn-info btn-block btn-rounded waves-effect waves-light">返回主页</a></span>
            </div>
        </div>
        <!-- /.sidebar-collapse -->
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

</header>
</html>
