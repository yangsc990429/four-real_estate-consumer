<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-29
  Time: 下午 10:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta content="width=1200, initial-scale=1, maximum-scale=1, user-scalable=1" name="viewport">
    <link href="<%=request.getContextPath()%>/mt/Favicon.ico.ico" type="image/x-icon" rel=icon>
    <link href="<%=request.getContextPath()%>/mt/Favicon.ico.ico" type="image/x-icon" rel="shortcut icon">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/header&footer-1.css" tppabs="http://bj.maitian.cn/skin/css/header&footer.css">

    <!-- webIM css -->
    <link href="<%=request.getContextPath()%>/mt/imcommon.css" tppabs="http://bj.maitian.cn/Skin/css/imcommon.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/mt/mtim.css" tppabs="http://bj.maitian.cn/Skin/css/mtim.css" rel="stylesheet" />
    <!-- webIM css -->


    <title>【北京二手房出售_北京二手房网】-北京麦田房产</title>
    <meta name="keywords" content="北京二手房网,北京二手房买卖,北京个人房屋出售,北京二手房价格,北京二手房交易" />
    <meta name="description" content="麦田北京二手房网为您提供北京二手房出售，北京二手房房价查询,北京二手房交易等业务，包含北京个人二手房、地铁沿线二手房、豪宅别墅等房源，买卖北京二手房就上北京麦田在线，让您安心购房。" />


    <script type='text/javascript' src="<%=request.getContextPath()%>/mt/init.js" tppabs="http://bj.maitian.cn/Scripts/pagekage/common/init.js"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/base.css" tppabs="http://bj.maitian.cn/skin/css/base.css">

    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/esf_list.css-version=2.0.0.css" tppabs="http://bj.maitian.cn/SKIN/css/esf_list.css?version=2.0.0">
    <script type="text/javascript" src="<%=request.getContextPath()%>/mt/html5.js" tppabs="http://bj.maitian.cn/Skin/js/html5.js"></script>
    <script src="<%=request.getContextPath()%>/mt/Common.js" tppabs="http://bj.maitian.cn/VIEW/Shared/Common.js"></script>


</head>
<body>

<!--CommonBody-->
<div style="display:none;">
    <script type="text/javascript">

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

<div class="revealbga" style="display:none">
    <div class="dezxails clearfix">
        <p>
            <span tab="0" class="cur_tab">手机短信登录</span>
            &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
            <span tab="1">已有账号登录</span>
            <kbd>
                <a href="javascript:MTLoginHide();">
                    <img src="/../mt/imp/close.jpg" alt="">
                </a>
            </kbd>
        </p>
        <form id="thisForm" method="post" action="">
            <ul class="FancyF FancyForm3" style="display: block" id="ulMobileVerify">
                <li>
                    <label>请输入手机号码</label>
                    <span class="fff"></span><input type="text" id="txtLoginMobile" maxlength="11" onfocus="ga('send', 'event', 'denglu', 'maitianzaixiandenglu', 'shurushoujihao');">
                </li>
                <li id="li1" style="display:block">
                    <label>请输入图形码</label>
                    <span class="fff fffw1"></span>
                    <input type="text" class="inputCode" id="txtVerify" autocomplete="off" maxlength="4" onfocus="ga('send', 'event', 'denglu', 'maitianzaixiandenglu', 'shurutuxingyanzheng');">
                    <img src="/../mt/imp/IdentifyingCode.ashx" onclick="javascript: LoadCode();" class="img_code" id="imgCode" alt="验证码" />
                    <a class="change_img_code" href="javascript:;" onclick="javascript:LoadCode();">换一组</a>
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
        <samp><a id="btnLogin" href="javascript:">立即登录</a></samp>
        <div class="goRegist"><label>还没有麦田账号?<a href='/userregist'>马上注册</a></label></div>

        <ol>
            <li><i></i><a id="btnQQLogin" href="javascript:">QQ登录</a></li>
            <li><i class="sina"></i><a id="btnSinaLogin" href="javascript:">新浪微博登录</a></li>
        </ol>
    </div>
</div>

<header class="maitian-header">
    <div class="nav-wrap clearfix">
        <ul class="fl">
            <li class="logo"><a href="/index.html" onclick="ga('send', 'event', 'quanzhanyetou', 'logo', 'logo');"><img src="/Skin/img/logo.png" alt=""></a></li>
            <li class="city">
                <div class="filter_select clearfix selectBox">
                    <a href="javascript:;" class="show">北京</a>
                    <div class="filter_sel selectCont">
                        <ul>
                            <li class="active"><a href="http://bj.maitian.cn">北京</a></li>
                            <li><a id="fzurlA" href="http://fz.maitian.cn">福州</a></li>
                            <li><a id="xmurlA" href="http://xm.maitian.cn">厦门</a></li>
                        </ul>
                    </div>
                </div>
            </li>
            <li>
                <a onclick="ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'shouye');" href='
                    /Index.html'

                   id="matianindex">首页
                </a>
            </li>
            <li>
                <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'ershoufang');" href='
                    /esfall'

                   class="bg"

                   id="matianesf">二手房
                </a>
            </li>
            <li>
                <a onclick="ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'zufang');" href='
                    /zfall'

                   id="matianbs">租房
                </a>
            </li>
            <li>
                <a onclick="ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'xiaoqu');" href='
                    /xqall'

                   id="matianxq">小区
                </a>
            </li>
            <li>
                <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'jingjiren');" href='
                    /bkesf'

                   id="matianjjr">房产顾问
                </a>
            </li>
            <!--<li>
                <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'VIP');" href='/viphouse.html'>麦田房源
                </a>
            </li>-->
            <li>
                <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'woyaomaifang'); " href='
                    /membersell'

                   id="matianwtcs"> 委托
                </a>
            </li>
            <li>
                <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'APP');" href='/MTApp.html'>麦田APP</a>
            </li>
        </ul>
        <div class="about float_r">

            <p class="clearfix" id="islogined">
        <a class="know float_r" onclick="ga('send', 'event', 'quanzhanyetou', 'liaojiemaitian', 'liaojiemaitian');" href="http://about.maitian.cn/">了解麦田</a>
                <a  href="javascript:gerenziliaoym()" class="reg float_r">
                    <%=request.getSession().getAttribute("name")%></a>
                <a href="javascript:;" style="cursor:default;">/</a>
                <a onclick="ga('send', 'event', 'quanzhanyetou', 'denlguzhuce', 'denglu');" href='<%=request.getContextPath()%>/userlogin.jsp' class="login float_r">退出</a>
             </p>
                     <h3 class="float_r">购房热线：400-706-1188</h3>
        </div>
    </div>
    <style>
        .city #mCSB_1_scrollbar_vertical {
            display: none;
        }
    </style>
    <script>
        $(function () {
            $('.dezxails p span').click(function () {
                $('.dezxails p span').removeClass('cur_tab');
                $(this).addClass('cur_tab');
                $('.dezxails ul').css('display', 'none');
                $('.dezxails ul').eq($(this).attr('tab')).css('display', 'block');

                if ($("#ulMobilePass").css("display") == "block") {
                    $("#txtLoginName").focus();
                }
                if ($("#ulMobileVerify").css("display") == "block") {
                    $("#txtLoginMobile").focus();
                }
            });
        });
    </script>
</header>



<!--活动-->
<!---->

<input type="hidden" value="http://bj.maitian.cn/VIEW/HouseSecond/HouseSecondList.html?R=&C=&S=&SB=&SE=&A=&AB=&AE=&H=&O=&T=&L=&Y=&OR=&PG=&RS=&N=" id="currentUrl" />
<!--Main begin-->
<section class="esf_list_search clearfix">
    <div class="so_search clearfix">
        <input type="text" class="txt" onblur=" if (this.value == '') {this.value = '请输入房源所在区域或小区名称'} "  onfocus=" if (this.value == '请输入房源所在区域或小区名称') {this.value = ''}; " value="请输入房源所在区域或小区名称" maxlength="100" id="ico-search">
        <input type="button" class="but" id="btSearch" onclick="ga('send', 'event', 'zhanneisousuo', 'sousuo', this.value);">
        <p id="lastSearchTerm"></p>
    </div>
    <ul id="SearchTips" style="top: 37px; left: 0.5px; width: 622px; position: absolute; border: 1px solid #d9d9d9; background-color: white; display: none; z-index: 3;"></ul>
    <script type='text/javascript' src='/../mt/imp/localStorage.js'></script>


    <div class="clear"></div>


</section>

<!--list-->
<section class="esf_list clearfix">
    <div class="list_left">
        <div class="channel_nav">
            <div class="clearfix">
                <ul>
                    <li>
                        <a onclick="ga('send', 'event', 'shaixuantiaojian_tab', 'tab_qiehuan', 'quanbuershoufang');" href='/esfall' class="bg">全部二手房</a>
                    </li>
                    <li>
                        <a onclick="ga('send', 'event', 'shaixuantiaojian_tab', 'tab_qiehuan', 'ditiefang');" href='/esfway/T3'>地铁房</a>
                    </li>
                    <li>
                        <a class="last" onclick="ga('send', 'event', 'shaixuantiaojian_tab', 'tab_qiehuan', 'shenghuoquan');" href='/esfmap'>地图找房</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="condition">
            <div class="filter_options clearfix">
                <ol class="clearfix">
                    <label><strong style="margin-right: 3px">区域：</strong><a name="region" href='/esfall'  id="R0">不限</a></label>
                    <ul class="clearfix" id="disregion">

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_昌平');" href='/esfall/R1' id="R1" name="region">昌平</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_朝阳');" href='/esfall/R2' id="R2" name="region">朝阳</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_东城');" href='/esfall/R3' id="R3" name="region">东城</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_大兴');" href='/esfall/R4' id="R4" name="region">大兴</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_房山');" href='/esfall/R12' id="R12" name="region">房山</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_丰台');" href='/esfall/R5' id="R5" name="region">丰台</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_海淀');" href='/esfall/R6' id="R6" name="region">海淀</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_平谷');" href='/esfall/R13' id="R13" name="region">平谷</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_石景山');" href='/esfall/R10' id="R10" name="region">石景山</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_顺义');" href='/esfall/R11' id="R11" name="region">顺义</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_通州');" href='/esfall/R9' id="R9" name="region">通州</a></li>

                        <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'quyu', '1级区域_西城');" href='/esfall/R7' id="R7" name="region">西城</a></li>

                    </ul>
                </ol>
                <!----------商圈 start---------->
                <div class="panesa" id="idCycle">
                </div>
                <!----------商圈 end---------->
                <div class="clear"></div>
            </div>
            <div class="filter_options clearfix">
                <label>
                    <strong>售价：</strong>
                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'shoujia', '售价_不限');" href='/esfall' id="S0">不限</a>
                </label>
                <ul class="three clearfix">

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'shoujia', '售价_200万以下');" href='/esfall/S1' id="S1">200万以下</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'shoujia', '售价_200-300万');" href='/esfall/S2' id="S2">200-300万</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'shoujia', '售价_300-400万');" href='/esfall/S3' id="S3">300-400万</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'shoujia', '售价_400-600万');" href='/esfall/S4' id="S4">400-600万</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'shoujia', '售价_600-800万');" href='/esfall/S5' id="S5">600-800万</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'shoujia', '售价_800万以上');" href='/esfall/S6' id="S6">800万以上</a>
                    </li>

                </ul>
                <section class="input_section"><input class="checkNum" id="SB" type="text" min="0" max="999999999"  onkeyup="value = value.replace(/[^\d]/g, '')" value=""> - <input class="checkNum" id="SE" type="text" min="0" max="999999999"  onkeyup="value = value.replace(/[^\d]/g, '')" value="">&nbsp;万<button id="Sbtn">确定</button></section>
                <div class="clear"></div>
            </div>
            <div class="filter_options clearfix">
                <label>
                    <strong>面积：</strong>
                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'mianji', '面积_不限');" href='/esfall' id="A0">不限</a>
                </label>
                <ul class="three clearfix">

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'mianji', '面积_50平以下');" href='/esfall/A1' id="A1">50平以下</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'mianji', '面积_50-70平');" href='/esfall/A2' id="A2">50-70平</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'mianji', '面积_70-90平');" href='/esfall/A3' id="A3">70-90平</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'mianji', '面积_90-110平');" href='/esfall/A4' id="A4">90-110平</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'mianji', '面积_110-130平');" href='/esfall/A5' id="A5">110-130平</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'mianji', '面积_130-150平');" href='/esfall/A6' id="A6">130-150平</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'mianji', '面积_150平以上');" href='/esfall/A7' id="A7">150平以上</a>
                    </li>

                </ul>
                <section class="input_section"><input type="text" id="AB" class="checkNum" min="0" max="999999999"  onkeyup="value = value.replace(/[^\d]/g, '')" value=""> - <input class="checkNum" id="AE" type="text" min="0" max="999999999"  onkeyup="value = value.replace(/[^\d]/g, '')" value="">&nbsp;平米<button id="Abtn">确定</button></section>
                <div class="clear"></div>
            </div>
            <div class="filter_options clearfix">
                <label>
                    <strong>户型：</strong>
                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'huxing', '户型_不限');" href='/esfall' id="H0">不限</a>
                </label>
                <ul class="clearfix">

                    <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'huxing', '户型_一室');" href='/esfall/H1' id="H1">一室</a></li>

                    <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'huxing', '户型_二室');" href='/esfall/H2' id="H2">二室</a></li>

                    <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'huxing', '户型_三室');" href='/esfall/H3' id="H3">三室</a></li>

                    <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'huxing', '户型_四室');" href='/esfall/H4' id="H4">四室</a></li>

                    <li><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'huxing', '户型_五室以上');" href='/esfall/H5' id="H5">五室以上</a></li>

                </ul>
                <div class="clear"></div>
            </div>
            <div class="filter_options clearfix">
                <label>
                    <strong>朝向：</strong>
                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'chaoxiang', '朝向_不限');" href='/esfall' id="O0">不限</a>
                </label>
                <ul class="clearfix">

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'chaoxiang', '朝向_东');" href='/esfall/O1' id="O1">东</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'chaoxiang', '朝向_南');" href='/esfall/O2' id="O2">南</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'chaoxiang', '朝向_西');" href='/esfall/O3' id="O3">西</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'chaoxiang', '朝向_北');" href='/esfall/O4' id="O4">北</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'chaoxiang', '朝向_南北');" href='/esfall/O5' id="O5">南北</a>
                    </li>

                </ul>
                <div class="clear"></div>
            </div>
            <div class="filter_options clearfix">
                <label>
                    <strong>卖点：</strong>
                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'maidian', '卖点_不限');" href='/esfall' id="T0">不限</a>
                </label>
                <ul class="three clearfix">

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'maidian', '卖点_临近地铁');" href='/esfall/T3' id="T3">临近地铁</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'maidian', '卖点_满五');" href='/esfall/T2' id="T2">满五</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'maidian', '卖点_随时可看');" href='/esfall/T4' id="T4">随时可看</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'maidian', '卖点_带车位');" href='/esfall/T9' id="T9">带车位</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'maidian', '卖点_带露台');" href='/esfall/T7' id="T7">带露台</a>
                    </li>

                    <li>
                        <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'maidian', '卖点_带飘窗');" href='/esfall/T8' id="T8">带飘窗</a>
                    </li>

                </ul>
                <div class="clear"></div>
            </div>

            <div class="filter_options filter_select_box clearfix">
                <label><strong>筛选：</strong></label>

                <div class="filter_select clearfix selectBox" style="margin-top:5px;">
                    <a href="javascript:;" class="show">楼层</a>
                    <em></em>
                    <div class="filter_sel selectCont filter_sel_L">
                        <ul>
                            <li idx="L0"  > <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'louceng', '楼层_全部');" href='/esfall' style="background:none;"  id="L0">全部</a>   </li>

                            <li idx="L1">
                                <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'louceng', '楼层_低楼层');" href='/esfall/L1' id="ND">低楼层</a>
                            </li>

                            <li idx="L2">
                                <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'louceng', '楼层_中楼层');" href='/esfall/L2' id="ND">中楼层</a>
                            </li>

                            <li idx="L3">
                                <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'louceng', '楼层_高楼层');" href='/esfall/L3' id="ND">高楼层</a>
                            </li>

                        </ul>
                    </div>
                </div>

                <!--<div class="filter_select clearfix selectBox">
                    <a href="javascript:;" class="show">楼龄</a>
                    <em></em>
                    <div class="filter_sel selectCont filter_sel_J">
                        <ul>
                            <li idx="J0"><a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'jianchengniandai', '楼龄_全部');" href='/esfall'  style="background:none" id="J0">全部</a>  </li>

                                <li idx="Y1">
                                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'jianchengniandai', '楼龄_5年以内');" href='/esfall/Y1' id="A1">5年以内</a>
                                </li>

                                <li idx="Y2">
                                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'jianchengniandai', '楼龄_10年以内');" href='/esfall/Y2' id="A1">10年以内</a>
                                </li>

                                <li idx="Y3">
                                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'jianchengniandai', '楼龄_15年以内');" href='/esfall/Y3' id="A1">15年以内</a>
                                </li>

                                <li idx="Y4">
                                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'jianchengniandai', '楼龄_20年以内');" href='/esfall/Y4' id="A1">20年以内</a>
                                </li>

                                <li idx="Y5">
                                    <a onclick="ga('send', 'event', 'quanbuershoufangshaixuan', 'jianchengniandai', '楼龄_20年以上');" href='/esfall/Y5' id="A1">20年以上</a>
                                </li>

                        </ul>
                    </div>
                </div>-->
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <input type="hidden" value="M0,R0,C0,B0,D0,W0,S0,A0,AB,AE,H0,O0,T0,OR0,L0" id="addClassStr" />
    <div class="list_right">
        <div class="screening">
            <ul>
                <li>排序：</li>

                <li>
                    <a onclick="ga('send', 'event', 'paixu', 'moren', 'moren');" href='
                            /esfall'

                       class="bg"

                    >默认
                    </a>
                </li>

                <li><a onclick="ga('send', 'event', 'paixu', 'zongjia', 'youdidaogao');" href='/esfall/OR11'>总价<i class="mai-ico"></i></a></li>


                <li><a onclick="ga('send', 'event', 'paixu', 'danjia', 'youdidaogao');" href='/esfall/OR21'>单价<i class="mai-ico"></i></a></li>



                <li><a onclick="ga('send', 'event', 'paixu', 'mianji', 'youdidaogao');" href='/esfall/OR31'>面积<i class="mai-ico"></i></a></li>

            </ul>
            <label><a onclick="ga('send', 'event', 'paixu', 'liebiaomoshi', 'liebiaomoshi');" href='/esfall' class="list mai-ico"></a><a onclick="    ga('send', 'event', 'paixu', 'liebiaomoshi', 'shenghuoquan');" href='/esfmap' class="map_gay mai-ico"></a></label>
            <!--<p>找到<span>9579</span>套符合要求的房源</p>-->
        </div>
        <p class="search_result">找到<span>9579</span>套符合要求的房源</p>
        <!---房源列表 start--->
        <div class="list_wrap">
            <ul>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_1_450万元');" target="_blank" href='
                                /esfxq/IFY00627119'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/01D/E4A/01DE4A3C6EDD47C08546BB358699C260_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_1_450万元');" target="_blank" href='
                                    /esfxq/IFY00627119'>
                            <label>
                                8
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>450万元</span><!--<i class="down"></i><i class="up"></i>--></strong>80486元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_1');" target="_blank" href='/esfxq/IFY00627119'>保利西山林语   复式带阁楼  两室两卫 带天窗</a>
                        </h1>
                        <p>
                            [海淀]&nbsp;北部新区&nbsp;
                            保利西山林语｜<span>55.91</span>㎡｜&nbsp;&nbsp;

                            <span>1</span>室&nbsp;


                            <span>1</span>厅&nbsp;


                            <span>1</span>厨&nbsp;


                            <span>1</span>卫&nbsp;

                            ｜东西北
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">









                                <mark class="sole">满五</mark>







                                <mark class="yellow">随时可看</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_2_1100万元');" target="_blank" href='
                                /esfxq/IFY00587787'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/335/8D8/3358D8C1ADD746ADAF40183C6470F4DF_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_2_1100万元');" target="_blank" href='
                                    /esfxq/IFY00587787'>
                            <label>
                                10
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>1100万元</span><!--<i class="down"></i><i class="up"></i>--></strong>77992元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_2');" target="_blank" href='/esfxq/IFY00587787'>华纺易城 中间位置三居室 南北通透 正观园区绿化</a>
                        </h1>
                        <p>
                            [朝阳]&nbsp;朝青&nbsp;
                            华纺易城｜<span>141.04</span>㎡｜&nbsp;&nbsp;

                            <span>3</span>室&nbsp;


                            <span>2</span>厅&nbsp;


                            <span>1</span>厨&nbsp;


                            <span>2</span>卫&nbsp;

                            ｜南北
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">











                                <mark class="sole">满五</mark>







                                <mark class="green">6号线</mark>







                                <mark class="window">带飘窗</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_3_1210万元');" target="_blank" href='
                                /esfxq/IFY00609402'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/914/1DD/9141DD883D1249E18FF0605090A86E87_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_3_1210万元');" target="_blank" href='
                                    /esfxq/IFY00609402'>
                            <label>
                                14
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>1210万元</span><!--<i class="down"></i><i class="up"></i>--></strong>93076元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_3');" target="_blank" href='/esfxq/IFY00609402'>车道沟 京西明珠 人车分流 南北通风 带明卫 附带独立门厅</a>
                        </h1>
                        <p>
                            [海淀]&nbsp;紫竹桥&nbsp;
                            曙光花园望山园｜<span>130</span>㎡｜&nbsp;&nbsp;

                            <span>3</span>室&nbsp;


                            <span>2</span>厅&nbsp;


                            <span>1</span>厨&nbsp;


                            <span>2</span>卫&nbsp;

                            ｜南北
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">











                                <mark class="sole">满五</mark>







                                <mark class="green">10号线、6号线</mark>







                                <mark class="carport">带车位</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_4_2299万元');" target="_blank" href='
                                /esfxq/IFY00551622'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/436/7CA/4367CAE2AAD245F2B6158FCC429A792E_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_4_2299万元');" target="_blank" href='
                                    /esfxq/IFY00551622'>
                            <label>
                                16
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>2299万元</span><!--<i class="down"></i><i class="up"></i>--></strong>106930元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_4');" target="_blank" href='/esfxq/IFY00551622'>安静位置 高层 叠拼别墅4室 看房方便 ！</a>
                        </h1>
                        <p>
                            [朝阳]&nbsp;望京&nbsp;
                            果岭里class｜<span>215</span>㎡｜&nbsp;&nbsp;

                            <span>4</span>室&nbsp;


                            <span>2</span>厅&nbsp;


                            <span>2</span>厨&nbsp;


                            <span>3</span>卫&nbsp;

                            ｜南北
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">











                                <mark class="sole">满五</mark>







                                <mark class="green">14号线、15号线</mark>







                                <mark class="carport">带车位</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_5_1580万元');" target="_blank" href='
                                /esfxq/IFY00639770'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/10E/6CC/10E6CCA55F134B0BA418E87E44481184_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_5_1580万元');" target="_blank" href='
                                    /esfxq/IFY00639770'>
                            <label>
                                9
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>1580万元</span><!--<i class="down"></i><i class="up"></i>--></strong>95897元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_5');" target="_blank" href='/esfxq/IFY00639770'>世纪城时雨园+动静分离+落地飘窗+双卧南+高层观景+双明卫</a>
                        </h1>
                        <p>
                            [海淀]&nbsp;世纪城&nbsp;
                            时雨园｜<span>164.76</span>㎡｜&nbsp;&nbsp;

                            <span>3</span>室&nbsp;


                            <span>2</span>厅&nbsp;


                            <span>1</span>厨&nbsp;


                            <span>2</span>卫&nbsp;

                            ｜东南
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">













                                <mark class="sole">满五</mark>







                                <mark class="green">10号线</mark>







                                <mark class="terrace">带露台</mark>







                                <mark class="window">带飘窗</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_6_1550万元');" target="_blank" href='
                                /esfxq/IFY00604456'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/D43/FD0/D43FD0341D774677952327D280EC10B0_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_6_1550万元');" target="_blank" href='
                                    /esfxq/IFY00604456'>
                            <label>
                                12
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>1550万元</span><!--<i class="down"></i><i class="up"></i>--></strong>94512元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_6');" target="_blank" href='/esfxq/IFY00604456'>三元桥 国际村南北东三面采光四居室 配套齐全 采光好</a>
                        </h1>
                        <p>
                            [朝阳]&nbsp;三元桥&nbsp;
                            UHN国际村｜<span>164</span>㎡｜&nbsp;&nbsp;

                            <span>4</span>室&nbsp;


                            <span>2</span>厅&nbsp;


                            <span>1</span>厨&nbsp;


                            <span>2</span>卫&nbsp;

                            ｜南北
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">











                                <mark class="sole">满五</mark>







                                <mark class="green">10号线、机场线</mark>







                                <mark class="yellow">随时可看</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_7_950万元');" target="_blank" href='
                                /esfxq/IFY00627100'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/625/3A0/6253A0E8A3EA4CD5ADC09BE05B6DE8DC_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_7_950万元');" target="_blank" href='
                                    /esfxq/IFY00627100'>
                            <label>
                                9
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>950万元</span><!--<i class="down"></i><i class="up"></i>--></strong>77868元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_7');" target="_blank" href='/esfxq/IFY00627100'>朝阳大悦城 青年路 润枫水尚 南北2居室 遇好人缘</a>
                        </h1>
                        <p>
                            [朝阳]&nbsp;朝青&nbsp;
                            润枫水尚｜<span>122</span>㎡｜&nbsp;&nbsp;

                            <span>2</span>室&nbsp;


                            <span>1</span>厅&nbsp;


                            <span>1</span>厨&nbsp;


                            <span>2</span>卫&nbsp;

                            ｜南北
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">









                                <mark class="sole">满五</mark>







                                <mark class="green">6号线</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_8_1180万元');" target="_blank" href='
                                /esfxq/IFY00631458'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/CB3/6BE/CB36BECD3F91479A86E21C0F66C51C88_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_8_1180万元');" target="_blank" href='
                                    /esfxq/IFY00631458'>
                            <label>
                                11
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>1180万元</span><!--<i class="down"></i><i class="up"></i>--></strong>90456元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_8');" target="_blank" href='/esfxq/IFY00631458'>东城区 培新街乙5号院 南北复式三居 双卫 对花园 带储物间</a>
                        </h1>
                        <p>
                            [东城]&nbsp;广渠门&nbsp;
                            培新街乙5号院｜<span>130.45</span>㎡｜&nbsp;&nbsp;

                            <span>3</span>室&nbsp;


                            <span>1</span>厅&nbsp;


                            <span>1</span>厨&nbsp;


                            <span>2</span>卫&nbsp;

                            ｜南北
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">











                                <mark class="sole">满五</mark>







                                <mark class="green">5号线、7号线</mark>







                                <mark class="yellow">随时可看</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_9_1330万元');" target="_blank" href='
                                /esfxq/IFY00580320'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/764/A0A/764A0A906B874CF6BFFC2ED6F34520D5_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_9_1330万元');" target="_blank" href='
                                    /esfxq/IFY00580320'>
                            <label>
                                13
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>1330万元</span><!--<i class="down"></i><i class="up"></i>--></strong>72164元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_9');" target="_blank" href='/esfxq/IFY00580320'>东花市北里中区 版楼 复式 东南北向 看房方便</a>
                        </h1>
                        <p>
                            [东城]&nbsp;东花市&nbsp;
                            东花市北里中区｜<span>184.3</span>㎡｜&nbsp;&nbsp;

                            <span>3</span>室&nbsp;


                            <span>3</span>厅&nbsp;


                            <span>1</span>厨&nbsp;


                            <span>2</span>卫&nbsp;

                            ｜东南北
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">









                                <mark class="sole">满五</mark>







                                <mark class="green">1号线、5号线、2号线、7号线</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

                <li class="clearfix">
                    <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_10_2599万元');" target="_blank" href='
                                /esfxq/IFY00606013'>
                        <img src="http://img.maitian.cn/IMAGE/SEC/6EE/11F/6EE11F65F7A94AA19C7FCF8E79F5C787_208x156.JPG" width="208" height="156" alt="" />
                    </a>
                    <!-- -->
                    <div class="hide_border">
                        <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuantupian', '1_10_2599万元');" target="_blank" href='
                                    /esfxq/IFY00606013'>
                            <label>
                                11
                                图
                            </label>
                        </a>
                    </div>


                    <div class="list_title">
                        <div class="the_price">
                            <ol><strong><span>2599万元</span><!--<i class="down"></i><i class="up"></i>--></strong>135498元/㎡</ol>
                        </div>
                        <h1>
                            <a onclick="ga('send', 'event', 'ershoufangliebiao', 'fangyuanbiaoti', '1_10');" target="_blank" href='/esfxq/IFY00606013'>南北通透，业主自己住保持好 看房方便基本上随时可以看房</a>
                        </h1>
                        <p>
                            [朝阳]&nbsp;太阳宫&nbsp;
                            太阳公元｜<span>191.81</span>㎡｜&nbsp;&nbsp;

                            <span>3</span>室&nbsp;


                            <span>2</span>厅&nbsp;


                            <span>1</span>厨&nbsp;


                            <span>2</span>卫&nbsp;

                            ｜东南北
                        </p>

                        <dl class="clearfix">
                            <dd class="morel clearfix">











                                <mark class="sole">满五</mark>







                                <mark class="green">10号线、13号线</mark>







                                <mark class="window">带飘窗</mark>




                            </dd>
                        </dl>
                    </div>
                </li>

            </ul>
        </div>




        <!---分页--->
        <div id="paging" class="paging clearfix">  <a class="up_page" onclick="ga('send', 'event', 'fanye', 'dangqianyema', 'shouye');">首页</a> <a class="up_page"><i class="mai-ico"></i>上一页</a> <a class="on"> 1 </a> <a onclick="ga('send', 'event', 'fanye', 'dangqianyema', '2');" href="/esfall/PG2"> 2 </a> <a onclick="ga('send', 'event', 'fanye', 'dangqianyema', '3');" href="/esfall/PG3"> 3 </a> <a onclick="ga('send', 'event', 'fanye', 'dangqianyema', '4');" href="/esfall/PG4"> 4 </a> <a onclick="ga('send', 'event', 'fanye', 'dangqianyema', '5');" href="/esfall/PG5"> 5 </a> <a href="/esfall/PG6"> ... </a> <a onclick="ga('send', 'event', 'fanye', 'dangqianyema', 'xiayiye');" href="/esfall/PG2" class="down_page">下一页<i class="mai-ico"></i></a> <a onclick="ga('send', 'event', 'fanye', 'dangqianyema', 'weiye');" href="/esfall/PG958" class="down_page">尾页</a> </div>


    </div>
</section>
<!--Main end-->

<!--webIm-->

<!--webNIM-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=d6zGANUDmor3AVuE7Iy34UCY"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/NIM_Web_NIM_v4.6.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/localStorage.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/WebNimCommon.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/weixinAudio.js"></script>
<%--<script type='text/javascript'>
    //异步加载js
    ~function () {
        var s = document.createElement('script');
        s.src = '<%=request.getContextPath()%>/mt/netnim.js';
        document.body.appendChild(s);
    }();
</script>--%>
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


<!--footer-->
<footer>

    <div class="footer" style="padding: 0; height: auto; margin-top: 0">
        <div class="wrapper2 clearFix">
            <div class="footer-left fl">
                <ul class="website-map clearFix">
                    <li><a onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'fuzhouershoufang');" href="http://fz.maitian.cn/esfall">福州二手房</a></li> <li><a onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'xiamenershoufang');" href="http://xm.maitian.cn/esfall">厦门二手房</a></li>
                    <li><a onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'ershoufang');" href="/esfall">二手房</a></li>
                    <li><a onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'xiaoqu');" href="/xqall">小区</a></li>
                    <li><a onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'jingjiren');" href="/bkesf">房产顾问</a></li>
                    <li><a onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'jiarumaitian');" href="http://about.maitian.cn/jionUs/Social.aspx">加入麦田</a></li>
                    <li><a onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'guanyumaitian');" href="http://about.maitian.cn/">关于麦田</a></li>
                    <li><a onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'jingjirendenglu');" href="http://agent.maitian.cn/VIEW/Login/Login.html">房产顾问登录</a></li>
                </ul>

                <ul class="hot-list-title clearFix">

                    <li>北京热门二手房</li>

                    <li>北京热门租房</li>

                    <li>北京热门小区</li>

                </ul>



                <ul class="hot-list-wrap clearFix" style="display:block">


                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'ChangPingErShouFang');" href='/esfall/R1'>昌平二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'ChaoYangErShouFang');" href='/esfall/R2'>朝阳二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'DongChengErShouFang');" href='/esfall/R3'>东城二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'DaXingErShouFang');" href='/esfall/R4'>大兴二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'FengTaiErShouFang');" href='/esfall/R5'>丰台二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'HaiDianErShouFang');" href='/esfall/R6'>海淀二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'ShiJingShanErShouFang');" href='/esfall/R10'>石景山二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'XiChengErShouFang');" href='/esfall/R7'>西城二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'WangJingErShouFang');" href='/esfall/R2C6'>望京二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'HePingLiErShouFang');" href='/esfall/R2C36'>和平里二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'XueYuanLuErShouFang');" href='/esfall/R6C69'>学院路二手房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenershoufang', 'BeiYuanErShouFang');" href='/esfall/R2C55'>北苑二手房</a></li>

                </ul>


                <ul class="hot-list-wrap clearFix">


                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'ChaoYangZuFang');" href='/zfall/R2'>朝阳租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'DongChengZuFang');" href='/zfall/R3'>东城租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'HaiDianZuFang');" href='/zfall/R6'>海淀租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'WangJingZuFang');" href='/zfall/R2C6'>望京租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'AoLinPiKeZuFang');" href='/zfall/R2C59'>奥林匹克租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'BeiYuanZuFang');" href='/zfall/R2C55'>北苑租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'CBDZuFang');" href='/zfall/R2C61'>CBD租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'ChaoQingZuFang');" href='/zfall/R2C53'>朝青租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'JiuXianQiaoZuFang');" href='/zfall/R2C27'>酒仙桥租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'NanShaTanZuFang');" href='/zfall/R2C23'>南沙滩租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'SanYuanQiaoZuFang');" href='/zfall/R2C19'>三元桥租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'TaiYangGongZuFang');" href='/zfall/R2C9'>太阳宫租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'ShangDiZuFang');" href='/zfall/R6C87'>上地租房</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenzufang', 'QingHeZuFang');" href='/zfall/R6C88'>清河租房</a></li>

                </ul>


                <ul class="hot-list-wrap clearFix">


                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'XiShanHuaFu');" href='/xqall/RS西山华府'>西山华府</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'KanDouGuoJi');" href='/xqall/RS瞰都国际'>瞰都国际</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'ShangBeiXinZuo');" href='/xqall/RS上北鑫座'>上北鑫座</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'DongHuWanYiQi');" href='/xqall/RS东湖湾一期'>东湖湾一期</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'YaYunXinXinJiaYuanLangYueYuan');" href='/xqall/RS亚运新新家园朗月园'>亚运新新家园朗月园</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'YaYunXinXinJiaYuanJingFengYuan');" href='/xqall/RS亚运新新家园静风园'>亚运新新家园静风园</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'BeiWei40DuErQi');" href='/xqall/RS北纬40度二期'>北纬40度二期</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'JiaMingTongChengDQu');" href='/xqall/RS嘉铭桐城D区'>嘉铭桐城D区</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'JiaMingTongChengBQu');" href='/xqall/RS嘉铭桐城B区'>嘉铭桐城B区</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'FuLiTaoYuanCQu');" href='/xqall/RS富力桃园C区'>富力桃园C区</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'ShuGuangHuaYuanGuanLanGuoJi');" href='/xqall/RS曙光花园观澜国际'>曙光花园观澜国际</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'AoLinChunTianSanQi');" href='/xqall/RS澳林春天三期'>澳林春天三期</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'RongKeGanLanChengYiQi');" href='/xqall/RS融科橄榄城一期'>融科橄榄城一期</a></li>

                    <li><a onclick="ga('send', 'event', 'quanzhanyedi',  'beijingremenxiaoqu', 'JinYuChiXiaoQuXiQu');" href='/xqall/RS金鱼池小区西区'>金鱼池小区西区</a></li>

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
    <!--<script type="text/javascript" src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>-->
   <%-- <script type="text/javascript">
        $(document).ready(function () {
            $(".city").mouseover(function () {
                $(".city-down").stop().slideDown(60);
            });
            $(".city").mouseout(function () {
                $(".city-down").stop().slideUp(30);
            });
            $(".city-down li").click(function () {
                $(this).addClass("active").siblings().removeClass("active");
            });
            $('.hot-list-title li').on('mouseenter', function () {
                var curIndex = $(this).index();
                $(this).css({ 'color': '#fff' }).closest('.footer-left').find('.hot-list-wrap').eq(curIndex).show().siblings('.hot-list-wrap').hide();
                $(this).siblings().css({ 'color': '#888' })
            })

        })

    </script>--%>
</footer>


<script type='text/javascript'>
    var _scriptList = [
        //'/scripts/pages/base/pagebase.js',
        '<%=request.getContextPath()%>/mt/dataHandle.js',
        //'/scripts/pagekage/utils/widget/url/url.js',
        '<%=request.getContextPath()%>/mt/HouseSecondList.js',
        '<%=request.getContextPath()%>/mt/SearchInput.js'
    ];
    var RegionJson = $.parseJSON('[{"RegionName":"昌平","RegionType":"2","RegionNO":"R1","RegionURL":"/esfall/R1","RegionNOWithEqual":"R=1","PRegionAbbr":"CP","RegionX":"116.234718","RegionY":"40.225582","Cycle":[{"CycleName":"北七家","CycleType":"3","CycleNO":"C188","RegionURL":"/esfall/R1C188","CycleNOWithEqual":"C=188","PCycleAbbr":"BQJ","Sort":0},{"CycleName":"昌平其它","CycleType":"3","CycleNO":"C187","RegionURL":"/esfall/R1C187","CycleNOWithEqual":"C=187","PCycleAbbr":"CPQT","Sort":10},{"CycleName":"回龙观","CycleType":"3","CycleNO":"C186","RegionURL":"/esfall/R1C186","CycleNOWithEqual":"C=186","PCycleAbbr":"HLG","Sort":0},{"CycleName":"霍营","CycleType":"3","CycleNO":"C185","RegionURL":"/esfall/R1C185","CycleNOWithEqual":"C=185","PCycleAbbr":"HY","Sort":0},{"CycleName":"立水桥","CycleType":"3","CycleNO":"C184","RegionURL":"/esfall/R1C184","CycleNOWithEqual":"C=184","PCycleAbbr":"LSQ","Sort":0},{"CycleName":"龙泽","CycleType":"3","CycleNO":"C183","RegionURL":"/esfall/R1C183","CycleNOWithEqual":"C=183","PCycleAbbr":"LZ","Sort":0},{"CycleName":"沙河","CycleType":"3","CycleNO":"C182","RegionURL":"/esfall/R1C182","CycleNOWithEqual":"C=182","PCycleAbbr":"SH","Sort":0},{"CycleName":"天通苑","CycleType":"3","CycleNO":"C181","RegionURL":"/esfall/R1C181","CycleNOWithEqual":"C=181","PCycleAbbr":"TTY","Sort":0},{"CycleName":"西三旗","CycleType":"3","CycleNO":"C180","RegionURL":"/esfall/R1C180","CycleNOWithEqual":"C=180","PCycleAbbr":"XSQ","Sort":0},{"CycleName":"小汤山","CycleType":"3","CycleNO":"C179","RegionURL":"/esfall/R1C179","CycleNOWithEqual":"C=179","PCycleAbbr":"XTS","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"朝阳","RegionType":"2","RegionNO":"R2","RegionURL":"/esfall/R2","RegionNOWithEqual":"R=2","PRegionAbbr":"CY","RegionX":"116.478482","RegionY":"39.962414","Cycle":[{"CycleName":"奥林匹克公园","CycleType":"3","CycleNO":"C59","RegionURL":"/esfall/R2C59","CycleNOWithEqual":"C=59","PCycleAbbr":"ALPKGY","Sort":0},{"CycleName":"安贞","CycleType":"3","CycleNO":"C60","RegionURL":"/esfall/R2C60","CycleNOWithEqual":"C=60","PCycleAbbr":"AZ","Sort":0},{"CycleName":"北工大","CycleType":"3","CycleNO":"C57","RegionURL":"/esfall/R2C57","CycleNOWithEqual":"C=57","PCycleAbbr":"BGD","Sort":0},{"CycleName":"北沙滩","CycleType":"3","CycleNO":"C56","RegionURL":"/esfall/R2C56","CycleNOWithEqual":"C=56","PCycleAbbr":"BST","Sort":0},{"CycleName":"北苑","CycleType":"3","CycleNO":"C55","RegionURL":"/esfall/R2C55","CycleNOWithEqual":"C=55","PCycleAbbr":"BY","Sort":0},{"CycleName":"百子湾","CycleType":"3","CycleNO":"C58","RegionURL":"/esfall/R2C58","CycleNOWithEqual":"C=58","PCycleAbbr":"BZW","Sort":0},{"CycleName":"CBD","CycleType":"3","CycleNO":"C61","RegionURL":"/esfall/R2C61","CycleNOWithEqual":"C=61","PCycleAbbr":"CBD","Sort":0},{"CycleName":"朝青","CycleType":"3","CycleNO":"C53","RegionURL":"/esfall/R2C53","CycleNOWithEqual":"C=53","PCycleAbbr":"CQ","Sort":0},{"CycleName":"成寿寺","CycleType":"3","CycleNO":"C49","RegionURL":"/esfall/R2C49","CycleNOWithEqual":"C=49","PCycleAbbr":"CSS","Sort":0},{"CycleName":"常营","CycleType":"3","CycleNO":"C54","RegionURL":"/esfall/R2C54","CycleNOWithEqual":"C=54","PCycleAbbr":"CY","Sort":0},{"CycleName":"朝阳公园","CycleType":"3","CycleNO":"C52","RegionURL":"/esfall/R2C52","CycleNOWithEqual":"C=52","PCycleAbbr":"CYGY","Sort":0},{"CycleName":"朝阳门外","CycleType":"3","CycleNO":"C51","RegionURL":"/esfall/R2C51","CycleNOWithEqual":"C=51","PCycleAbbr":"CYMW","Sort":0},{"CycleName":"朝阳其它","CycleType":"3","CycleNO":"C50","RegionURL":"/esfall/R2C50","CycleNOWithEqual":"C=50","PCycleAbbr":"CYQT","Sort":0},{"CycleName":"东坝","CycleType":"3","CycleNO":"C45","RegionURL":"/esfall/R2C45","CycleNOWithEqual":"C=45","PCycleAbbr":"DB","Sort":0},{"CycleName":"东大桥","CycleType":"3","CycleNO":"C44","RegionURL":"/esfall/R2C44","CycleNOWithEqual":"C=44","PCycleAbbr":"DDQ","Sort":0},{"CycleName":"定福庄","CycleType":"3","CycleNO":"C46","RegionURL":"/esfall/R2C46","CycleNOWithEqual":"C=46","PCycleAbbr":"DFZ","Sort":0},{"CycleName":"豆各庄","CycleType":"3","CycleNO":"C43","RegionURL":"/esfall/R2C43","CycleNOWithEqual":"C=43","PCycleAbbr":"DGZ","Sort":0},{"CycleName":"大山子","CycleType":"3","CycleNO":"C48","RegionURL":"/esfall/R2C48","CycleNOWithEqual":"C=48","PCycleAbbr":"DSZ","Sort":0},{"CycleName":"大望路","CycleType":"3","CycleNO":"C47","RegionURL":"/esfall/R2C47","CycleNOWithEqual":"C=47","PCycleAbbr":"DWL","Sort":0},{"CycleName":"垡头","CycleType":"3","CycleNO":"C42","RegionURL":"/esfall/R2C42","CycleNOWithEqual":"C=42","PCycleAbbr":"FT","Sort":0},{"CycleName":"高碑店","CycleType":"3","CycleNO":"C40","RegionURL":"/esfall/R2C40","CycleNOWithEqual":"C=40","PCycleAbbr":"GBD","Sort":0},{"CycleName":"甘露园","CycleType":"3","CycleNO":"C41","RegionURL":"/esfall/R2C41","CycleNOWithEqual":"C=41","PCycleAbbr":"GLY","Sort":0},{"CycleName":"国贸","CycleType":"3","CycleNO":"C234","RegionURL":"/esfall/R2C234","CycleNOWithEqual":"C=234","PCycleAbbr":"GM","Sort":0},{"CycleName":"工体","CycleType":"3","CycleNO":"C39","RegionURL":"/esfall/R2C39","CycleNOWithEqual":"C=39","PCycleAbbr":"GT","Sort":0},{"CycleName":"国展","CycleType":"3","CycleNO":"C37","RegionURL":"/esfall/R2C37","CycleNOWithEqual":"C=37","PCycleAbbr":"GZ","Sort":0},{"CycleName":"管庄","CycleType":"3","CycleNO":"C38","RegionURL":"/esfall/R2C38","CycleNOWithEqual":"C=38","PCycleAbbr":"GZ","Sort":0},{"CycleName":"黄港","CycleType":"3","CycleNO":"C32","RegionURL":"/esfall/R2C32","CycleNOWithEqual":"C=32","PCycleAbbr":"HG","Sort":0},{"CycleName":"胡家园","CycleType":"3","CycleNO":"C233","RegionURL":"/esfall/R2C233","CycleNOWithEqual":"C=233","PCycleAbbr":"HJY","Sort":0},{"CycleName":"欢乐谷","CycleType":"3","CycleNO":"C33","RegionURL":"/esfall/R2C33","CycleNOWithEqual":"C=33","PCycleAbbr":"HLG","Sort":0},{"CycleName":"红庙","CycleType":"3","CycleNO":"C35","RegionURL":"/esfall/R2C35","CycleNOWithEqual":"C=35","PCycleAbbr":"HM","Sort":0},{"CycleName":"和平里","CycleType":"3","CycleNO":"C36","RegionURL":"/esfall/R2C36","CycleNOWithEqual":"C=36","PCycleAbbr":"HPL","Sort":0},{"CycleName":"华威桥","CycleType":"3","CycleNO":"C34","RegionURL":"/esfall/R2C34","CycleNOWithEqual":"C=34","PCycleAbbr":"HWQ","Sort":0},{"CycleName":"惠新西街","CycleType":"3","CycleNO":"C31","RegionURL":"/esfall/R2C31","CycleNOWithEqual":"C=31","PCycleAbbr":"HXXJ","Sort":0},{"CycleName":"建国门外","CycleType":"3","CycleNO":"C30","RegionURL":"/esfall/R2C30","CycleNOWithEqual":"C=30","PCycleAbbr":"JGMW","Sort":0},{"CycleName":"劲松","CycleType":"3","CycleNO":"C28","RegionURL":"/esfall/R2C28","CycleNOWithEqual":"C=28","PCycleAbbr":"JS","Sort":0},{"CycleName":"酒仙桥","CycleType":"3","CycleNO":"C27","RegionURL":"/esfall/R2C27","CycleNOWithEqual":"C=27","PCycleAbbr":"JXQ","Sort":0},{"CycleName":"健翔桥","CycleType":"3","CycleNO":"C29","RegionURL":"/esfall/R2C29","CycleNOWithEqual":"C=29","PCycleAbbr":"JXQ","Sort":0},{"CycleName":"来广营","CycleType":"3","CycleNO":"C26","RegionURL":"/esfall/R2C26","CycleNOWithEqual":"C=26","PCycleAbbr":"LGY","Sort":0},{"CycleName":"立水桥","CycleType":"3","CycleNO":"C25","RegionURL":"/esfall/R2C25","CycleNOWithEqual":"C=25","PCycleAbbr":"LSQ","Sort":0},{"CycleName":"马甸","CycleType":"3","CycleNO":"C24","RegionURL":"/esfall/R2C24","CycleNOWithEqual":"C=24","PCycleAbbr":"MD","Sort":0},{"CycleName":"南沙滩","CycleType":"3","CycleNO":"C23","RegionURL":"/esfall/R2C23","CycleNOWithEqual":"C=23","PCycleAbbr":"NST","Sort":0},{"CycleName":"农展馆","CycleType":"3","CycleNO":"C22","RegionURL":"/esfall/R2C22","CycleNOWithEqual":"C=22","PCycleAbbr":"NZG","Sort":0},{"CycleName":"潘家园","CycleType":"3","CycleNO":"C21","RegionURL":"/esfall/R2C21","CycleNOWithEqual":"C=21","PCycleAbbr":"PJY","Sort":0},{"CycleName":"十八里店","CycleType":"3","CycleNO":"C17","RegionURL":"/esfall/R2C17","CycleNOWithEqual":"C=17","PCycleAbbr":"SBLD","Sort":0},{"CycleName":"首都机场","CycleType":"3","CycleNO":"C13","RegionURL":"/esfall/R2C13","CycleNOWithEqual":"C=13","PCycleAbbr":"SDJC","Sort":0},{"CycleName":"石佛营","CycleType":"3","CycleNO":"C14","RegionURL":"/esfall/R2C14","CycleNOWithEqual":"C=14","PCycleAbbr":"SFY","Sort":0},{"CycleName":"四惠","CycleType":"3","CycleNO":"C10","RegionURL":"/esfall/R2C10","CycleNOWithEqual":"C=10","PCycleAbbr":"SH","Sort":0},{"CycleName":"双井","CycleType":"3","CycleNO":"C12","RegionURL":"/esfall/R2C12","CycleNOWithEqual":"C=12","PCycleAbbr":"SJ","Sort":0},{"CycleName":"十里堡","CycleType":"3","CycleNO":"C16","RegionURL":"/esfall/R2C16","CycleNOWithEqual":"C=16","PCycleAbbr":"SLB","Sort":0},{"CycleName":"十里河","CycleType":"3","CycleNO":"C15","RegionURL":"/esfall/R2C15","CycleNOWithEqual":"C=15","PCycleAbbr":"SLH","Sort":0},{"CycleName":"三里屯","CycleType":"3","CycleNO":"C20","RegionURL":"/esfall/R2C20","CycleNOWithEqual":"C=20","PCycleAbbr":"SLT","Sort":0},{"CycleName":"双桥","CycleType":"3","CycleNO":"C11","RegionURL":"/esfall/R2C11","CycleNOWithEqual":"C=11","PCycleAbbr":"SQ","Sort":0},{"CycleName":"芍药居","CycleType":"3","CycleNO":"C18","RegionURL":"/esfall/R2C18","CycleNOWithEqual":"C=18","PCycleAbbr":"SYJ","Sort":0},{"CycleName":"三元桥","CycleType":"3","CycleNO":"C19","RegionURL":"/esfall/R2C19","CycleNOWithEqual":"C=19","PCycleAbbr":"SYQ","Sort":0},{"CycleName":"团结湖","CycleType":"3","CycleNO":"C7","RegionURL":"/esfall/R2C7","CycleNOWithEqual":"C=7","PCycleAbbr":"TJH","Sort":0},{"CycleName":"甜水园","CycleType":"3","CycleNO":"C8","RegionURL":"/esfall/R2C8","CycleNOWithEqual":"C=8","PCycleAbbr":"TSY","Sort":0},{"CycleName":"太阳宫","CycleType":"3","CycleNO":"C9","RegionURL":"/esfall/R2C9","CycleNOWithEqual":"C=9","PCycleAbbr":"TYG","Sort":0},{"CycleName":"望京","CycleType":"3","CycleNO":"C6","RegionURL":"/esfall/R2C6","CycleNOWithEqual":"C=6","PCycleAbbr":"WJ","Sort":0},{"CycleName":"西坝河","CycleType":"3","CycleNO":"C5","RegionURL":"/esfall/R2C5","CycleNOWithEqual":"C=5","PCycleAbbr":"XBH","Sort":0},{"CycleName":"燕莎","CycleType":"3","CycleNO":"C2","RegionURL":"/esfall/R2C2","CycleNOWithEqual":"C=2","PCycleAbbr":"YS","Sort":0},{"CycleName":"亚运村","CycleType":"3","CycleNO":"C4","RegionURL":"/esfall/R2C4","CycleNOWithEqual":"C=4","PCycleAbbr":"YYC","Sort":0},{"CycleName":"亚运村小营","CycleType":"3","CycleNO":"C3","RegionURL":"/esfall/R2C3","CycleNOWithEqual":"C=3","PCycleAbbr":"YYCXY","Sort":0},{"CycleName":"中央别墅区","CycleType":"3","CycleNO":"C1","RegionURL":"/esfall/R2C1","CycleNOWithEqual":"C=1","PCycleAbbr":"ZYBSQ","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"东城","RegionType":"2","RegionNO":"R3","RegionURL":"/esfall/R3","RegionNOWithEqual":"R=3","PRegionAbbr":"DC","RegionX":"116.420991","RegionY":"39.934536","Cycle":[{"CycleName":"安定门","CycleType":"3","CycleNO":"C124","RegionURL":"/esfall/R3C124","CycleNOWithEqual":"C=124","PCycleAbbr":"ADM","Sort":0},{"CycleName":"崇文门","CycleType":"3","CycleNO":"C122","RegionURL":"/esfall/R3C122","CycleNOWithEqual":"C=122","PCycleAbbr":"CWM","Sort":0},{"CycleName":"朝阳门内","CycleType":"3","CycleNO":"C123","RegionURL":"/esfall/R3C123","CycleNOWithEqual":"C=123","PCycleAbbr":"CYMN","Sort":0},{"CycleName":"东城其它","CycleType":"3","CycleNO":"C120","RegionURL":"/esfall/R3C120","CycleNOWithEqual":"C=120","PCycleAbbr":"DCQT","Sort":0},{"CycleName":"东单","CycleType":"3","CycleNO":"C119","RegionURL":"/esfall/R3C119","CycleNOWithEqual":"C=119","PCycleAbbr":"DD","Sort":0},{"CycleName":"东花市","CycleType":"3","CycleNO":"C118","RegionURL":"/esfall/R3C118","CycleNOWithEqual":"C=118","PCycleAbbr":"DHS","Sort":0},{"CycleName":"东四","CycleType":"3","CycleNO":"C117","RegionURL":"/esfall/R3C117","CycleNOWithEqual":"C=117","PCycleAbbr":"DS","Sort":0},{"CycleName":"灯市口","CycleType":"3","CycleNO":"C121","RegionURL":"/esfall/R3C121","CycleNOWithEqual":"C=121","PCycleAbbr":"DSK","Sort":0},{"CycleName":"东直门","CycleType":"3","CycleNO":"C116","RegionURL":"/esfall/R3C116","CycleNOWithEqual":"C=116","PCycleAbbr":"DZM","Sort":0},{"CycleName":"广渠门","CycleType":"3","CycleNO":"C114","RegionURL":"/esfall/R3C114","CycleNOWithEqual":"C=114","PCycleAbbr":"GQM","Sort":0},{"CycleName":"工体","CycleType":"3","CycleNO":"C115","RegionURL":"/esfall/R3C115","CycleNOWithEqual":"C=115","PCycleAbbr":"GT","Sort":0},{"CycleName":"和平里","CycleType":"3","CycleNO":"C113","RegionURL":"/esfall/R3C113","CycleNOWithEqual":"C=113","PCycleAbbr":"HPL","Sort":0},{"CycleName":"金宝街","CycleType":"3","CycleNO":"C110","RegionURL":"/esfall/R3C110","CycleNOWithEqual":"C=110","PCycleAbbr":"JBJ","Sort":0},{"CycleName":"交道口","CycleType":"3","CycleNO":"C111","RegionURL":"/esfall/R3C111","CycleNOWithEqual":"C=111","PCycleAbbr":"JDK","Sort":0},{"CycleName":"建国门内","CycleType":"3","CycleNO":"C112","RegionURL":"/esfall/R3C112","CycleNOWithEqual":"C=112","PCycleAbbr":"JGMN","Sort":0},{"CycleName":"前门","CycleType":"3","CycleNO":"C109","RegionURL":"/esfall/R3C109","CycleNOWithEqual":"C=109","PCycleAbbr":"QM","Sort":0},{"CycleName":"双井","CycleType":"3","CycleNO":"C108","RegionURL":"/esfall/R3C108","CycleNOWithEqual":"C=108","PCycleAbbr":"SJ","Sort":0},{"CycleName":"陶然亭","CycleType":"3","CycleNO":"C107","RegionURL":"/esfall/R3C107","CycleNOWithEqual":"C=107","PCycleAbbr":"TRT","Sort":0},{"CycleName":"天坛","CycleType":"3","CycleNO":"C106","RegionURL":"/esfall/R3C106","CycleNOWithEqual":"C=106","PCycleAbbr":"TT","Sort":0},{"CycleName":"永定门","CycleType":"3","CycleNO":"C105","RegionURL":"/esfall/R3C105","CycleNOWithEqual":"C=105","PCycleAbbr":"YDM","Sort":0},{"CycleName":"左安门","CycleType":"3","CycleNO":"C104","RegionURL":"/esfall/R3C104","CycleNOWithEqual":"C=104","PCycleAbbr":"ZAM","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"大兴","RegionType":"2","RegionNO":"R4","RegionURL":"/esfall/R4","RegionNOWithEqual":"R=4","PRegionAbbr":"DX","RegionX":"116.346827","RegionY":"39.734408","Cycle":[{"CycleName":"大兴其它","CycleType":"3","CycleNO":"C202","RegionURL":"/esfall/R4C202","CycleNOWithEqual":"C=202","PCycleAbbr":"DXQT","Sort":0},{"CycleName":"观音寺","CycleType":"3","CycleNO":"C201","RegionURL":"/esfall/R4C201","CycleNOWithEqual":"C=201","PCycleAbbr":"GYS","Sort":0},{"CycleName":"黄村","CycleType":"3","CycleNO":"C200","RegionURL":"/esfall/R4C200","CycleNOWithEqual":"C=200","PCycleAbbr":"HC","Sort":0},{"CycleName":"黄村北","CycleType":"3","CycleNO":"C199","RegionURL":"/esfall/R4C199","CycleNOWithEqual":"C=199","PCycleAbbr":"HCB","Sort":0},{"CycleName":"黄村火车站","CycleType":"3","CycleNO":"C198","RegionURL":"/esfall/R4C198","CycleNOWithEqual":"C=198","PCycleAbbr":"HCHCZ","Sort":0},{"CycleName":"黄村中","CycleType":"3","CycleNO":"C197","RegionURL":"/esfall/R4C197","CycleNOWithEqual":"C=197","PCycleAbbr":"HCZ","Sort":0},{"CycleName":"旧宫","CycleType":"3","CycleNO":"C196","RegionURL":"/esfall/R4C196","CycleNOWithEqual":"C=196","PCycleAbbr":"JG","Sort":0},{"CycleName":"马驹桥","CycleType":"3","CycleNO":"C195","RegionURL":"/esfall/R4C195","CycleNOWithEqual":"C=195","PCycleAbbr":"MJQ","Sort":0},{"CycleName":"天宫院","CycleType":"3","CycleNO":"C194","RegionURL":"/esfall/R4C194","CycleNOWithEqual":"C=194","PCycleAbbr":"TGY","Sort":0},{"CycleName":"新宫","CycleType":"3","CycleNO":"C192","RegionURL":"/esfall/R4C192","CycleNOWithEqual":"C=192","PCycleAbbr":"XG","Sort":0},{"CycleName":"西红门","CycleType":"3","CycleNO":"C193","RegionURL":"/esfall/R4C193","CycleNOWithEqual":"C=193","PCycleAbbr":"XHM","Sort":0},{"CycleName":"亦庄","CycleType":"3","CycleNO":"C191","RegionURL":"/esfall/R4C191","CycleNOWithEqual":"C=191","PCycleAbbr":"YZ","Sort":0},{"CycleName":"亦庄开发区其它","CycleType":"3","CycleNO":"C190","RegionURL":"/esfall/R4C190","CycleNOWithEqual":"C=190","PCycleAbbr":"YZKFQQT","Sort":0},{"CycleName":"枣园","CycleType":"3","CycleNO":"C189","RegionURL":"/esfall/R4C189","CycleNOWithEqual":"C=189","PCycleAbbr":"ZY","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"房山","RegionType":"2","RegionNO":"R12","RegionURL":"/esfall/R12","RegionNOWithEqual":"R=12","PRegionAbbr":"FS","RegionX":"116.143923","RegionY":"39.749186","Cycle":[{"CycleName":"城关","CycleType":"3","CycleNO":"C237","RegionURL":"/esfall/R12C237","CycleNOWithEqual":"C=237","PCycleAbbr":"CG","Sort":0},{"CycleName":"长阳","CycleType":"3","CycleNO":"C236","RegionURL":"/esfall/R12C236","CycleNOWithEqual":"C=236","PCycleAbbr":"CY","Sort":0},{"CycleName":"窦店","CycleType":"3","CycleNO":"C238","RegionURL":"/esfall/R12C238","CycleNOWithEqual":"C=238","PCycleAbbr":"DD","Sort":0},{"CycleName":"房山其他","CycleType":"3","CycleNO":"C244","RegionURL":"/esfall/R12C244","CycleNOWithEqual":"C=244","PCycleAbbr":"FSQT","Sort":0},{"CycleName":"韩村河","CycleType":"3","CycleNO":"C239","RegionURL":"/esfall/R12C239","CycleNOWithEqual":"C=239","PCycleAbbr":"HCH","Sort":0},{"CycleName":"琉璃河","CycleType":"3","CycleNO":"C241","RegionURL":"/esfall/R12C241","CycleNOWithEqual":"C=241","PCycleAbbr":"LLH","Sort":0},{"CycleName":"良乡","CycleType":"3","CycleNO":"C240","RegionURL":"/esfall/R12C240","CycleNOWithEqual":"C=240","PCycleAbbr":"LX","Sort":0},{"CycleName":"阎村","CycleType":"3","CycleNO":"C243","RegionURL":"/esfall/R12C243","CycleNOWithEqual":"C=243","PCycleAbbr":"YC","Sort":0},{"CycleName":"燕山","CycleType":"3","CycleNO":"C242","RegionURL":"/esfall/R12C242","CycleNOWithEqual":"C=242","PCycleAbbr":"YS","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"丰台","RegionType":"2","RegionNO":"R5","RegionURL":"/esfall/R5","RegionNOWithEqual":"R=5","PRegionAbbr":"FT","RegionX":"116.292785","RegionY":"39.866563","Cycle":[{"CycleName":"北大地","CycleType":"3","CycleNO":"C178","RegionURL":"/esfall/R5C178","CycleNOWithEqual":"C=178","PCycleAbbr":"BDD","Sort":0},{"CycleName":"北京南站","CycleType":"3","CycleNO":"C177","RegionURL":"/esfall/R5C177","CycleNOWithEqual":"C=177","PCycleAbbr":"BJNZ","Sort":0},{"CycleName":"菜户营","CycleType":"3","CycleNO":"C176","RegionURL":"/esfall/R5C176","CycleNOWithEqual":"C=176","PCycleAbbr":"CHY","Sort":0},{"CycleName":"草桥","CycleType":"3","CycleNO":"C175","RegionURL":"/esfall/R5C175","CycleNOWithEqual":"C=175","PCycleAbbr":"CQ","Sort":0},{"CycleName":"成寿寺","CycleType":"3","CycleNO":"C174","RegionURL":"/esfall/R5C174","CycleNOWithEqual":"C=174","PCycleAbbr":"CSS","Sort":0},{"CycleName":"大红门","CycleType":"3","CycleNO":"C173","RegionURL":"/esfall/R5C173","CycleNOWithEqual":"C=173","PCycleAbbr":"DHM","Sort":0},{"CycleName":"丰台其它","CycleType":"3","CycleNO":"C171","RegionURL":"/esfall/R5C171","CycleNOWithEqual":"C=171","PCycleAbbr":"FTQT","Sort":0},{"CycleName":"方庄","CycleType":"3","CycleNO":"C172","RegionURL":"/esfall/R5C172","CycleNOWithEqual":"C=172","PCycleAbbr":"FZ","Sort":0},{"CycleName":"花乡","CycleType":"3","CycleNO":"C169","RegionURL":"/esfall/R5C169","CycleNOWithEqual":"C=169","PCycleAbbr":"HX","Sort":0},{"CycleName":"和义","CycleType":"3","CycleNO":"C170","RegionURL":"/esfall/R5C170","CycleNOWithEqual":"C=170","PCycleAbbr":"HY","Sort":0},{"CycleName":"角门","CycleType":"3","CycleNO":"C168","RegionURL":"/esfall/R5C168","CycleNOWithEqual":"C=168","PCycleAbbr":"JM","Sort":0},{"CycleName":"看丹桥","CycleType":"3","CycleNO":"C167","RegionURL":"/esfall/R5C167","CycleNOWithEqual":"C=167","PCycleAbbr":"KDQ","Sort":0},{"CycleName":"科技园区","CycleType":"3","CycleNO":"C166","RegionURL":"/esfall/R5C166","CycleNOWithEqual":"C=166","PCycleAbbr":"KJYQ","Sort":0},{"CycleName":"卢沟桥","CycleType":"3","CycleNO":"C162","RegionURL":"/esfall/R5C162","CycleNOWithEqual":"C=162","PCycleAbbr":"LGQ","Sort":0},{"CycleName":"刘家窑","CycleType":"3","CycleNO":"C164","RegionURL":"/esfall/R5C164","CycleNOWithEqual":"C=164","PCycleAbbr":"LJY","Sort":0},{"CycleName":"六里桥","CycleType":"3","CycleNO":"C163","RegionURL":"/esfall/R5C163","CycleNOWithEqual":"C=163","PCycleAbbr":"LLQ","Sort":0},{"CycleName":"丽泽","CycleType":"3","CycleNO":"C165","RegionURL":"/esfall/R5C165","CycleNOWithEqual":"C=165","PCycleAbbr":"LZ","Sort":0},{"CycleName":"马家堡","CycleType":"3","CycleNO":"C161","RegionURL":"/esfall/R5C161","CycleNOWithEqual":"C=161","PCycleAbbr":"MJB","Sort":0},{"CycleName":"木樨园","CycleType":"3","CycleNO":"C160","RegionURL":"/esfall/R5C160","CycleNOWithEqual":"C=160","PCycleAbbr":"MXY","Sort":0},{"CycleName":"蒲黄榆","CycleType":"3","CycleNO":"C159","RegionURL":"/esfall/R5C159","CycleNOWithEqual":"C=159","PCycleAbbr":"PHY","Sort":0},{"CycleName":"七里庄","CycleType":"3","CycleNO":"C158","RegionURL":"/esfall/R5C158","CycleNOWithEqual":"C=158","PCycleAbbr":"QLZ","Sort":0},{"CycleName":"青塔","CycleType":"3","CycleNO":"C157","RegionURL":"/esfall/R5C157","CycleNOWithEqual":"C=157","PCycleAbbr":"QT","Sort":0},{"CycleName":"宋家庄","CycleType":"3","CycleNO":"C156","RegionURL":"/esfall/R5C156","CycleNOWithEqual":"C=156","PCycleAbbr":"SJZ","Sort":0},{"CycleName":"太平桥","CycleType":"3","CycleNO":"C155","RegionURL":"/esfall/R5C155","CycleNOWithEqual":"C=155","PCycleAbbr":"TPQ","Sort":0},{"CycleName":"五里店","CycleType":"3","CycleNO":"C154","RegionURL":"/esfall/R5C154","CycleNOWithEqual":"C=154","PCycleAbbr":"WLD","Sort":0},{"CycleName":"西罗园","CycleType":"3","CycleNO":"C153","RegionURL":"/esfall/R5C153","CycleNOWithEqual":"C=153","PCycleAbbr":"XLY","Sort":0},{"CycleName":"右安门外","CycleType":"3","CycleNO":"C151","RegionURL":"/esfall/R5C151","CycleNOWithEqual":"C=151","PCycleAbbr":"YAMW","Sort":0},{"CycleName":"岳各庄","CycleType":"3","CycleNO":"C149","RegionURL":"/esfall/R5C149","CycleNOWithEqual":"C=149","PCycleAbbr":"YGZ","Sort":0},{"CycleName":"洋桥","CycleType":"3","CycleNO":"C152","RegionURL":"/esfall/R5C152","CycleNOWithEqual":"C=152","PCycleAbbr":"YQ","Sort":0},{"CycleName":"玉泉营","CycleType":"3","CycleNO":"C150","RegionURL":"/esfall/R5C150","CycleNOWithEqual":"C=150","PCycleAbbr":"YQY","Sort":0},{"CycleName":"赵公口","CycleType":"3","CycleNO":"C148","RegionURL":"/esfall/R5C148","CycleNOWithEqual":"C=148","PCycleAbbr":"ZGK","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"海淀","RegionType":"2","RegionNO":"R6","RegionURL":"/esfall/R6","RegionNOWithEqual":"R=6","PRegionAbbr":"HD","RegionX":"116.306583","RegionY":"39.966617","Cycle":[{"CycleName":"安宁庄","CycleType":"3","CycleNO":"C103","RegionURL":"/esfall/R6C103","CycleNOWithEqual":"C=103","PCycleAbbr":"ANZ","Sort":0},{"CycleName":"北部新区","CycleType":"3","CycleNO":"C101","RegionURL":"/esfall/R6C101","CycleNOWithEqual":"C=101","PCycleAbbr":"BBXQ","Sort":0},{"CycleName":"白石桥","CycleType":"3","CycleNO":"C102","RegionURL":"/esfall/R6C102","CycleNOWithEqual":"C=102","PCycleAbbr":"BSQ","Sort":0},{"CycleName":"北太平庄","CycleType":"3","CycleNO":"C100","RegionURL":"/esfall/R6C100","CycleNOWithEqual":"C=100","PCycleAbbr":"BTPZ","Sort":0},{"CycleName":"厂洼","CycleType":"3","CycleNO":"C99","RegionURL":"/esfall/R6C99","CycleNOWithEqual":"C=99","PCycleAbbr":"CW","Sort":0},{"CycleName":"定慧寺","CycleType":"3","CycleNO":"C98","RegionURL":"/esfall/R6C98","CycleNOWithEqual":"C=98","PCycleAbbr":"DHS","Sort":0},{"CycleName":"二里庄","CycleType":"3","CycleNO":"C97","RegionURL":"/esfall/R6C97","CycleNOWithEqual":"C=97","PCycleAbbr":"ELZ","Sort":0},{"CycleName":"甘家口","CycleType":"3","CycleNO":"C96","RegionURL":"/esfall/R6C96","CycleNOWithEqual":"C=96","PCycleAbbr":"GJK","Sort":0},{"CycleName":"公主坟","CycleType":"3","CycleNO":"C95","RegionURL":"/esfall/R6C95","CycleNOWithEqual":"C=95","PCycleAbbr":"GZF","Sort":0},{"CycleName":"海淀其它","CycleType":"3","CycleNO":"C94","RegionURL":"/esfall/R6C94","CycleNOWithEqual":"C=94","PCycleAbbr":"HDQT","Sort":0},{"CycleName":"航天桥","CycleType":"3","CycleNO":"C93","RegionURL":"/esfall/R6C93","CycleNOWithEqual":"C=93","PCycleAbbr":"HTQ","Sort":0},{"CycleName":"军博","CycleType":"3","CycleNO":"C92","RegionURL":"/esfall/R6C92","CycleNOWithEqual":"C=92","PCycleAbbr":"JB","Sort":0},{"CycleName":"马甸","CycleType":"3","CycleNO":"C91","RegionURL":"/esfall/R6C91","CycleNOWithEqual":"C=91","PCycleAbbr":"MD","Sort":0},{"CycleName":"牡丹园","CycleType":"3","CycleNO":"C89","RegionURL":"/esfall/R6C89","CycleNOWithEqual":"C=89","PCycleAbbr":"MDY","Sort":0},{"CycleName":"马连洼","CycleType":"3","CycleNO":"C90","RegionURL":"/esfall/R6C90","CycleNOWithEqual":"C=90","PCycleAbbr":"MLW","Sort":0},{"CycleName":"清河","CycleType":"3","CycleNO":"C88","RegionURL":"/esfall/R6C88","CycleNOWithEqual":"C=88","PCycleAbbr":"QH","Sort":0},{"CycleName":"上地","CycleType":"3","CycleNO":"C87","RegionURL":"/esfall/R6C87","CycleNOWithEqual":"C=87","PCycleAbbr":"SD","Sort":0},{"CycleName":"世纪城","CycleType":"3","CycleNO":"C86","RegionURL":"/esfall/R6C86","CycleNOWithEqual":"C=86","PCycleAbbr":"SJC","Sort":0},{"CycleName":"四季青","CycleType":"3","CycleNO":"C84","RegionURL":"/esfall/R6C84","CycleNOWithEqual":"C=84","PCycleAbbr":"SJQ","Sort":0},{"CycleName":"双榆树","CycleType":"3","CycleNO":"C85","RegionURL":"/esfall/R6C85","CycleNOWithEqual":"C=85","PCycleAbbr":"SYS","Sort":0},{"CycleName":"苏州桥","CycleType":"3","CycleNO":"C83","RegionURL":"/esfall/R6C83","CycleNOWithEqual":"C=83","PCycleAbbr":"SZQ","Sort":0},{"CycleName":"田村","CycleType":"3","CycleNO":"C82","RegionURL":"/esfall/R6C82","CycleNOWithEqual":"C=82","PCycleAbbr":"TC","Sort":0},{"CycleName":"五道口","CycleType":"3","CycleNO":"C78","RegionURL":"/esfall/R6C78","CycleNOWithEqual":"C=78","PCycleAbbr":"WDK","Sort":0},{"CycleName":"魏公村","CycleType":"3","CycleNO":"C79","RegionURL":"/esfall/R6C79","CycleNOWithEqual":"C=79","PCycleAbbr":"WGC","Sort":0},{"CycleName":"五棵松","CycleType":"3","CycleNO":"C77","RegionURL":"/esfall/R6C77","CycleNOWithEqual":"C=77","PCycleAbbr":"WKS","Sort":0},{"CycleName":"万柳","CycleType":"3","CycleNO":"C81","RegionURL":"/esfall/R6C81","CycleNOWithEqual":"C=81","PCycleAbbr":"WL","Sort":0},{"CycleName":"万寿路","CycleType":"3","CycleNO":"C80","RegionURL":"/esfall/R6C80","CycleNOWithEqual":"C=80","PCycleAbbr":"WSL","Sort":0},{"CycleName":"西北旺","CycleType":"3","CycleNO":"C76","RegionURL":"/esfall/R6C76","CycleNOWithEqual":"C=76","PCycleAbbr":"XBW","Sort":0},{"CycleName":"西二旗","CycleType":"3","CycleNO":"C75","RegionURL":"/esfall/R6C75","CycleNOWithEqual":"C=75","PCycleAbbr":"XEQ","Sort":0},{"CycleName":"新街口","CycleType":"3","CycleNO":"C235","RegionURL":"/esfall/R6C235","CycleNOWithEqual":"C=235","PCycleAbbr":"XJK1","Sort":0},{"CycleName":"西山","CycleType":"3","CycleNO":"C73","RegionURL":"/esfall/R6C73","CycleNOWithEqual":"C=73","PCycleAbbr":"XS","Sort":0},{"CycleName":"西山别墅","CycleType":"3","CycleNO":"C72","RegionURL":"/esfall/R6C72","CycleNOWithEqual":"C=72","PCycleAbbr":"XSBS","Sort":0},{"CycleName":"西三旗","CycleType":"3","CycleNO":"C74","RegionURL":"/esfall/R6C74","CycleNOWithEqual":"C=74","PCycleAbbr":"XSQ","Sort":0},{"CycleName":"小西天","CycleType":"3","CycleNO":"C70","RegionURL":"/esfall/R6C70","CycleNOWithEqual":"C=70","PCycleAbbr":"XXT","Sort":0},{"CycleName":"学院路","CycleType":"3","CycleNO":"C69","RegionURL":"/esfall/R6C69","CycleNOWithEqual":"C=69","PCycleAbbr":"XYL","Sort":0},{"CycleName":"西直门","CycleType":"3","CycleNO":"C71","RegionURL":"/esfall/R6C71","CycleNOWithEqual":"C=71","PCycleAbbr":"XZM","Sort":0},{"CycleName":"颐和园","CycleType":"3","CycleNO":"C68","RegionURL":"/esfall/R6C68","CycleNOWithEqual":"C=68","PCycleAbbr":"YHY","Sort":0},{"CycleName":"圆明园","CycleType":"3","CycleNO":"C66","RegionURL":"/esfall/R6C66","CycleNOWithEqual":"C=66","PCycleAbbr":"YMY","Sort":0},{"CycleName":"玉泉路","CycleType":"3","CycleNO":"C67","RegionURL":"/esfall/R6C67","CycleNOWithEqual":"C=67","PCycleAbbr":"YQL","Sort":0},{"CycleName":"知春路","CycleType":"3","CycleNO":"C64","RegionURL":"/esfall/R6C64","CycleNOWithEqual":"C=64","PCycleAbbr":"ZCL","Sort":0},{"CycleName":"中关村","CycleType":"3","CycleNO":"C63","RegionURL":"/esfall/R6C63","CycleNOWithEqual":"C=63","PCycleAbbr":"ZGC","Sort":0},{"CycleName":"皂君庙","CycleType":"3","CycleNO":"C65","RegionURL":"/esfall/R6C65","CycleNOWithEqual":"C=65","PCycleAbbr":"ZJM","Sort":0},{"CycleName":"紫竹桥","CycleType":"3","CycleNO":"C62","RegionURL":"/esfall/R6C62","CycleNOWithEqual":"C=62","PCycleAbbr":"ZZQ","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"平谷","RegionType":"2","RegionNO":"R13","RegionURL":"/esfall/R13","RegionNOWithEqual":"R=13","PRegionAbbr":"PG","RegionX":"117.127379","RegionY":"40.147282","Cycle":[{"CycleName":"平谷其他","CycleType":"3","CycleNO":"C245","RegionURL":"/esfall/R13C245","CycleNOWithEqual":"C=245","PCycleAbbr":"PGQT","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"石景山","RegionType":"2","RegionNO":"R10","RegionURL":"/esfall/R10","RegionNOWithEqual":"R=10","PRegionAbbr":"SJS","RegionX":"116.228969","RegionY":"39.91196","Cycle":[{"CycleName":"八角","CycleType":"3","CycleNO":"C223","RegionURL":"/esfall/R10C223","CycleNOWithEqual":"C=223","PCycleAbbr":"BJ","Sort":0},{"CycleName":"古城","CycleType":"3","CycleNO":"C222","RegionURL":"/esfall/R10C222","CycleNOWithEqual":"C=222","PCycleAbbr":"GC","Sort":0},{"CycleName":"鲁谷","CycleType":"3","CycleNO":"C220","RegionURL":"/esfall/R10C220","CycleNOWithEqual":"C=220","PCycleAbbr":"LG","Sort":0},{"CycleName":"老山","CycleType":"3","CycleNO":"C221","RegionURL":"/esfall/R10C221","CycleNOWithEqual":"C=221","PCycleAbbr":"LS","Sort":0},{"CycleName":"苹果园","CycleType":"3","CycleNO":"C219","RegionURL":"/esfall/R10C219","CycleNOWithEqual":"C=219","PCycleAbbr":"PGY","Sort":0},{"CycleName":"石景山其它","CycleType":"3","CycleNO":"C218","RegionURL":"/esfall/R10C218","CycleNOWithEqual":"C=218","PCycleAbbr":"SJSQT","Sort":0},{"CycleName":"玉泉路","CycleType":"3","CycleNO":"C216","RegionURL":"/esfall/R10C216","CycleNOWithEqual":"C=216","PCycleAbbr":"YQL","Sort":0},{"CycleName":"杨庄","CycleType":"3","CycleNO":"C217","RegionURL":"/esfall/R10C217","CycleNOWithEqual":"C=217","PCycleAbbr":"YZ","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"顺义","RegionType":"2","RegionNO":"R11","RegionURL":"/esfall/R11","RegionNOWithEqual":"R=11","PRegionAbbr":"SY","RegionX":"116.659581","RegionY":"40.138929","Cycle":[{"CycleName":"后沙峪","CycleType":"3","CycleNO":"C230","RegionURL":"/esfall/R11C230","CycleNOWithEqual":"C=230","PCycleAbbr":"HSY","Sort":0},{"CycleName":"李桥","CycleType":"3","CycleNO":"C229","RegionURL":"/esfall/R11C229","CycleNOWithEqual":"C=229","PCycleAbbr":"LQ","Sort":0},{"CycleName":"马坡","CycleType":"3","CycleNO":"C228","RegionURL":"/esfall/R11C228","CycleNOWithEqual":"C=228","PCycleAbbr":"MP","Sort":0},{"CycleName":"顺义城","CycleType":"3","CycleNO":"C227","RegionURL":"/esfall/R11C227","CycleNOWithEqual":"C=227","PCycleAbbr":"SYC","Sort":0},{"CycleName":"顺义其它","CycleType":"3","CycleNO":"C226","RegionURL":"/esfall/R11C226","CycleNOWithEqual":"C=226","PCycleAbbr":"SYQT","Sort":0},{"CycleName":"天竺","CycleType":"3","CycleNO":"C225","RegionURL":"/esfall/R11C225","CycleNOWithEqual":"C=225","PCycleAbbr":"TZ","Sort":0},{"CycleName":"中央别墅区","CycleType":"3","CycleNO":"C224","RegionURL":"/esfall/R11C224","CycleNOWithEqual":"C=224","PCycleAbbr":"ZYBSQ","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"通州","RegionType":"2","RegionNO":"R9","RegionURL":"/esfall/R9","RegionNOWithEqual":"R=9","PRegionAbbr":"TZ","RegionX":"116.66303","RegionY":"39.917936","Cycle":[{"CycleName":"北关","CycleType":"3","CycleNO":"C215","RegionURL":"/esfall/R9C215","CycleNOWithEqual":"C=215","PCycleAbbr":"BG","Sort":0},{"CycleName":"果园","CycleType":"3","CycleNO":"C214","RegionURL":"/esfall/R9C214","CycleNOWithEqual":"C=214","PCycleAbbr":"GY","Sort":0},{"CycleName":"九棵树","CycleType":"3","CycleNO":"C213","RegionURL":"/esfall/R9C213","CycleNOWithEqual":"C=213","PCycleAbbr":"JKS","Sort":0},{"CycleName":"临河里","CycleType":"3","CycleNO":"C211","RegionURL":"/esfall/R9C211","CycleNOWithEqual":"C=211","PCycleAbbr":"LHL","Sort":0},{"CycleName":"潞苑","CycleType":"3","CycleNO":"C210","RegionURL":"/esfall/R9C210","CycleNOWithEqual":"C=210","PCycleAbbr":"LY","Sort":0},{"CycleName":"梨园","CycleType":"3","CycleNO":"C212","RegionURL":"/esfall/R9C212","CycleNOWithEqual":"C=212","PCycleAbbr":"LY","Sort":0},{"CycleName":"马驹桥","CycleType":"3","CycleNO":"C209","RegionURL":"/esfall/R9C209","CycleNOWithEqual":"C=209","PCycleAbbr":"MJQ","Sort":0},{"CycleName":"乔庄","CycleType":"3","CycleNO":"C208","RegionURL":"/esfall/R9C208","CycleNOWithEqual":"C=208","PCycleAbbr":"QZ","Sort":0},{"CycleName":"通州北苑","CycleType":"3","CycleNO":"C207","RegionURL":"/esfall/R9C207","CycleNOWithEqual":"C=207","PCycleAbbr":"TZBY","Sort":0},{"CycleName":"通州其它","CycleType":"3","CycleNO":"C206","RegionURL":"/esfall/R9C206","CycleNOWithEqual":"C=206","PCycleAbbr":"TZQT","Sort":0},{"CycleName":"武夷花园","CycleType":"3","CycleNO":"C205","RegionURL":"/esfall/R9C205","CycleNOWithEqual":"C=205","PCycleAbbr":"WYHY","Sort":0},{"CycleName":"新华大街","CycleType":"3","CycleNO":"C204","RegionURL":"/esfall/R9C204","CycleNOWithEqual":"C=204","PCycleAbbr":"XHDJ","Sort":0},{"CycleName":"玉桥","CycleType":"3","CycleNO":"C203","RegionURL":"/esfall/R9C203","CycleNOWithEqual":"C=203","PCycleAbbr":"YQ","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0},{"RegionName":"西城","RegionType":"2","RegionNO":"R7","RegionURL":"/esfall/R7","RegionNOWithEqual":"R=7","PRegionAbbr":"XC","RegionX":"116.373273","RegionY":"39.919707","Cycle":[{"CycleName":"白纸坊","CycleType":"3","CycleNO":"C147","RegionURL":"/esfall/R7C147","CycleNOWithEqual":"C=147","PCycleAbbr":"BZF","Sort":0},{"CycleName":"长椿街","CycleType":"3","CycleNO":"C125","RegionURL":"/esfall/R7C125","CycleNOWithEqual":"C=125","PCycleAbbr":"CCJ","Sort":0},{"CycleName":"车公庄","CycleType":"3","CycleNO":"C145","RegionURL":"/esfall/R7C145","CycleNOWithEqual":"C=145","PCycleAbbr":"CGZ","Sort":0},{"CycleName":"菜户营","CycleType":"3","CycleNO":"C146","RegionURL":"/esfall/R7C146","CycleNOWithEqual":"C=146","PCycleAbbr":"CHY","Sort":0},{"CycleName":"地安门","CycleType":"3","CycleNO":"C143","RegionURL":"/esfall/R7C143","CycleNOWithEqual":"C=143","PCycleAbbr":"DAM","Sort":0},{"CycleName":"德胜门","CycleType":"3","CycleNO":"C144","RegionURL":"/esfall/R7C144","CycleNOWithEqual":"C=144","PCycleAbbr":"DSM","Sort":0},{"CycleName":"阜成门","CycleType":"3","CycleNO":"C142","RegionURL":"/esfall/R7C142","CycleNOWithEqual":"C=142","PCycleAbbr":"FCM","Sort":0},{"CycleName":"广安门","CycleType":"3","CycleNO":"C140","RegionURL":"/esfall/R7C140","CycleNOWithEqual":"C=140","PCycleAbbr":"GAM","Sort":0},{"CycleName":"官园","CycleType":"3","CycleNO":"C141","RegionURL":"/esfall/R7C141","CycleNOWithEqual":"C=141","PCycleAbbr":"GY","Sort":0},{"CycleName":"金融街","CycleType":"3","CycleNO":"C139","RegionURL":"/esfall/R7C139","CycleNOWithEqual":"C=139","PCycleAbbr":"JRJ","Sort":0},{"CycleName":"六铺炕","CycleType":"3","CycleNO":"C138","RegionURL":"/esfall/R7C138","CycleNOWithEqual":"C=138","PCycleAbbr":"LPK","Sort":0},{"CycleName":"马甸","CycleType":"3","CycleNO":"C137","RegionURL":"/esfall/R7C137","CycleNOWithEqual":"C=137","PCycleAbbr":"MD","Sort":0},{"CycleName":"马连道","CycleType":"3","CycleNO":"C136","RegionURL":"/esfall/R7C136","CycleNOWithEqual":"C=136","PCycleAbbr":"MLD","Sort":0},{"CycleName":"木樨地","CycleType":"3","CycleNO":"C135","RegionURL":"/esfall/R7C135","CycleNOWithEqual":"C=135","PCycleAbbr":"MXD","Sort":0},{"CycleName":"牛街","CycleType":"3","CycleNO":"C134","RegionURL":"/esfall/R7C134","CycleNOWithEqual":"C=134","PCycleAbbr":"NJ","Sort":0},{"CycleName":"天宁寺","CycleType":"3","CycleNO":"C132","RegionURL":"/esfall/R7C132","CycleNOWithEqual":"C=132","PCycleAbbr":"TNS","Sort":0},{"CycleName":"陶然亭","CycleType":"3","CycleNO":"C133","RegionURL":"/esfall/R7C133","CycleNOWithEqual":"C=133","PCycleAbbr":"TRT","Sort":0},{"CycleName":"西单","CycleType":"3","CycleNO":"C131","RegionURL":"/esfall/R7C131","CycleNOWithEqual":"C=131","PCycleAbbr":"XD","Sort":0},{"CycleName":"新街口","CycleType":"3","CycleNO":"C129","RegionURL":"/esfall/R7C129","CycleNOWithEqual":"C=129","PCycleAbbr":"XJK","Sort":0},{"CycleName":"西四","CycleType":"3","CycleNO":"C130","RegionURL":"/esfall/R7C130","CycleNOWithEqual":"C=130","PCycleAbbr":"XS","Sort":0},{"CycleName":"宣武门","CycleType":"3","CycleNO":"C128","RegionURL":"/esfall/R7C128","CycleNOWithEqual":"C=128","PCycleAbbr":"XWM","Sort":0},{"CycleName":"右安门内","CycleType":"3","CycleNO":"C127","RegionURL":"/esfall/R7C127","CycleNOWithEqual":"C=127","PCycleAbbr":"YAMN","Sort":0},{"CycleName":"月坛","CycleType":"3","CycleNO":"C126","RegionURL":"/esfall/R7C126","CycleNOWithEqual":"C=126","PCycleAbbr":"YT","Sort":0}],"RegionID":null,"SaleHouseCount":null,"Sort":0}]');
    GLOBAL.Load(_scriptList, '', function () {
        GLOBAL.View.HouseSecondList.Init();
    });
</script>

<!--footer-->
<script>

    //$(function() { //操作分析添加到页面的iframe[name="215474"]隐藏
    //    var timer360 = null;
    //    timer360 = setInterval(function() {
    //        console.log(1);
    //        if ($('[name="215474"]').length == 1) {
    //            $('[name="215474"]').css('display', 'none');
    //            clearInterval(timer360);
    //        }
    //    }, 100);

    //})
</script>
<script>
    window.onload = function () {
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
            window.location = '../../mt/imp/browser.html';
        }
    }
    

    
    
</script>
<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>

<script type="text/javascript">

    var aacc =  '<%=request.getSession().getAttribute("name")%>';


 /*   if(null == aacc){
        $("#hideuser").show();
        $("#showuser").hide();
    }
    if (aacc != null){
        $("#showuser").show();
        $("#hideuser").hide();
    }*/






    function gerenziliaoym() {

location.href="<%=request.getContextPath()%>/userjb.jsp?name="+aacc;

    }

</script>
</body>

</html>
