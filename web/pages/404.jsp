<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/11/13
  Time: 上午 11:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>古诗词网 404</title>
</head>
<body>
<%@include file="head.jsp" %>

<!-- 导航栏 -->
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-sm">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index">古诗词网</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link text-dark" href="${pageContext.request.contextPath}/index">首页 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/dynasty">朝代</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/author">作者</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/type">类型</a>
                    </li>
                </ul>
                <form action="searchresult.jsp" class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="搜索" aria-label="Search">
                    <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">搜索</button>
                </form>
            </div>
        </div>
    </nav>
</header>
<!-- 导航栏结束 -->

<div class="container-sm">
    <div class="card">
        <div class="card-body">
            <c:if test="${requestScope.msg==null}">
                <h2>此处一无所有</h2>
            </c:if>
            <c:if test="${requestScope.msg!=null}">
                <h2>${requestScope.msg}</h2>
            </c:if>
        </div>
    </div>
</div>

<%@include file="footer.jsp" %>
</body>
</html>
