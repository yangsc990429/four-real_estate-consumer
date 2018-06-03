<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-29
  Time: 上午 11:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>【北京房产网_北京二手房网_北京租房网】-北京麦田房产</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta content="width=1200, initial-scale=1, maximum-scale=1, user-scalable=1" name="viewport">
    <meta name="description" content="北京麦田房产网为您提供北京二手房买卖，北京二手房房屋交易，北京房屋出租租赁,北京房价查询等业务，真实房源、实时更新，麦田七星保障，打造北京麦田在线成为受用户信赖的房地产交易平台。" />
    <meta name="keywords" content="北京房地产,北京房价,北京二手房网,北京租房网,北京房产信息网" />
    <link href="<%=request.getContextPath()%>/mt/favicon.ico" type="image/x-icon" rel=icon>
    <link href="<%=request.getContextPath()%>/mt/favicon.ico" type="image/x-icon" rel="shortcut icon">
    <!-- 这个样式不能去掉 -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/base.css">
    <!-- webIM css -->
    <link href="<%=request.getContextPath()%>/mt/imcommon.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/mt/mtim.css" rel="stylesheet" />
    <!-- webIM css -->


    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/mt-reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/header&footer.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/mt-home.css">

    <script type='text/javascript' src='<%=request.getContextPath()%>/mt/init.js'></script>


    <script type="text/javascript" src="<%=request.getContextPath()%>/mt/1899.js"></script>
    <script src="http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js" charset="GB2312"></script>

    <script>
        //window.onload = function () {
        function IETester(userAgent) {
            var UA = userAgent || navigator.userAgent;
            if (/msie/i.test(UA)) {
                return UA.match(/msie (\d+\.\d+)/i)[1];
            } else if (~UA.toLowerCase().indexOf('trident') && ~UA.indexOf('rv')) {
                return UA.match(/rv:(\d+\.\d+)/)[1];
            }
            return false;
        }
        if (IETester() && IETester() < 9) {//如果是ie并且ie版本低于9.0则跳转至当前页面
            window.location = '../../browser/browser.html';
        }
        //}
    </script>

</head>
<body>
<div style="display:none;">
    <script type="text/javascript">
        //  var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1255180190'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1255180190%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-66928601-1', 'auto');
        ga('send', 'pageview');
    </script>
</div>
<script type="text/javascript" src="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101321688" data-redirecturi="http://bj.maitian.cn/Service/AuthLoginQQ.ashx" charset="utf-8"></script>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=226422212" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="http://tjs.sjs.sinajs.cn/t35/apps/opent/js/frames/client.js" language="JavaScript"></script>
<style>
    .FancyF input[type=text], .FancyF input[type=password] {
        width: 100%;
    }
    .FancyF input[type=text] {
        padding-left:6%;
    }
    .FancyF input {
        margin-top: 13px;
    }

    .dezxails ol {
        height: auto;
        padding-bottom: 20px;
    }
</style>

<div class="revealbga" style="display:none">
    <div class="dezxails clearfix">
        <p><span tab="0" class="cur_tab">手机短信登录</span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<span tab="1">已有账号登录</span><kbd><a href="javascript:MTLoginHide();"><img src="<%=request.getContextPath()%>/mt/close.jpg" alt=""></a></kbd></p>
        <form id="thisForm" method="post" action="">
            <ul class="FancyF FancyForm3" style="display: block" id="ulMobileVerify">
                <li>
                    <label>请输入手机号码</label>
                    <span class="fff"></span>
                    <input style="width:100%" type="text" id="txtLoginMobile" maxlength="11" onfocus="ga('send', 'event', 'denglu', 'maitianzaixiandenglu', 'shurushoujihao');">
                </li>
                <li id="li1" style="display:block">
                    <label>请输入图形码</label>
                    <span class="fff fffw1"></span>
                    <input style="width:69%" type="text" class="inputCode" id="txtVerify" autocomplete="off" maxlength="4" onfocus="ga('send', 'event', 'denglu', 'maitianzaixiandenglu', 'shurutuxingyanzheng');">
                    <img src="<%=request.getContextPath()%>/mt/IdentifyingCode.ashx" onclick="javascript: LoadCode();" class="img_code" id="imgCode" alt="验证码" />
                    <a style="right:6px" class="change_img_code" href="javascript:;" onclick="javascript:LoadCode();">换一组</a>
                </li>
                <li id="li2" style="display:none">
                    <label>请输入验证码</label>
                    <span class="fff fffw1"></span><input type="text" id="txtSMS" autocomplete="off" maxlength="4">
                    <button style="z-index:5" class="send_msg" type="button" id="btnSendCode" value="获取验证码">获取验证码</button>
                </li>
            </ul>
            <ul class="FancyF" id="ulMobilePass">
                <li class="">
                    手机号<br /><i class="mai-ico"></i><input id="txtLoginName" type='text' maxlength="11" class="stext" value="" />
                    <label>请输入手机号码</label>
                    <span class="fff"></span>
                </li>
                <li class="">
                    密码<br /><i class="mai-ico password"></i><input id="txtPassword" type="password" maxlength="16">
                    <label>请输入密码</label>
                    <span class="fff"></span>
                </li>
                <li>
                    <dl class="clearfix" style="padding:0;">
                        <dd class="fl" style="width:120px;"><input style="width:10px;" id="isAutoLogin" type="checkbox">下次自动登录</dd>
                        <dd class="fr"><a style="line-height:30px;" href='/userforget'>找回密码</a></dd>
                    </dl>
                </li>
            </ul>
        </form>
        <!--<dl class="clearfix">
            <dd class="fl"><input id="isAutoLogin" type="checkbox">下次自动登录</dd>
            <dd class="fr"><a href='/userforget'>找回密码</a></dd>
        </dl>-->
        <samp><a id="btnLoginBan" href="javascript:">立即登录</a></samp>
        <div class="goRegist"><label>还没有麦田账号?<a href='/userregist'>马上注册</a></label></div>

        <ol class="clearFix">
            <li><i></i><a id="btnQQLogin" href="javascript:">QQ登录</a></li>
            <li><i class="sina"></i><a id="btnSinaLogin" href="javascript:">新浪微博登录</a></li>
        </ol>
    </div>
</div>
<script>
    $(function () {
        $('.dezxails p span').click(function () {
            $('.dezxails p span').removeClass('cur_tab');
            $(this).addClass('cur_tab');
            $('.dezxails ul').css('display', 'none');
            $('.dezxails ul').eq($(this).attr('tab')).css('display', 'block');
        });
    });
</script>

<!-- 头部导航 -->
<header>
    <div class="header">
        <div class="header-line-wrapper clearFix">
            <div class="header-line">
                <div class="fl clearFix">
                    <!-- LOGO -->
                    <a href="<%=request.getContextPath()%>/mtzx.jsp" title="麦田在线" class="logo" target="_self" onclick=" ga('send', 'event', 'quanzhanyetou', 'logo', 'logo'); "></a>
                    <div class="city">
                        <span class="exchange"><i></i>北京</span>
                        <ul class="city-down">
                            <li class="active"><a href="http://bj.maitian.cn" onclick="ga('send', 'event', 'yetou', 'qiehuan', 'beijing');">北京</a></li>
                            <li><a href="http://fz.maitian.cn" onclick="ga('send', 'event', 'yetou', 'qiehuan', 'fuzhou');">福州</a></li>
                            <li><a href="http://xm.maitian.cn" onclick="ga('send', 'event', 'yetou', 'qiehuan', 'xiamen');">厦门</a></li>
                        </ul>
                    </div>
                </div>
                <div class="fr clearFix">
                    <nav class="nav">
                        <div class="nav-top" id="isIndexlogined">
                            <a class="login" onclick=" ga('send', 'event', 'quanzhanyetou', 'denlguzhuce', 'zhuce'); " href='<%=request.getContextPath()%>/userlogin.jsp'>登录</a>
                            <span class="line">|</span>
                            <a class="register" onclick=" ga('send', 'event', 'quanzhanyetou', 'denlguzhuce', 'denglu'); " href='/userregist'>注册</a>
                        </div>
                        <ul class="clearFix">
                            <li><a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'shouye'); " href='/Index.html'>首页</a></li>
                            <li><a target="_blank" onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'ershoufang'); " href='/esfall'>二手房</a></li>
                            <li><a target="_blank" onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'zufang'); " href='/zfall'>租房</a></li>
                            <li><a target="_blank" onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'xiaoqu'); " href='/xqall'>小区</a></li>
                            <li><a target="_blank" onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'jingjiren'); " href='/bkesf'>房产顾问</a></li>
                            <li><a target="_blank" onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'weituo'); " href='/membersell'>委托</a></li>
                            <li><a target="_blank" onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'APP'); " href='<%=request.getContextPath()%>/mt/MTApp.html'>麦田APP</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="wrapper">
            <div class="header-wrapper">
                <div class="word-icon"></div>
                <div class="search-box-wrap">
                    <div class="menu clearFix" id="searchMenu">
                        <ul class="clearFix">
                            <li><span onclick="ga('send', 'event', 'zhanneisousuo', 'sousuo', 'zhaoershoufang'); " id="zesf">找二手房</span></li>
                            <li><span onclick="ga('send', 'event', 'zhanneisousuo', 'sousuo', 'zhaozufang'); " id="zzf">找租房</span></li>
                            <li><span onclick="ga('send', 'event', 'zhanneisousuo', 'sousuo', 'zhaoxiaoqu'); " id="zxq">找小区</span></li>
                            <li><span onclick="ga('send', 'event', 'zhanneisousuo', 'sousuo', 'zhaoguwen'); " id="zgw">找顾问</span></li>
                        </ul>
                        <div class="house-count">
                            <ul>
                                <li>北京在售 <i>9555</i> 套房源</li>
                                <li>北京在租 <i>744</i> 套房源</li>
                            </ul>
                        </div>
                        <i class="triangle-icon"></i>
                    </div>
                    <div class="search-box clearFix">
                        <div class="search fl">
                            <input onclick="ga('send', 'event', 'zhanneisousuo', 'sousuo', this.value); " id="ico-search" maxlength="100" class="search-word" type="text" placeholder="请输入小区名称、区域进行房源搜索" autocomplete="off" />
                            <input onclick="kaishizhaofang()" class="search-btn" id="btSearch" type="button" value="开始找房">
                        </div>
                        <button type="button" class="search-by-map fr" onclick="javascrtpt: window.location.href = '../mt/imp/esfmap.html'; ga('send', 'event', 'zhanneisousuo', 'sousuo', 'dituzhaofang');"><i></i>地图找房</button>
                        <ol id="SearchTips" class="search_list" style="display: none;width:609px;background:#fff;opacity:0.95"></ol>
                    </div>
                    <dl class="hot-search clearFix">
                        <dt>热门搜索：</dt>
                        <dd><a target="_blank" onclick=" ga('send', 'event', 'zhanneisousuo', 'remensousuo', 'manwu'); " href='/esfall/T2'>满五</a></dd>
                        <dd><a target="_blank" onclick=" ga('send', 'event', 'zhanneisousuo', 'remensousuo', 'ditiefang'); " href='/esfall/T3'>地铁房</a></dd>
                        <dd><a target="_blank" onclick=" ga('send', 'event', 'zhanneisousuo', 'remensousuo', 'suishikekan'); " href='/esfall/T4'>随时可看</a></dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="explain-box">
    <ul class="wrapper clearFix">
        <li>
            <a target="_blank" href="/esfall/N1" onclick="ga('send', 'event', 'zhanneisousuo', 'remensousuo', 'meitianshitao');">
                <p class="explain-img"></p>
                <div class="fl">
                    <h3>每天10套新房源</h3>
                    <p>为您最少新上10套房源</p>
                </div>
            </a>
        </li>
        <li>
            <a target="_blank" href="/zjjg.html" onclick="ga('send', 'event', 'zhanneisousuo', 'remensousuo', 'zijinbaozhangyewu');">
                <p class="explain-img"></p>
                <div class="fl">
                    <h3>资金保障业务</h3>
                    <p>为您的购房款上把“安全锁”</p>
                </div>
            </a>
        </li>
        <li class="last">
            <a target="_blank" href="/esfall" onclick="ga('send', 'event', 'zhanneisousuo', 'remensousuo', 'maitianfangyuan');">
                <p class="explain-img"></p>
                <div class="fl">
                    <h3>麦田房源</h3>
                    <p>每2天签订一份麦田代理</p>
                </div>
            </a>
        </li>
    </ul>
</div>

<div class="home-main">
    <!-- 精选房源 -->


    <div class="selection wrapper">

        <h2 class="title">
            <span>精选房源</span>
            <i class="line"></i>
        </h2>
        <ul class="clearFix">
            <li>
                <a target="_blank" class="mb44 moving-imgs-wrap" href="http://bj.maitian.cn/esfway/B6/T3" onclick="ga('send', 'event', 'jingxuanfangyuan', 'tuijian', 'zuoshang');">
                    <img src="http://img.maitian.cn/image/slider/585/949/585949df86654093a39e8c27c75dfbd5.jpg">
                    <div class="cover">
                        <h3>三环里·京味浓</h3>
                        <p>便捷出行，自由体验京华生活</p>
                    </div>
                </a>
                <a target="_blank" href="http://bj.maitian.cn/esfall/SB600SE900/H2" class="moving-imgs-wrap" onclick="ga('send', 'event', 'jingxuanfangyuan', 'tuijian', 'zuoxia');">
                    <img src="http://img.maitian.cn/image/slider/3eb/562/3eb5625086df4ef4896902822f59191e.jpg">
                    <div class="cover">
                        <h3>精明之选 ·成就美满家庭</h3>
                        <p>2居经典户型，600万起售</p>
                    </div>
                </a>
            </li>
            <li class="center">
                <a target="_blank" href="http://bj.maitian.cn/esfall/R2C6" class="moving-imgs-wrap" onclick="ga('send', 'event', 'jingxuanfangyuan', 'tuijian', 'zhong');">
                    <img src="http://img.maitian.cn/image/slider/a9b/c40/a9bc4026e7f34d36ace6ec46475eb813.jpg">
                    <div class="cover">
                        <h3>来望京·品前卫生活</h3>
                        <p>成熟商圈 够美味·够时尚</p>
                    </div>
                </a>
            </li>
            <li>
                <a target="_blank" class="mb44 moving-imgs-wrap" href="http://bj.maitian.cn/esfall/R2C59" onclick="ga('send', 'event', 'jingxuanfangyuan', 'tuijian', 'youshang');">
                    <img src="http://img.maitian.cn/image/slider/610/1b8/6101b85711754bf2a2e4539e072a0924.jpg">
                    <div class="cover">
                        <h3>森呼吸·畅享绿色生活</h3>
                        <p>环奥林匹克森林公园，运动健康新选择</p>
                    </div>
                </a>
                <a target="_blank" href="http://bj.maitian.cn/esfall/H1T2" class="moving-imgs-wrap" onclick="ga('send', 'event', 'jingxuanfangyuan', 'tuijian', 'youxia');">
                    <img src="http://img.maitian.cn/image/slider/eb1/119/eb11196642ce4fd0904ee9c4f8dd6693.jpg">
                    <div class="cover">
                        <h3>小家置业·满五推荐</h3>
                        <p>一居户型，出行便捷</p>
                    </div>
                </a>
            </li>
        </ul>
    </div>


    <!-- 购房科普   -->


    <div class="science ">
        <div class="wrapper">
            <h2 class="title">
                <span>购房科普</span>
                <i class="line"></i>
            </h2>
            <ul class="clearFix">



                <li>


                    <a target="_blank" onclick="ga('send', 'event', 'goufangkepu', 'tuijian', 'zuo');" class="moving-imgs-wrap" href="https://mp.weixin.qq.com/s/S0kNx5qtCOLbPvA8sTSakQ">
                        <img src="http://img.maitian.cn/image/slider/f24/0e6/f240e603421a4a73b4255e4f8acfce84.jpg" />
                        <div class="science-word">
                            <h3>什么小区值得选：新景家园东区PK当代万国城</h3>
                            <p>
                                甄选热门在售小区，对比区位/户型/生活环境等因素，为您在看房选房过程中提供有价值的信息。
                            </p>
                        </div>
                    </a>
                </li>




                <li>


                    <a target="_blank" onclick="ga('send', 'event', 'goufangkepu', 'tuijian', 'zhong');" class="moving-imgs-wrap" href="http://mp.weixin.qq.com/s/Xmvh6Nju07mfjuyS6I124g">
                        <img src="http://img.maitian.cn/image/slider/8d0/d14/8d0d14be9ccf4403a581a7c96dd18a60.jpg" />
                        <div class="science-word">
                            <h3>9月1日起执行！一图看懂北京住房公积金支取新政</h3>
                            <p>
                                北京住房公积金管理中心发布了《关于进一步改进服务加强住房公积金归集管理有关事项的通知》
                            </p>
                        </div>
                    </a>
                </li>




                <li class="last">


                    <a target="_blank" onclick="ga('send', 'event', 'goufangkepu', 'tuijian', 'you');" class="moving-imgs-wrap" href="http://mp.weixin.qq.com/s/b8_B2wQIwGakyWq0Xan8MA">
                        <img src="http://img.maitian.cn/image/slider/512/c4c/512c4cc5b68b4bb3be348d9be07131be.jpg" />
                        <div class="science-word">
                            <h3>集体建设用地变租赁住房用地，你的租房生活会因此改变吗？</h3>
                            <p>
                                9月26日，国土资源部在湖北武汉召开租赁住房试点工作启动会
                            </p>
                        </div>
                    </a>
                </li>


            </ul>
        </div>
    </div>


    <!-- 房源推荐   -->

    <div class="recommend">
        <div class="wrapper">
            <h2 class="title">
                <span>房源推荐</span>
                <i class="line"></i>
                <a class="more" href="/esfall">>>更多北京二手房</a>
            </h2>
            <ul class="clearFix">




                <li onclick="ga('send', 'event', 'fangyuantuijian', 'tuijian', 'shangyi');">
                    <a target="_blank" href='
                                    /esfxq/IFY00613386'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/434/AF6/434AF65EC7FD426FABA7F0F345FA9769_208x156.JPG">
                        <div class="name-price">
                            <!--<span class="name">朝阳&nbsp;亚运村&nbsp;阳光广场</span>-->
                            <span class="name">阳光广场</span>
                            <span class="price">1160万元</span>
                        </div>
                        <div class="bottom">
                            <p>阳光广场，四居室 高楼层 采光好 观景好</p>
                            <p class="clearFix">
                                            <span class="fl">

                                                    <span>4</span>室


                                                    <span>2</span>厅

                                                <!--
                                    <span>1</span>厨
                                -->

                                                    <span>3</span>卫

                                                273.92㎡
                                            </span>
                                <span class="fr">4.23万/㎡</span>
                            </p>
                        </div>
                    </a>
                </li>




                <li onclick="ga('send', 'event', 'fangyuantuijian', 'tuijian', 'shanger');">
                    <a target="_blank" href='
                                    /esfxq/IFY00627119'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/01D/E4A/01DE4A3C6EDD47C08546BB358699C260_208x156.JPG">
                        <div class="name-price">
                            <!--<span class="name">海淀&nbsp;北部新区&nbsp;保利西山林语</span>-->
                            <span class="name">保利西山林语</span>
                            <span class="price">450万元</span>
                        </div>
                        <div class="bottom">
                            <p>保利西山林语   复式带阁楼  两室两卫 带天窗</p>
                            <p class="clearFix">
                                            <span class="fl">

                                                    <span>1</span>室


                                                    <span>1</span>厅

                                                <!--
                                    <span>1</span>厨
                                -->

                                                    <span>1</span>卫

                                                55.91㎡
                                            </span>
                                <span class="fr">8.05万/㎡</span>
                            </p>
                        </div>
                    </a>
                </li>




                <li onclick="ga('send', 'event', 'fangyuantuijian', 'tuijian', 'shangsan');">
                    <a target="_blank" href='
                                    /esfxq/IFY00587787'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/335/8D8/3358D8C1ADD746ADAF40183C6470F4DF_208x156.JPG">
                        <div class="name-price">
                            <!--<span class="name">朝阳&nbsp;朝青&nbsp;华纺易城</span>-->
                            <span class="name">华纺易城</span>
                            <span class="price">1100万元</span>
                        </div>
                        <div class="bottom">
                            <p>华纺易城 中间位置三居室 南北通透 正观园区绿化</p>
                            <p class="clearFix">
                                            <span class="fl">

                                                    <span>3</span>室


                                                    <span>2</span>厅

                                                <!--
                                    <span>1</span>厨
                                -->

                                                    <span>2</span>卫

                                                141.04㎡
                                            </span>
                                <span class="fr">7.80万/㎡</span>
                            </p>
                        </div>
                    </a>
                </li>




                <li onclick="ga('send', 'event', 'fangyuantuijian', 'tuijian', 'shangsi');">
                    <a target="_blank" href='
                                    /esfxq/IFY00609402'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/914/1DD/9141DD883D1249E18FF0605090A86E87_208x156.JPG">
                        <div class="name-price">
                            <!--<span class="name">海淀&nbsp;紫竹桥&nbsp;曙光花园望山园</span>-->
                            <span class="name">曙光花园望山园</span>
                            <span class="price">1210万元</span>
                        </div>
                        <div class="bottom">
                            <p>车道沟 京西明珠 人车分流 南北通风 带明卫 附带独立门厅</p>
                            <p class="clearFix">
                                            <span class="fl">

                                                    <span>3</span>室


                                                    <span>2</span>厅

                                                <!--
                                    <span>1</span>厨
                                -->

                                                    <span>2</span>卫

                                                130㎡
                                            </span>
                                <span class="fr">9.31万/㎡</span>
                            </p>
                        </div>
                    </a>
                </li>




                <li onclick="ga('send', 'event', 'fangyuantuijian', 'tuijian', 'xiayi');">
                    <a target="_blank" href='
                                    /esfxq/IFY00551622'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/436/7CA/4367CAE2AAD245F2B6158FCC429A792E_208x156.JPG">
                        <div class="name-price">
                            <!--<span class="name">朝阳&nbsp;望京&nbsp;果岭里class</span>-->
                            <span class="name">果岭里class</span>
                            <span class="price">2299万元</span>
                        </div>
                        <div class="bottom">
                            <p>安静位置 高层 叠拼别墅4室 看房方便 ！</p>
                            <p class="clearFix">
                                            <span class="fl">

                                                    <span>4</span>室


                                                    <span>2</span>厅

                                                <!--
                                    <span>2</span>厨
                                -->

                                                    <span>3</span>卫

                                                215㎡
                                            </span>
                                <span class="fr">10.69万/㎡</span>
                            </p>
                        </div>
                    </a>
                </li>




                <li onclick="ga('send', 'event', 'fangyuantuijian', 'tuijian', 'xiaer');">
                    <a target="_blank" href='
                                    /esfxq/IFY00639770'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/10E/6CC/10E6CCA55F134B0BA418E87E44481184_208x156.JPG">
                        <div class="name-price">
                            <!--<span class="name">海淀&nbsp;世纪城&nbsp;时雨园</span>-->
                            <span class="name">时雨园</span>
                            <span class="price">1580万元</span>
                        </div>
                        <div class="bottom">
                            <p>世纪城时雨园+动静分离+落地飘窗+双卧南+高层观景+双明卫</p>
                            <p class="clearFix">
                                            <span class="fl">

                                                    <span>3</span>室


                                                    <span>2</span>厅

                                                <!--
                                    <span>1</span>厨
                                -->

                                                    <span>2</span>卫

                                                164.76㎡
                                            </span>
                                <span class="fr">9.59万/㎡</span>
                            </p>
                        </div>
                    </a>
                </li>




                <li onclick="ga('send', 'event', 'fangyuantuijian', 'tuijian', 'xiasan');">
                    <a target="_blank" href='
                                    /esfxq/IFY00604456'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/D43/FD0/D43FD0341D774677952327D280EC10B0_208x156.JPG">
                        <div class="name-price">
                            <!--<span class="name">朝阳&nbsp;三元桥&nbsp;UHN国际村</span>-->
                            <span class="name">UHN国际村</span>
                            <span class="price">1550万元</span>
                        </div>
                        <div class="bottom">
                            <p>三元桥 国际村南北东三面采光四居室 配套齐全 采光好</p>
                            <p class="clearFix">
                                            <span class="fl">

                                                    <span>4</span>室


                                                    <span>2</span>厅

                                                <!--
                                    <span>1</span>厨
                                -->

                                                    <span>2</span>卫

                                                164㎡
                                            </span>
                                <span class="fr">9.45万/㎡</span>
                            </p>
                        </div>
                    </a>
                </li>




                <li onclick="ga('send', 'event', 'fangyuantuijian', 'tuijian', 'xiasi');">
                    <a target="_blank" href='
                                    /esfxq/IFY00627100'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/625/3A0/6253A0E8A3EA4CD5ADC09BE05B6DE8DC_208x156.JPG">
                        <div class="name-price">
                            <!--<span class="name">朝阳&nbsp;朝青&nbsp;润枫水尚</span>-->
                            <span class="name">润枫水尚</span>
                            <span class="price">950万元</span>
                        </div>
                        <div class="bottom">
                            <p>朝阳大悦城 青年路 润枫水尚 南北2居室 遇好人缘</p>
                            <p class="clearFix">
                                            <span class="fl">

                                                    <span>2</span>室


                                                    <span>1</span>厅

                                                <!--
                                    <span>1</span>厨
                                -->

                                                    <span>2</span>卫

                                                122㎡
                                            </span>
                                <span class="fr">7.79万/㎡</span>
                            </p>
                        </div>
                    </a>
                </li>

            </ul>
        </div>
    </div>


    <!--下载麦田在线APP-->
    <div class="download">
        <div class="wrapper2 clearFix">
            <div class="fl">
                <h2><b>扫一扫</b>   下载麦田在线APP</h2>
                <div class="clearFix">
                    <div class="ewm"></div>
                    <ul class="fl">
                        <li>精确匹配，智能推荐</li>
                        <li>精准定位，圈出房源</li>
                        <li>即时沟通，方便快捷</li>
                        <li>置业专家，用心服务</li>
                    </ul>
                </div>
            </div>
            <img class="fr iPhone-img" src="<%=request.getContextPath()%>/mt/iPhone-img.png" />
        </div>
    </div>

</div>
<!-- webIM js -->
<!--<script type='text/javascript' src='/webim.config.js'></script>
<script type='text/javascript' src='/Scripts/dist/strophe-1.2.8.min.js'></script>
<script type='text/javascript' src='/Scripts/dist/websdk-1.4.11.js'></script>
<script type='text/javascript' src='/Scripts/dist/localStorage.js'></script>
<script type='text/javascript' src='/Scripts/dist/weixinAudio.js'></script>
-->
<!-- webIM js -->

<!-- netNIM js -->
<%--<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=d6zGANUDmor3AVuE7Iy34UCY"></script>--%>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/NIM_Web_NIM_v4.6.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/localStorage.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/WebNimCommon.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/weixinAudio.js"></script>
<script type='text/javascript'>
    //异步加载js
    ~function () {
        var s = document.createElement('script');
        s.src = '<%=request.getContextPath()%>/mt/netnim.js';
        document.body.appendChild(s);
    }();
</script>
<style type="text/css">
    /*聊天信息中展示位置样式*/
    .chatMap {
        width: 210px;
        height: 230px;
        overflow: hidden;
        margin: 0;
        font-family: "微软雅黑";
    }

    .BMap_cpyCtrl {
        display: none;
    }

    .anchorBL {
        display: none;
    }
</style>

<div class="maitianim im-fold">
    <div class="maitianim-shandow clearfix">
        <div class="maitianim-wrap">
            <div class="maitianim-head">
                <span class="im-title">在线咨询</span>
                <span class="maitianim-head-num" style="display: none;">0</span>
                <a class="maitianim-head-closebtn" title="收起"></a>
            </div>
            <div class="maitianim-body">
                <ul id="contactlistUL"></ul>
                <div class="maitianim-noagent" style="display: block;">
                    <div class="noagent-title">没有聊过的经纪人</div>
                    <div class="noagent-sub">不暴露手机号在线咨询经纪人</div>
                </div>
            </div>
        </div>
        <div class="maitianim-window im-online" id="im-window" style="display: none;">
            <div class="maitianim-wintitle">
                <i>在线</i>
                <span id="chatUserName" class="im-wt-name"></span>
                <a class="im-wt-closebtn" title="关闭"></a>
            </div>
            <div class="maitianim-wincont">
                <div class="im-wc-hint">
                    <span class="im-window-offlinename">当前不在线，您可以在线留言
                    </span>
                </div>
                <div id="chat01" class="im-wc-chat">
                    <p class="chat-tophint">聊天的时候，经纪人无法知道您的手机号！</p>
                    <p class="showLoading">
                        <img src="<%=request.getContextPath()%>/mt/load-indicator.gif" alt="loading..." />
                    </p>
                </div>
                <div class="im-wc-input">
                    <div class="im-input-container">
                        <textarea id="talkInputId" placeholder="点击输入您想要咨询的问题…"></textarea>
                        <a class="im-input-insertpic" title="插入图片"></a>
                        <input style="opacity: 0; z-index: 99; font-size: 0;" class="im-input-insertpic" type='file' id="fileInput" name="fileInput" onchange="sendFile()" accept=".gif,.jpg,.jpeg,.png,.bmp" />
                        <input type='hidden' id="sendfiletype" value="pic" />
                        <div id="send-file-warning"></div>
                    </div>
                    <div class="im-btn-container">
                        <a href="/MTApp.html" target="_blank" title="下载麦田APP">立即下载麦田APP，随时随地聊~</a>
                        <input type="button" value="发送" class="send" onclick="sendText()" />
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">
    allOpen = false;
    windowFlag = false;
    var showWebIM = function () {
        $('.maitianim').toggleClass('im-fold');
        allOpen = !allOpen;
        if (windowFlag && allOpen) {
            $('#im-window').show();
        } else {
            $('#im-window').hide();
            windowFlag = false;
        }
    };
    $('.maitianim-head').click(function () {
        showWebIM();

    });
    $('.im-wt-closebtn').click(function () {
        $('#im-window').hide();
        windowFlag = false;
    });
    $('.maitianim-body-item').click(function () {
        $('#im-window').show();
        windowFlag = true;
    })
</script>


<!-- netNIM js -->

<div class="footer" style="padding:0;height:auto;margin-top:0">
    <div class="wrapper2 clearFix">
        <div class="footer-left fl">
            <ul class="website-map clearFix">
                <li><a target='_blank' onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'fuzhoufangchanwang');" href="http://fz.maitian.cn">福州房产网</a></li> <li><a target='_blank' onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'xiamenfangchanwang');" href="http://xm.maitian.cn">厦门房产网</a></li>
                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'ershoufang');" href="/esfall">二手房</a></li>
                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'xiaoqu');" href="/xqall">小区</a></li>
                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'jingjiren');" href="/bkesf">房产顾问</a></li>
                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'jiarumaitian');" href="http://about.maitian.cn/jionUs/Social.aspx">加入麦田</a></li>
                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'guanyumaitian');" href="http://about.maitian.cn/">关于麦田</a></li>
                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'jingjirendenglu');" href="http://agent.maitian.cn/VIEW/Login/Login.html">房产顾问登录</a></li>
            </ul>

            <ul class="hot-list-title clearFix">

                <li>北京热门二手房</li>

                <li>北京热门租房</li>

                <li>北京热门小区</li>

            </ul>



            <ul class="hot-list-wrap clearFix" style="display:block">


                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'ChangPingErShouFang');" href='/esfall/R1'>昌平二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'ChaoYangErShouFang');" href='/esfall/R2'>朝阳二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'DongChengErShouFang');" href='/esfall/R3'>东城二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'DaXingErShouFang');" href='/esfall/R4'>大兴二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'FengTaiErShouFang');" href='/esfall/R5'>丰台二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'HaiDianErShouFang');" href='/esfall/R6'>海淀二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'ShiJingShanErShouFang');" href='/esfall/R10'>石景山二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'XiChengErShouFang');" href='/esfall/R7'>西城二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'WangJingErShouFang');" href='/esfall/R2C6'>望京二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'HePingLiErShouFang');" href='/esfall/R2C36'>和平里二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'XueYuanLuErShouFang');" href='/esfall/R6C69'>学院路二手房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'BeiYuanErShouFang');" href='/esfall/R2C55'>北苑二手房</a></li>

            </ul>


            <ul class="hot-list-wrap clearFix">


                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'ChaoYangZuFang');" href='/zfall/R2'>朝阳租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'DongChengZuFang');" href='/zfall/R3'>东城租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'HaiDianZuFang');" href='/zfall/R6'>海淀租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'WangJingZuFang');" href='/zfall/R2C6'>望京租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'AoLinPiKeZuFang');" href='/zfall/R2C59'>奥林匹克租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'BeiYuanZuFang');" href='/zfall/R2C55'>北苑租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'CBDZuFang');" href='/zfall/R2C61'>CBD租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'ChaoQingZuFang');" href='/zfall/R2C53'>朝青租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'JiuXianQiaoZuFang');" href='/zfall/R2C27'>酒仙桥租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'NanShaTanZuFang');" href='/zfall/R2C23'>南沙滩租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'SanYuanQiaoZuFang');" href='/zfall/R2C19'>三元桥租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'TaiYangGongZuFang');" href='/zfall/R2C9'>太阳宫租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'ShangDiZuFang');" href='/zfall/R6C87'>上地租房</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'QingHeZuFang');" href='/zfall/R6C88'>清河租房</a></li>

            </ul>


            <ul class="hot-list-wrap clearFix">


                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'XiShanHuaFu');" href='/xqall/RS西山华府'>西山华府</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'KanDouGuoJi');" href='/xqall/RS瞰都国际'>瞰都国际</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'ShangBeiXinZuo');" href='/xqall/RS上北鑫座'>上北鑫座</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'DongHuWanYiQi');" href='/xqall/RS东湖湾一期'>东湖湾一期</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'YaYunXinXinJiaYuanLangYueYuan');" href='/xqall/RS亚运新新家园朗月园'>亚运新新家园朗月园</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'YaYunXinXinJiaYuanJingFengYuan');" href='/xqall/RS亚运新新家园静风园'>亚运新新家园静风园</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'BeiWei40DuErQi');" href='/xqall/RS北纬40度二期'>北纬40度二期</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'JiaMingTongChengDQu');" href='/xqall/RS嘉铭桐城D区'>嘉铭桐城D区</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'JiaMingTongChengBQu');" href='/xqall/RS嘉铭桐城B区'>嘉铭桐城B区</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'FuLiTaoYuanCQu');" href='/xqall/RS富力桃园C区'>富力桃园C区</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'ShuGuangHuaYuanGuanLanGuoJi');" href='/xqall/RS曙光花园观澜国际'>曙光花园观澜国际</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'AoLinChunTianSanQi');" href='/xqall/RS澳林春天三期'>澳林春天三期</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'RongKeGanLanChengYiQi');" href='/xqall/RS融科橄榄城一期'>融科橄榄城一期</a></li>

                <li><a target="_blank" onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'JinYuChiXiaoQuXiQu');" href='/xqall/RS金鱼池小区西区'>金鱼池小区西区</a></li>

            </ul>

        </div>
        <div class="hotline fr">
            <h6>购房热线</h6>
            <p>400-706-1188</p>
        </div>
    </div>
    <div class="footer-line">
        <div class="wrapper" style="font-size:14px;">北京麦田房产经纪有限公司&nbsp;京ICP备 13011372号-1&nbsp;&nbsp;Copyright@&nbsp;2015-2017&nbsp;北京麦田房产经纪有限公司保留所有权利</div>
    </div>
</div>
<div class="code-img">
    <img src="<%=request.getContextPath()%>/mt/qrSmall-img.jpg" alt="">
    关注麦田微信公众号
    <i></i>
</div>

<!--<script type="text/javascript" src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>-->

<script type="text/javascript" src="<%=request.getContextPath()%>/mt/qc_loader.js" data-appid="101321688" data-redirecturi="http://bj.maitian.cn/Service/AuthLoginQQ.ashx" charset="utf-8"></script>
<script type="text/javascript" src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=226422212" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/client.js" language="JavaScript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/Common.js"></script>

<script type="text/javascript">
    var _scriptList = [
        '<%=request.getContextPath()%>/mt/dataHandle.js',
        '<%=request.getContextPath()%>/mt/localStorage.js',
        '<%=request.getContextPath()%>/mt/SearchInputIndex.js',
        '<%=request.getContextPath()%>/mt/Index.js'
    ];

    GLOBAL.Load(_scriptList, '', function () {
        GLOBAL.View.Index.Init();
    });
    

    function kaishizhaofang() {
        location.href="<%=request.getContextPath()%>/index.jsp";
    }

    
</script>

</body>
</html>
