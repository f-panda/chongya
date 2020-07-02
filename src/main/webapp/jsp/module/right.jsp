<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 30554
  Date: 2020/5/13
  Time: 19:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<header>
<!-- RIGHT COLUMN _________________________________________________________-->


    <div class="panel panel-default sidebar-menu">

    </div>
    <div class="panel panel-default sidebar-menu">
        <div class="panel-heading">
            <h3 class="h4 panel-title">数据分析</h3>
        </div>
        <div class="panel-body">
            <ul class="nav nav-pills flex-column text-sm">
                <li class="nav-item"><a href="${ctx}/jsp/analysis.jsp" class="nav-link active">总结</a></li>
                <li class="nav-item"><a href="${ctx}/jsp/Result/iterator.jsp" class="nav-link ">迭代次数/结果精度</a></li>
                <li class="nav-item"><a href="${ctx}/document/queryAll" class="nav-link ">参考文献</a></li>
            </ul>
        </div>
    </div>
    <div class="panel sidebar-menu">
        <div style="margin-top:auto;width:auto;margin-left: auto;margin-right: auto;">
            <div class=TRS_Editor>
                <div class="TRS_PreAppend" style="overflow-x: hidden">
                    <p class="MsoNormal"><h3 class="h4 panel-title"
                            style="font-size: 12pt; font-family: 宋体">笔记：</h3>
                        <form action="${ctx}/comment/insert/3" method="post">
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
    </div>
</header>
</html>
