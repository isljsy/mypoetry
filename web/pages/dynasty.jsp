<%--
  Created by IntelliJ IDEA.
  User: ljsy
  Date: 2021/11/12
  Time: 下午 9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>古诗词网</title>
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
                        <a class="nav-link active" href="${pageContext.request.contextPath}/index">首页 <span
                                class="sr-only">(current)</span></a>
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

<!-- 分类栏 -->
<div class="container vw-50">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a class="" data-toggle="collapse" href="#dynasty" role="button"
                                           aria-expanded="false" aria-controls="collapseExample">所有朝代</a></li>
        </ol>
    </nav>

    <!-- 类型 -->
    <div class="border collapse show" id="dynasty">
        <div class="d-flex list-group flex-row flex-wrap">
            <a href="#" class=" btn line-btn btn-active">所有</a>
            <a href="#" class="btn line-btn">先秦</a>
        </div>
    </div>
</div>
<!-- 分类栏结束 -->

<!-- 展示朝代和诗词-->
<div class="container vw-50">
    <!-- 显示朝代 -->
    <div class="bd-callout">
        <h5>唐代</h5>
        <p>唐朝（618年—907年），是继隋朝之后的大一统中原王朝，共历二十一帝，享国二百八十九年。
            隋末天下群雄并起，617年唐国公李渊于晋阳起兵，次年称帝建立唐朝，定都长安。唐太宗继位后开创贞观之治，为盛唐奠定基础。唐高宗承贞观遗风开创“永徽之治”，并于657年建东都洛阳 。690年，武则天改国号为周，
            705年神龙革命后，恢复唐国号。 唐玄宗即位后缔造全盛的开元盛世， 天宝末全国人口达八千万左右。
            安史之乱后藩镇割据、宦官专权导致国力渐衰；中后期经唐宪宗元和中兴、唐武宗会昌中兴、唐宣宗大中之治国势复振。878年爆发黄巢起义破坏了唐朝统治根基，907年朱温篡唐，唐朝覆亡。
        </p>
        <p>唐朝时万国来朝， 疆域空前辽阔，极盛时东起日本海、南据安南、西抵咸海、北逾贝加尔湖，是中国自秦以来第一个未修拒胡长城的大一统王朝。 唐朝攻灭东突厥、薛延陀后，唐太宗被四夷各族尊为天可汗
            。又借羁縻制度征调突厥、回鹘、铁勒、契丹、靺鞨、室韦等民族攻伐敌国，并让日本、南诏、新罗、渤海国等藩属国学习自身的文化与制度。 唐朝接纳各国交流学习，经济、社会、文化、艺术呈现出多元化、开放性等特点
            ，诗、书、画、乐等方面涌现出大量名家，如诗仙李白、诗圣杜甫、诗魔白居易，书法家颜真卿，画圣吴道子，音乐家李龟年等。</p>
        </p>
    </div>
    <!-- 开始展示诗词 -->
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
    <%--分页--%>
    <nav aria-label="Page navigation example ">
        <ul class="pagination justify-content-end">
            <li class="page-item"><a class="page-link text-dark" href="#">上一页</a></li>
            <li class="page-item"><a class="page-link text-dark">1/12</a></li>
            <li class="page-item"><a class="page-link text-dark" href="#">下一页</a></li>
        </ul>
    </nav>
</div>
<!-- 展示朝代和诗词结束 -->

<%@include file="footer.jsp" %>
</body>
</html>