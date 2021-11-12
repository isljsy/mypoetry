<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/11/11
  Time: 上午 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>古诗词网</title>
</head>
<body>
<%@include file="head.jsp"%>
<!-- 导航栏 -->
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-sm">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/index">古诗词网</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="${pageContext.request.contextPath}/index">首页 <span class="sr-only">(current)</span></a>
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

<!-- 类型 -->
<div class="container vw-50">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a class="" data-toggle="collapse" href="#type" role="button" aria-expanded="false" aria-controls="collapseExample">所有类型</a></li>
        </ol>
    </nav>
    <div class="border collapse show" id="type">
        <div class="d-flex list-group flex-row flex-wrap">
            <a href="#" class="btn line-btn btn-active">所有 </a>
            <a href="#" class="btn line-btn">李白 </a>
        </div>
        <nav aria-label="Page navigation example ">
            <ul class="pagination justify-content-end">
                <li class="page-item"><a class="page-link text-dark" href="#">上一页</a></li>
                <li class="page-item"><a class="page-link text-dark">1/12</a></li>
                <li class="page-item"><a class="page-link text-dark" href="#">下一页</a></li>
            </ul>
        </nav>
    </div>
</div>
<!-- 类型结束 -->

<!-- 展示诗词 -->
<div class="container vw-50">
    <div class="card">
        <div class="card-body">
            <div class=" d-flex align-items-baseline">
                <h3><a class="card-title text-dark" href="#">行宫</a></h3>
                <p>
                    <a class="card-subtitle mb-2 text-muted" href="#">[唐代]</a>
                    <a class="card-subtitle mb-2 text-muted" href="#">元稹</a>
                </p>
            </div>
            <p class="card-text">寥落古行宫，宫花寂寞红。白头宫女在，闲坐说玄宗。</p>
        </div>
    </div>
    <nav aria-label="Page navigation example ">
        <ul class="pagination justify-content-end">
            <li class="page-item"><a class="page-link text-dark" href="#">上一页</a></li>
            <li class="page-item"><a class="page-link text-dark">1/12</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">下一页</a></li>
        </ul>
    </nav>
</div>
<!-- 展示诗词结束 -->

<%@include file="footer.jsp"%>
</body>
</html>
