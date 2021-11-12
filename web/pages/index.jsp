<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/11/11
  Time: 上午 9:08
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

<!-- 展示诗词 -->
<div class="container vw-50 full-poetry">
    <div class="card">
        <div class="card-body">
            <h3><a class="card-title text-dark" href="${pageContext.request.contextPath}/">行宫</a></h3>
            <p>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">[唐代]</a>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">元稹</a>
            </p>
            <p class="card-text">寥落古行宫，宫花寂寞红。</p>
            <p class="card-text">白头宫女在，闲坐说玄宗。</p>
        </div>
        <div class="card-footer">
            <button class="btn card-link explanation-btn">注释</button>
            <button class="btn card-link explanation-btn">翻译</button>
            <button class="btn card-link explanation-btn">赏析</button>
            <button class="btn card-link explanation-btn">作者</button>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h3><a class="card-title text-dark" href="${pageContext.request.contextPath}/">相思</a></h3>
            <p>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">[唐代]</a>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">王维</a>
            </p>
            <p class="card-text">红豆生南国，春来发几枝。</p>
            <p class="card-text">愿君多采撷，此物最相思。</p>
        </div>
        <div class="card-footer">
            <button class="btn card-link explanation-btn">注释</button>
            <button class="btn card-link explanation-btn">翻译</button>
            <button class="btn card-link explanation-btn">赏析</button>
            <button class="btn card-link explanation-btn">作者</button>
            <!-- 注释 -->
            <div class=" explanation">
                <div class="hide notes">
                    <p>红豆：又名相思子，一种生在江南地区的植物，结出的籽像豌豆而稍扁，呈鲜红色。</p>
                    <p>“春来”句：一作“秋来发故枝”。</p>
                    <p>“愿君”句：一作“劝君休采撷”。</p>
                    <p>采撷：采摘。</p>
                    <p>相思：想念。</p>
                </div>
                <!-- 翻译 -->
                <div class="hide translate">
                    <p>鲜红浑圆的红豆，生长在阳光明媚的南方，春暖花开的季节，不知又生出多少？</p>
                    <p>希望思念的人儿多多采集，小小红豆引人相思。</p>
                    <p class="res text-muted">邓安生 等．王维诗选译．成都：巴蜀书社，1990：214-215</p>
                </div>
                <!-- 赏析 -->
                <div class="hide appreciation">
                    <p>
                        这是借咏物而寄相思的诗，是眷怀友人之作。起句因物起兴，语虽单纯，却富于想象；接着以设问寄语，意味深长地寄托情思；第三句暗示珍重友谊，表面似乎嘱人相思，背面却深寓自身相思之重；最后一语双关，既切中题意，又关合情思，妙笔生花，婉曲动人。全诗情调健美高雅，怀思饱满奔放，语言朴素无华，韵律和谐柔美。可谓绝句的上乘佳品。","　　红豆产于南方，结实鲜红浑圆，晶莹如珊瑚，南方人常用以镶嵌饰物。传说古代有一位女子，因丈夫死在边地，哭于树下而死，化为红豆，于是人们又称呼它为“相思子”。唐诗中常用它来关合相思之情。而“相思”不限于男女情爱范围，朋友之间也有相思的，如苏李诗“行人难久留，各言长相思”即著例。此诗题一作《江上赠李龟年》，可见诗中抒写的是眷念朋友的情绪。","　　“南国”（南方）既是红豆产地，又是朋友所在之地。首句以“红豆生南国”起兴，暗逗后文的相思之情。语极单纯，而又富于形象。次句“春来发几枝”轻声一问，承得自然，寄语设问的口吻显得分外亲切。然而单问红豆春来发几枝，是意味深长的，这是选择富于情味的事物来寄托情思。“来日绮窗前，寒梅著花未？”（王维《杂诗》）对于梅树的记忆，反映出了客子深厚的乡情。同样，这里的红豆是赤诚友爱的一种象征。这样写来，便觉语近情遥，令人神远。","　　第三句紧接着寄意对方“多采撷”红豆，仍是言在此而意在彼。以采撷植物来寄托怀思的情绪，是古典诗歌中常见手法，如汉代古诗：“涉江采芙蓉，兰泽多芳草，采之欲遗谁？所思在远道”即著例。“愿君多采撷”似乎是说：“看见红豆，想起我的一切吧。”暗示远方的友人珍重友谊，语言恳挚动人。这里只用相思嘱人，而自己的相思则见于言外。用这种方式透露情怀，婉曲动人，语意高妙。宋人编《万首唐人绝句》，此句“多”字作“休”。用“休”字反衬离情之苦，因相思转怕相思，当然也是某种境况下的人情状态。用“多”字则表现了一种热情饱满、一往情深的健美情调。此诗情高意真而不伤纤巧，与“多”字关系甚大，故“多”字比“休”字更好。末句点题，“相思”与首句“红豆”呼应，既是切“相思子”之名，又关合相思之情，有双关的妙用。“此物最相思”就像说：只有这红豆才最惹人喜爱，最叫人忘不了呢。这是补充解释何以“愿君多采撷”的理由。而读者从话中可以体味到更多的东西。诗人真正不能忘怀的，不言自明。一个“最”的高级副词，意味极深长，更增加了双关语中的含蕴。","　　全诗洋溢着少年的热情，青春的气息，满腹情思始终未曾直接表白，句句话儿不离红豆，而又“超以象外，得其圜中”，把相思之情表达得入木三分。它“一气呵成，亦须一气读下”，极为明快，却又委婉含蓄。在生活中，最情深的话往往朴素无华，自然入妙。王维很善于提炼这种素朴而典型的语言来表达深厚的思想感情。所以此诗语浅情深，当时就成为流行名歌是毫不奇怪的。
                    </p>
                </div>
                <!-- 作者介绍 -->
                <div class="hide author">
                    <p>王维（701年－761年，一说699年—761年），字摩诘，汉族，河东蒲州（今山西运城）人，祖籍山西祁县，唐朝诗人，有“诗佛”之称。苏轼评价其：“味摩诘之诗，诗中有画；观摩诘之画，画中有诗。”开元九年（721年）中进士，任太乐丞。王维是盛唐诗人的代表，今存诗400余首，重要诗作有《相思》《山居秋暝》等。王维精通佛学，受禅宗影响很大。佛教有一部《维摩诘经》，是王维名和字的由来。王维诗书画都很有名，非常多才多艺，音乐也很精通。与孟浩然合称“王孟”。</p>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h3><a class="card-title text-dark" href="${pageContext.request.contextPath}/">登鹳雀楼</a></h3>
            <p>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">[唐代]</a>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">王之涣</a>
            </p>
            <p class="card-text">白日依山尽，黄河入海流。</p>
            <p class="card-text">欲穷千里目，更上一层楼。</p>
        </div>
        <div class="card-footer">
            <button class="btn card-link explanation-btn">注释</button>
            <button class="btn card-link explanation-btn">翻译</button>
            <button class="btn card-link explanation-btn">赏析</button>
            <button class="btn card-link explanation-btn">作者</button>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h3><a class="card-title text-dark" href="${pageContext.request.contextPath}/">竹里馆</a></h3>
            <p>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">[唐代]</a>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">王维</a>
            </p>
            <p class="card-text">独坐幽篁里，弹琴复长啸。</p>
            <p class="card-text">深林人不知，明月来相照。</p>
        </div>
        <div class="card-footer">
            <button class="btn card-link explanation-btn">注释</button>
            <button class="btn card-link explanation-btn">翻译</button>
            <button class="btn card-link explanation-btn">赏析</button>
            <button class="btn card-link explanation-btn">作者</button>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <h3><a class="card-title text-dark" href="${pageContext.request.contextPath}/">送别 / 山中送别</a></h3>
            <p>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">[唐代]</a>
                <a class="card-subtitle mb-2 text-muted" href="${pageContext.request.contextPath}/">王维</a>
            </p>
            <p class="card-text">山中相送罢，日暮掩柴扉。</p>
            <p class="card-text">春草明年绿，王孙归不归？(明年 一作：年年)</p>
        </div>
        <div class="card-footer">
            <button class="btn card-link explanation-btn">注释</button>
            <button class="btn card-link explanation-btn">翻译</button>
            <button class="btn card-link explanation-btn">赏析</button>
            <button class="btn card-link explanation-btn">作者</button>
        </div>
    </div>
    <nav aria-label="Page navigation example ">
        <ul class="pagination justify-content-end">
            <li class="page-item"><a class="page-link text-dark" href="${pageContext.request.contextPath}/">上一页</a></li>
            <li class="page-item"><a class="page-link text-dark">1/12</a></li>
            <li class="page-item"><a class="page-link text-dark" href="${pageContext.request.contextPath}/">下一页</a></li>
        </ul>
    </nav>
</div>
<!-- 展示诗词结束 -->

<%@include file="footer.jsp"%>
</body>
</html>
