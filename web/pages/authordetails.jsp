<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/11/13
  Time: 上午 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>古诗词网</title>
</head>
<body>
<%@include file="head.jsp" %>
<c:set value="${requestScope.page}" var="page"/>
<c:set value="${pageContext.request.contextPath}" var="path"/>
<c:set value="${requestScope.author}" var="author"/>

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
                        <a class="nav-link" href="${pageContext.request.contextPath}/index">首页 <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.request.contextPath}/dynasty">朝代</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="${pageContext.request.contextPath}/author">作者</a>
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

<!-- 分类栏 -->
<div class="container vw-50">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a
                    href="${pageContext.request.contextPath}/author?dynasty=${author.dynasty.id}">${author.dynasty.dynastyName}</a>
            </li>
            <li class="breadcrumb-item"><a
                    href="${pageContext.request.contextPath}/author?dynasty=${author.dynasty.id}&pinyin=${author.pinyin}">${author.pinyin}</a>
            </li>
            <li class="breadcrumb-item text-muted">${author.name}</li>
        </ol>
    </nav>
</div>
<!-- 分类栏结束 -->
<!-- 展示诗词 -->
<div class="container vw-50">
    <div class="bd-callout">
        <h5>${author.name}</h5>
        <p class="text-muted">记录作品:${requestScope.count}首</p>
        <p>${author.lifeTime}</p>
    </div>

    <c:forEach items="${requestScope.poetryList}" var="poetry">
        <div class="card">
            <div class="card-body">
                <div class=" d-flex align-items-baseline">
                    <h3><a class="card-title text-dark" href="#">${poetry.title}</a></h3>
                    <p>
                        <a class="card-subtitle mb-2 text-muted" href="#">[${poetry.author.dynasty.dynastyName}]</a>
                        <a class="card-subtitle mb-2 text-muted" href="#">${poetry.author.name}</a>
                    </p>
                </div>
                    <%--只显示前两句--%>
                <p class="card-text">${poetry.content[0]}${poetry.content[1]}...</p>
            </div>
        </div>
    </c:forEach>
    <nav aria-label="Page navigation example ">
        <ul class="pagination justify-content-end">

            <c:if test="${page.pageNo==1}">
                <li class="page-item disabled">
                    <a class="page-link text-dark" href="#">
                        上一页
                    </a>
                </li>
            </c:if>
            <c:if test="${page.pageNo!=1}">
                <li class="page-item">
                    <a class="page-link text-dark"
                       href="${path}/author-details?author=${author.id}&page=${page.pageNo-1}">
                        上一页
                    </a>
                </li>
            </c:if>

            <li class="page-item"><a class="page-link text-dark">${page.pageNo}/${page.totalPages}</a></li>

            <c:if test="${page.pageNo==page.totalPages}">
                <li class="page-item disabled">
                    <a class="page-link text-dark" href="#">
                        下一页
                    </a>
                </li>
            </c:if>
            <c:if test="${page.pageNo!=page.totalPages}">
                <li class="page-item">
                    <a class="page-link text-dark"
                       href="${path}/author-details?author=${author.id}&page=${page.pageNo+1}">
                        上一页
                    </a>
                </li>
            </c:if>
        </ul>
    </nav>
</div>
<!-- 展示诗词结束 -->

<%@include file="footer.jsp" %>
</body>
</html>

