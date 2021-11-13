<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/11/11
  Time: 上午 10:46
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
                        <a class="nav-link text-muted" href="${pageContext.request.contextPath}/index">首页 <span class="sr-only">(current)</span></a>
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

<!-- 搜索结果 -->
<div class="container vw-50">

    <!-- 搜索结果分类 -->
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item collapse-btn"><a href="#">搜索</a></li>
            <li class="breadcrumb-item collapse-btn"><a href="#">作者</a></li>
            <li class="breadcrumb-item collapse-btn"><a href="#">标题</a></li>
            <li class="breadcrumb-item collapse-btn"><a href="#">内容</a></li>
        </ol>
    </nav>

    <!-- 默认搜索结果 -->
    <div class="collapse show" id="search">
        <!-- 一个作者结果 -->
        <div class="bd-callout">
            <h5>李清照</h5>
            <p>李清照（1084年3月13日～1155年5月12日）号易安居士，汉族，山东省济南章丘人。宋代（南北宋之交）女词人，婉约词派代表，有“千古第一才女”之称。所作词，前期多写其悠闲生活，后期多悲叹身世，情调感伤。形式上善用白描手法，自辟途径，语言清丽。论词强调协律，崇尚典雅，提出词“别是一家”之说，反对以作诗文之法作词。能诗，留存不多，部分篇章感时咏史，情辞慷慨，与其词风不同。有《易安居士文集》《易安词》，已散佚。后人有《漱玉词》辑本。今有《李清照集校注》。</p>
        </div>

        <!-- 两个标题结果 -->
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

        <div class="card">
            <div class="card-body">
                <div class=" d-flex align-items-baseline">
                    <h3><a class="card-title text-dark" href="#">相思</a></h3>
                    <p>
                        <a class="card-subtitle mb-2 text-muted" href="#">[唐代]</a>
                        <a class="card-subtitle mb-2 text-muted" href="#">王维</a>
                    </p>
                </div>
                <p class="card-text">红豆生南国，春来发几枝。愿君多采撷，此物最相思。</p>
            </div>
        </div>

        <!-- 三个内容结果 -->
        <div class="card">
            <div class="card-body">
                <div class=" d-flex align-items-baseline">
                    <h3><a class="card-title text-dark" href="#">登鹳雀楼</a></h3>
                    <p>
                        <a class="card-subtitle mb-2 text-muted" href="#">[唐代]</a>
                        <a class="card-subtitle mb-2 text-muted" href="#">王之涣</a>
                    </p>
                </div>
                <p class="card-text">白日依山尽，黄河入海流。欲穷千里目，更上一层楼。</p>
            </div>
        </div>

        <div class="card">
            <div class="card-body">
                <div class=" d-flex align-items-baseline">
                    <h3><a class="card-title text-dark" href="#">竹里馆</a></h3>
                    <p>
                        <a class="card-subtitle mb-2 text-muted" href="#">[唐代]</a>
                        <a class="card-subtitle mb-2 text-muted" href="#">王维</a>
                    </p>
                </div>
                <p class="card-text">独坐幽篁里，弹琴复长啸。深林人不知，明月来相照。</p>
            </div>

        </div>
        <div class="card">
            <div class="card-body">
                <div class=" d-flex align-items-baseline">
                    <h3><a class="card-title text-dark" href="#">送别 / 山中送别</a></h3>
                    <p>
                        <a class="card-subtitle mb-2 text-muted" href="#">[唐代]</a>
                        <a class="card-subtitle mb-2 text-muted" href="#">王维</a>
                    </p>
                </div>
                <p class="card-text">山中相送罢，日暮掩柴扉。春草明年绿，王孙归不归？(明年 一作：年年</p>
            </div>
        </div>
        <!-- 分页 -->
        <nav aria-label="Page navigation example ">
            <ul class="pagination justify-content-end">
                <li class="page-item"><a class="page-link text-dark" href="#">上一页</a></li>
                <li class="page-item"><a class="page-link text-dark">1/12</a></li>
                <li class="page-item"><a class="page-link text-dark" href="#">下一页</a></li>
            </ul>
        </nav>
    </div>
    <!-- 默认搜索结果结束 -->

    <!-- 作者搜索结果 -->
    <div class="collapse" id="author">
        <div class="bd-callout">
            <h5>李清照</h5>
            <p>李清照（1084年3月13日～1155年5月12日）号易安居士，汉族，山东省济南章丘人。宋代（南北宋之交）女词人，婉约词派代表，有“千古第一才女”之称。所作词，前期多写其悠闲生活，后期多悲叹身世，情调感伤。形式上善用白描手法，自辟途径，语言清丽。论词强调协律，崇尚典雅，提出词“别是一家”之说，反对以作诗文之法作词。能诗，留存不多，部分篇章感时咏史，情辞慷慨，与其词风不同。有《易安居士文集》《易安词》，已散佚。后人有《漱玉词》辑本。今有《李清照集校注》。</p>
        </div>
        <!-- 分页 -->
        <nav aria-label="Page navigation example ">
            <ul class="pagination justify-content-end">
                <li class="page-item"><a class="page-link text-dark" href="#">上一页</a></li>
                <li class="page-item"><a class="page-link text-dark">1/12</a></li>
                <li class="page-item"><a class="page-link text-dark" href="#">下一页</a></li>
            </ul>
        </nav>
    </div>
    <!-- 作者搜索结果结束 -->

    <!-- 标题搜索结果 -->
    <div class="collapse" id="title">
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
        <!-- 分页 -->
        <nav aria-label="Page navigation example ">
            <ul class="pagination justify-content-end">
                <li class="page-item"><a class="page-link text-dark" href="#">上一页</a></li>
                <li class="page-item"><a class="page-link text-dark">1/12</a></li>
                <li class="page-item"><a class="page-link text-dark" href="#">下一页</a></li>
            </ul>
        </nav>
    </div>
    <!-- 标题搜索结果结束 -->

    <!-- 内容搜索结果 -->
    <div class="collapse" id="content">
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
        <!-- 分页 -->
        <nav aria-label="Page navigation example ">
            <ul class="pagination justify-content-end">
                <li class="page-item"><a class="page-link text-dark" href="#">上一页</a></li>
                <li class="page-item"><a class="page-link text-dark">1/12</a></li>
                <li class="page-item"><a class="page-link text-dark" href="#">下一页</a></li>
            </ul>
        </nav>
    </div>
    <!-- 内容搜索结果结束 -->
</div>
<!-- 搜索结果结束 -->

<%@include file="footer.jsp"%>
</body>
</html>
