<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>【麦田在线app下载_麦田在线app手机版下载】-北京麦田房产</title>
    <meta content="width=1200, initial-scale=1, maximum-scale=1, user-scalable=1" name="viewport">
    <meta name="description" content="麦田在线app是麦田房产旗下专注买房卖房的二手房产交易平台，北京麦田app下载、福州麦田app下载、厦门麦田app下载同时开放，汇集三地海量真实房源，手机找房就用麦田在线app。" />
    <meta name="keywords" content="北京麦田app下载,福州麦田app下载,厦门麦田app下载,麦田在线手机版" />
    <link href="<%=request.getContextPath()%>/mt/favicon.ico" type="image/x-icon" rel="icon">
    <link href="<%=request.getContextPath()%>/mt/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <link href="<%=request.getContextPath()%>/mt/maitian.css" rel="stylesheet" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/jquery.Scrollbar.css">
    <link href="<%=request.getContextPath()%>/mt/download.css" rel="stylesheet" />
    <script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101321688" data-redirecturi="http://bj.maitian.cn/Service/AuthLoginQQ.ashx" charset="utf-8"></script>
    <script src="../../Scripts/pagekage/core/jquery/jquery-1.8.3.js"></script>
    <script src="<%=request.getContextPath()%>/mt/Common.js"></script>
    <script type="text/javascript">
        /*获得导航条福厦的url*/
        $(function () {
            $.ajax({
                type: "GET",
                url: '/Service/PublicMethodFun.ashx?type=HeadUrl',
                async: false,
                dataType: "json",
                success: function (result) {
                    if (result) {
                        // console.log(url);
                        $('#fzurlA').attr('href', result.fzurl);
                        $('#xmurlA').attr('href', result.xmurl);
                        // console.log($('#fzurl').attr('href'));

                    }
                }
            });

        });


    </script>

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-66928601-1', 'auto');
        ga('send', 'pageview');

    </script>



</head>
<body>
<div class="wraper">
    <div class="rightn_zc">
        <a href='/qhbzt' target="_blank" class="big-link">
            <img src="<%=request.getContextPath()%>/mt/imp/right_zc.png" alt="" style="display: none;"></a>
    </div>

    <div class='header'>
        <div class="nav_bg"></div>
        <div class="nav_wrap clearfix">
            <!-- LOGO -->
            <a href="/Index.html" class="logo float_l" onclick="ga('send', 'event', 'quanzhanyetou', 'logo', 'logo');"><img src="/skin/img/logo1.png" alt="麦田在线LOGO"></a>
            <!-- 北京 -->
            <div class="city float_l">
                <div class="filter_select clearfix selectBox">
                    <a href="javascript:;" class="show">北京</a>
                    <div class="filter_sel selectCont">
                        <ul>
                            <li class="active"><a href="/Index.html">北京</a></li>
                            <li><a id="fzurlA" href="">福州</a></li>
                            <li><a id="xmurlA" href="">厦门</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- 导航菜单 -->
            <ul class="nav_list float_l">
                <li><a onclick="ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'shouye');" href='/Index.html' >首页</a></li>
                <li>
                    <a onclick="ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'ershoufang');" href='
                            /esfall'>二手房
                    </a>
                </li>
                <!--<li>
                    <a onclick="ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'bieshu');" href='
                        /hzall/T12'>豪宅
                    </a>
                </li>-->
                <li>
                    <a onclick="ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'zufang');" href='
                            /zfall'>租房
                    </a>
                </li>
                <li>
                    <a onclick="ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'xiaoqu');" href='
                            /xqall'>小区
                    </a>
                </li>
                <li>
                    <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'jingjiren');" href='
                            /bkesf'>顾问
                    </a>
                </li>
                <!--<li>
                    <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'VIP');" href='
                        /viphouse.html'>
                        麦田房源
                    </a>
                </li>-->
                <li>
                    <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'woyaomaifang'); " href='
                            /membersell'>
                        委托
                    </a>
                </li>
                <li>
                    <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'APP');" href='javascript:;' class="active">
                        麦田APP
                    </a>
                </li>
            </ul>
            <!-- 右侧登陆注册信息 -->
            <div class="about float_r">
                <p class="clearfix" id="islogined">
                    <a class="know float_r" onclick="ga('send', 'event', 'quanzhanyetou', 'liaojiemaitian', 'liaojiemaitian');" href="http://about.maitian.cn/">了解麦田</a>
                    <a onclick="ga('send', 'event', 'quanzhanyetou', 'denlguzhuce', 'zhuce');" href='/userregist' class="reg float_r">注册</a>
                    <a onclick="ga('send', 'event', 'quanzhanyetou', 'denlguzhuce', 'denglu');" href='/userlogin' class="login float_r">登录/</a>
                </p>
                <h3 class="float_r">购房热线：400-706-1188</h3>
            </div>
        </div>
    </div>
    <!-- banner区域 -->
    <div class='banner banner_download' style="background: url(<%=request.getContextPath()%>/mt/imp/banner_download.jpg) no-repeat top center;">
        <div class="bancon clearfix">
            <div class="fl download_box">
                <p class="app_tit">移动麦田</p>
                <div class="clearfix">
                    <div class="fl download_btns_box">
                        <a href="javascript:ga('send', 'event', 'app', 'ios', 'xiazai');window.location.href='http://itunes.apple.com/cn/app/mai-tian-zai-xian-er-shou/id1071367557?mt=8'" id="IOS_download"><em class="IPhone"></em><span>iPhone客户端</span></a>
                        <a href="javascript:ga('send', 'event', 'app', 'anzhuo', 'xiazai');window.location.href='http://appdownload.maitian.cn/maitian.apk'" id="Android_download"><em class="Android"></em><span>Android客户端</span></a>
                    </div>
                    <div class="fl download_code">
                        <img src="<%=request.getContextPath()%>/mt/imp/app.jpg" alt="客户端下载二维码" />
                    </div>
                </div>
            </div>
            <div class="fl phone_pic"></div>
        </div>
    </div>



    <footer>
        <div class="footer">
            <div class="fotcon">
                <div class="function_box">
                    <ul class="clearfix app_function">
                        <li>
                            <p class="fun_icon"><img src="<%=request.getContextPath()%>/mt/imp/fun_icon1.png" alt="智能选房"></p>
                            <h6>智能选房</h6>
                            <p>精确匹配，智能推荐</p>
                        </li>
                        <li>
                            <p class="fun_icon"><img src="<%=request.getContextPath()%>/mt/imp/fun_icon2.png" alt="地图找房"></p>
                            <h6>地图找房</h6>
                            <p>精准定位，“圈”出房源</p>
                        </li>
                        <li>
                            <p class="fun_icon"><img src="<%=request.getContextPath()%>/mt/imp/fun_icon3.png" alt="互动交流"></p>
                            <h6>互动交流</h6>
                            <p>即时沟通，方便快捷</p>
                        </li>
                        <li>
                            <p class="fun_icon"><img src="<%=request.getContextPath()%>/mt/imp/fun_icon4.png" alt="专业顾问"></p>
                            <h6>专业顾问</h6>
                            <p>置业专家，用心服务</p>
                        </li>
                    </ul>
                    <p class="clearfix copyright">北京麦田房产经纪有限公司 京ICP备 13011372号-1&nbsp;&nbsp;Copyright©2014 北京麦田房产经纪有限公司保留所有权利</p>
                </div>

            </div>
        </div>
    </footer>

</div>
</body>
</html>
<!--<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101321688" data-redirecturi="http://www.maitian.cn/Service/AuthLoginQQ.ashx" charset="utf-8"></script>-->
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=226422212" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="http://tjs.sjs.sinajs.cn/t35/apps/opent/js/frames/client.js" language="JavaScript"></script>

<script type='text/javascript' src="<%=request.getContextPath()%>/mt/init.js"></script>
<!--<script src="../../Scripts/pages/base/pagebase.js"></script>-->
<script src="<%=request.getContextPath()%>/mt/dataHandle.js"></script>
<script src="<%=request.getContextPath()%>/mt/systemHead.js"></script>
<script src="<%=request.getContextPath()%>/mt/pagebase.js"></script>

