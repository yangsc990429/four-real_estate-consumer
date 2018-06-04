<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2018/5/29
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="x-ua-compatible" content="ie=7" />
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
    <meta name="keywords" content="新房,二手房,商铺,写字楼,出租,买房,租房,卖房,装修,北京房产网">
    <meta name="description" content="北京地区首选互联网房产信息服务商-北京房产网，为广大用户提供最佳找房体验,立足北京房产网络行业，同时也为开发商、中介公司、经纪人和业主提供高效的网络推广平台，为装修建材等公司提供了更多商机。">
    <title>友价房产网T601_北京二手房交易网_北京新楼盘_北京租房_北京房地产</title>
    <link href="css/basic.css?vt=1527730746" rel="stylesheet" type="text/css" />
    <link href="css/index.css?vt=1527730746" rel="stylesheet" type="text/css" />
    <link href="mt/jquery.flexslider.css" rel="stylesheet" type="text/css" >
    <link rel="shortcut icon" href="img/favicon.ico" />

    <script language="javascript" src="js/basic.js?vt=1527730746"></script>
    <script language="javascript" src="js/index.js?vt=1527730746"></script>
    <script type ="text/javascript" src="js/jquery.min.js"></script>
    <script language="javascript" src="mt/jquery.SuperSlide.2.1.1.js"></script>
    <script language="javascript" src="mt/jquery.SuperSlide.2.1.1.source.js"></script>

    <!-- BOOTSTRAP STYLES-->
    <link href="<%=request.getContextPath()%>/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="<%=request.getContextPath()%>/assets/css/font-awesome.css" rel="stylesheet" />
    <!--CUSTOM BASIC STYLES-->
    <link href="<%=request.getContextPath()%>/assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="<%=request.getContextPath()%>/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

    <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
    <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap TreeView css -->
    <link href="<%=request.getContextPath() %>/js/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">
    <!-- Bootstrap addTabs css -->
    <link href="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">
    <!-- Bootstrap table css -->

    <link href="<%=request.getContextPath() %>/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">

    <!-- bootstrap-datetimepicker css -->
    <link href="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <!-- bootstrap-dialog css -->
    <link href="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
    <!-- bootstrap-fileinput css -->
    <link href="<%=request.getContextPath() %>/js/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">


    <base target="_blank">
    <script language="javascript">
        if(is_mobile()) {document.location.href= 'http://fcwt601.yj99.cn/m/';}
    </script>

</head>
<body>
<!--对联广告判断开始-->
<!--对联广告判断结束-->

<!--切换B-->
<div class="yjcode">

    <div class="qhsearch" style="background-color:#494949 ">
        <form name="f1" method="post" onSubmit="return indextj()">
            <ul class="u1">
                <li class="l1 l11" id="sercap1" onMouseOver="serover(1)">资讯</li>
                <li class="l1" id="sercap2" onMouseOver="serover(2)">装修情况</li>
                <li class="l1" id="sercap3" onMouseOver="serover(3)">租房</li>
                <li class="l1" id="sercap4" onMouseOver="serover(4)">售房</li>
                <li class="l1" id="sercap5" onMouseOver="serover(5)">找中介</li>
            </ul>
            <div class="sermain" id="sermain1">
                <ul class="u2">
                    <li class="l1 l11"></li>
                    <li class="l2"><input value="请输入关键词" onFocus="fstxtfocus(19)" onBlur="fstxtblur(19)" id="fstxt19" name="fstxt19" type="text" /></li>
                    <li class="l3"><input type="image" src="mt/imp/search.png" width="48" height="49" /></li>
                    <li class="l4"><a href="http://fcwt601.yj99.cn/map/zf/" target="_blank"><img border="0" src="mt/imp/ditu.png" width="107" height="49" /></a></li>
                </ul>
            </div>
            <div class="sermain" id="sermain2" style="display:none;">
                <ul class="u2">
                    <li class="l1 l12"></li>
                    <li class="l2"><input value="请输入关键词" onFocus="fstxtfocus(2)" onBlur="fstxtblur(2)" id="fstxt2" name="fstxt2" type="text" /></li>
                    <li class="l3"><input type="image" src="mt/imp/search.png" width="48" height="49" /></li>
                    <li class="l4"><a href="http://fcwt601.yj99.cn/map/zf/" target="_blank"><img border="0" src="mt/imp/ditu.png" width="107" height="49" /></a></li>
                </ul>
            </div>
            <div class="sermain" id="sermain3" style="display:none;">
                <ul class="u2">
                    <li class="l1 l13"></li>
                    <li class="l2"><input value="请输入关键词" onFocus="fstxtfocus(1)" name="fstxt1" id="fstxt1" onBlur="fstxtblur(1)" type="text" /></li>
                    <li class="l3"><input type="image" src="mt/imp/search.png" width="48" height="49" /></li>
                    <li class="l4"><a href="http://fcwt601.yj99.cn/map/zf/" target="_blank"><img border="0" src="mt/imp/ditu.png" width="107" height="49" /></a></li>
                </ul>
            </div>
            <div class="sermain" id="sermain4" style="display:none;">
                <ul class="u2">
                    <li class="l1 l14"></li>
                    <li class="l2"><input value="请输入关键词" onFocus="fstxtfocus(10)" name="fstxt10" id="fstxt10" onBlur="fstxtblur(10)" type="text" /></li>
                    <li class="l3"><input type="image" src="mt/imp/search.png" width="48" height="49" /></li>
                    <li class="l4"></li>
                </ul>
            </div>
            <div class="sermain" id="sermain5" style="display:none;">
                <ul class="u2">
                    <li class="l1 l15"></li>
                    <li class="l2"><input value="请输入关键词" onFocus="fstxtfocus(9)" name="fstxt9" id="fstxt9" onBlur="fstxtblur(9)" type="text" /></li>
                    <li class="l3"><input type="image" src="mt/imp/search.png" width="48" height="49" /></li>
                    <li class="l4"></li>
                </ul>
            </div>
        </form>
    </div>

    <div class="banner" id="banner" >
        <a href="http://" class="d1" style="background:url(mt/imp/e9edc32ca8c96f4edc5edef796f759bf.jpg) center no-repeat;"></a>
        <div class="d2" id="banner_id">
            <ul style="margin-left:-43px;">
                <li></li> </ul>
        </div>
    </div>


    <div class="daoh">
        <div class="logo"><img src="mt/imp/logo1.png" width="158" height="57" /></div>
        <div class="daoh1" style="background-color:#494949">
            <div class="d1" ><span id="lhf"> </span><button class="btn btn-link btn-sm" data-toggle="modal" data-target="#myModal1" onclick="updatevip()">登录</button> <button class="btn btn-link btn-sm" data-toggle="modal" data-target="#myModal" onclick="zhuce()">立即注册</button></div>

            <div class="d2">
                <ul class="topmenu">
                    <li><a  class="a1" href="http://fcwt601.yj99.cn/" >首页</a></li>
                    <li><a href="http://fcwt601.yj99.cn/lptuan/tuanlist.html" class="a1">买房团</a></li>

                    <li class="hover">
                        <a  class="a1" href="http://fcwt601.yj99.cn/loupan/" >新楼盘</a>
                        <div class="nav-list">
                            <dd>
                                <i></i>
                                <dl><a href="http://fcwt601.yj99.cn/loupan/" >全部</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/lphuxing/huxinglist.html" class="a2">户型找房</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/lpjg/" class="a2">价格走势</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/lpnews/newslist.html" class="a2">楼盘优惠</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/lpphoto/photolist.html" class="a2">图解楼盘</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/lpvideo/videolist.html" class="a2">精彩视频</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/lpjob/joblist.html" class="a2">楼盘招聘</a></dl>
                            </dd>
                        </div>
                    </li>

                    <li class="hover">
                        <a  class="a1" href="http://fcwt601.yj99.cn/second/" >二手房</a>
                        <div class="nav-list">
                            <dd>
                                <i></i>
                                <dl><a href="http://fcwt601.yj99.cn/second/" >全部</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/second/" class="a2">房源列表</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/xq/" class="a2">小区找房</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/jjr/jjrlist.html" class="a2">找经纪人</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/zj/zjlist.html" class="a2">中介公司</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/qiugou/" class="a2">求购信息</a></dl>
                            </dd>
                        </div>
                    </li>

                    <li class="hover">
                        <a  class="a1" href="http://fcwt601.yj99.cn/rent/" >租 房</a>
                        <div class="nav-list">
                            <dd>
                                <i></i>
                                <dl><a href="http://fcwt601.yj99.cn/rent/" class="a2">房源列表</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/xq/" class="a2">小区找房</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/jjr/jjrlist.html" class="a2">找经纪人</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/zj/zjlist.html" class="a2">中介公司</a></dl>
                                <dl><a href="http://fcwt601.yj99.cn/qiuzu/" class="a2">求租信息</a></dl>
                            </dd>
                        </div>
                    </li>

                    <li><a href="http://fcwt601.yj99.cn/news/" class="a1">房产资讯</a></li>

                </ul>
            </div>

        </div>
    </div>

    <script language="javascript">
        banner();
        jQuery(".topmenu").slide({
            type:"menu", //效果类型
            titCell:"li", // 鼠标触发对象
            targetCell:".nav-list", // 效果对象，必须被titCell包含
            effect:"slideDown",//下拉效果
            delayTime:300, // 效果时间
            triggerTime:0, //鼠标延迟触发时间
            returnDefault:true  //返回默认状态
        });
    </script>



</div>
<!--切换E-->

<div class="yjcode">

    <!--中间B-->
    <div class="zhonj">
        <ul class="u1">
            <li class="l1">新房</li>
            <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/"><img border="0" src="mt/imp/z1.jpg" width="228" height="231" /></a></li>
            <li class="l3">专业真实的新房信息，更新及时<br><a href="http://fcwt601.yj99.cn/loupan/">看新房</a></li>
        </ul>
        <ul class="u1">
            <li class="l1">业主委托</li>
            <li class="l2"><a href="http://fcwt601.yj99.cn/weituo/"><img border="0" src="mt/imp/z2.jpg" width="228" height="231" /></a></li>
            <li class="l3">优质经纪人正在时刻准备着<br><a href="http://fcwt601.yj99.cn/weituo/">立即委托</a></li>
        </ul>
        <ul class="u1">
            <li class="l1">金融贷款</li>
            <li class="l2"><a href="http://fcwt601.yj99.cn/dai/"><img border="0" src="mt/imp/z3.jpg" width="228" height="231" /></a></li>
            <li class="l3">一站式金融贷款服务让您无忧<br><a href="http://fcwt601.yj99.cn/dai/">去申请</a></li>
        </ul>
    </div>
    <!--中间E-->


    <div class="ad1"><a href="http://www.yj99.cn/product/view32.html" target=_blank><img alt="首页资讯上方横幅" border=0 src=http://fcwt601.yj99.cn/ad/1507018759ad52.jpg></a></div><!--资讯B-->

    <!--楼盘B-->
    <div class="lp fontyh">
        <ul class="u1">
            <li class="l0 l1" id="lpcap0" onMouseOver="lpcapover(0)">热门楼盘</li>
            <li class="l0" id="lpcap1" onMouseOver="lpcapover(1)">经济住宅</li>
            <li class="l0" id="lpcap2" onMouseOver="lpcapover(2)">海景房</li>
            <li class="l0" id="lpcap3" onMouseOver="lpcapover(3)">学区房</li>
        </ul>

        <div class="lpmain" id="lpmain0">
            <ul class="u2 u21">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view2.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-2.jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view2.html" target="_blank">北辰香麓</a> [海淀]</li>
                <li class="l3">均价：<strong>6000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview2.html" title="购40~60㎡SOHO存2万抵8万" target="_blank">购40~60㎡SOHO存2万抵8万</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview2.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view7.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1.jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view7.html" target="_blank">华业东方玫瑰</a> [通州]</li>
                <li class="l3">均价：<strong>23000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview3.html" title="2014年上半年推新全款享96折优惠" target="_blank">2014年上半年推新全款享96折优惠</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview3.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view9.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1 (5).jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view9.html" target="_blank">首开常青藤</a> [朝阳]</li>
                <li class="l3">均价：<strong>42000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview4.html" title="3万享特供房补贴" target="_blank">3万享特供房补贴</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview4.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view10.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1 (1).jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view10.html" target="_blank">燕西华府</a> [丰台]</li>
                <li class="l3">均价：<strong>40000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview5.html" title="亿城燕西华府在售300-360平联排别墅" target="_blank">亿城燕西华府在售300-360平联排别墅</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview5.html')" value="报名" class="fontyh" /></li>
            </ul>
        </div>

        <div class="lpmain" id="lpmain1" style="display:none;">
            <ul class="u2 u21">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view7.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1.jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view7.html" target="_blank">华业东方玫瑰</a> [通州]</li>
                <li class="l3">均价：<strong>23000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview3.html" title="2014年上半年推新全款享96折优惠" target="_blank">2014年上半年推新全款享96折优惠</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview3.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view9.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1 (5).jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view9.html" target="_blank">首开常青藤</a> [朝阳]</li>
                <li class="l3">均价：<strong>42000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview4.html" title="3万享特供房补贴" target="_blank">3万享特供房补贴</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview4.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view10.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1 (1).jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view10.html" target="_blank">燕西华府</a> [丰台]</li>
                <li class="l3">均价：<strong>40000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview5.html" title="亿城燕西华府在售300-360平联排别墅" target="_blank">亿城燕西华府在售300-360平联排别墅</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview5.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view14.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-3.jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view14.html" target="_blank">西单上国阙</a> [西城]</li>
                <li class="l3">均价：<strong>130000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview9.html" title="西单上国阙均价100000元/平米，起价90000元/平米，2梯3户，送精装修." target="_blank">西单上国阙均价100000元/平米，起价90000元</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview9.html')" value="报名" class="fontyh" /></li>
            </ul>
        </div>
        <div class="lpmain" id="lpmain2" style="display:none;">
            <ul class="u2 u21">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view2.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-2.jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view2.html" target="_blank">北辰香麓</a> [海淀]</li>
                <li class="l3">均价：<strong>6000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview2.html" title="购40~60㎡SOHO存2万抵8万" target="_blank">购40~60㎡SOHO存2万抵8万</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview2.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view10.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1 (1).jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view10.html" target="_blank">燕西华府</a> [丰台]</li>
                <li class="l3">均价：<strong>40000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview5.html" title="亿城燕西华府在售300-360平联排别墅" target="_blank">亿城燕西华府在售300-360平联排别墅</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview5.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view11.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1 (2).jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view11.html" target="_blank">绿地中央广场·云谷</a> [昌平]</li>
                <li class="l3">均价：<strong>28500</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview6.html" title="绿地中央广场·云谷预计30000元/平" target="_blank">绿地中央广场·云谷预计30000元/平</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview6.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view12.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1 (3).jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view12.html" target="_blank">和成璟园</a> [大兴]</li>
                <li class="l3">均价：<strong>33000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview7.html" title="和成璟园预计2014年6月实体楼样板间开放" target="_blank">和成璟园预计2014年6月实体楼样板间开放</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview7.html')" value="报名" class="fontyh" /></li>
            </ul>
        </div>
        <div class="lpmain" id="lpmain3" style="display:none;">
            <ul class="u2 u21">
                <li class="l1"><a href="loupan/view10.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1 (3).jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="loupan/view10.html" target="_blank">燕西华府</a> [丰台]</li>
                <li class="l3">均价：<strong>40000</strong>元/㎡</li>
                <li class="l4"><a href="loupan/tuanview5.html" title="亿城燕西华府在售300-360平联排别墅" target="_blank">亿城燕西华府在售300-360平联排别墅</a></li>
                <li class="l5"><input type="button" onClick="gourl('loupan/tuanview5.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view13.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-4.jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view13.html" target="_blank">红杉公馆</a> [通州]</li>
                <li class="l3">均价：<strong>24000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview8.html" title="红杉公馆邻铁刚需盘特价房限时抢" target="_blank">红杉公馆邻铁刚需盘特价房限时抢</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview8.html')" value="报名" class="fontyh" /></li>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view14.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-3.jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view14.html" target="_blank">西单上国阙</a> [西城]</li>
                <li class="l3">均价：<strong>130000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview9.html" title="西单上国阙均价100000元/平米，起价90000元/平米，2梯3户，送精装修." target="_blank">西单上国阙均价100000元/平米，起价90000元</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview9.html')" value="报名" class="fontyh" /></li>
            </ul>
            </ul>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/loupan/view15.html" target="_blank"><img border="0" src="upload/3/f/1403677622lp3/home-1 (6).jpg" width="278" height="185" /></a></li>
                <li class="l2"><a href="http://fcwt601.yj99.cn/loupan/view15.html" target="_blank">Naga上院</a> [东城]</li>
                <li class="l3">均价：<strong>80000</strong>元/㎡</li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/loupan/tuanview10.html" title="Naga上院 位于东直门内大街9号均价为80000元/平方米精装修，现房入住" target="_blank">Naga上院 位于东直门内大街9号均价为80000元</a></li>
                <li class="l5"><input type="button" onClick="gourl('http://fcwt601.yj99.cn/loupan/tuanview10.html')" value="报名" class="fontyh" /></li>
            </ul>
        </div>

    </div>


<%--
    <div class="ad1"><a href="http://www.yj99.cn/product/view32.html" target=_blank><img alt="首页资讯上方横幅" border=0 src=http://fcwt601.yj99.cn/ad/1507018759ad52.jpg></a></div><!--资讯B-->
--%>
    <div class="news">

        <div class="d1">
            <ul class="u1"><li class="l1">房产资讯</li><li class="l2">/楼市风云，投资指南</li></ul>
            <div class="fl">
                <a href="http://fcwt601.yj99.cn/news/newslist_j25v.html">房产资讯</a>
                <a href="http://fcwt601.yj99.cn/news/newslist_j26v.html">商业速递</a>
                <a href="http://fcwt601.yj99.cn/news/newslist_j27v.html">二手资讯</a>
                <a href="http://fcwt601.yj99.cn/news/newslist_j52v.html">装修课堂</a>
            </div>
            <ul class="u2">
                <li class="l1"><a href="http://fcwt601.yj99.cn/news/txtlist_i113v.html"><img src="upload/3/f/1403677622lp3/0004500001514381047tp-1.jpg" width="210" height="110"><span>初创公司办公选址，必须考虑的9大问题</span></a></li>
                <li class="l1"><a href="http://fcwt601.yj99.cn/news/txtlist_i112v.html"><img src="upload/3/f/1403677622lp3/1467356604-1.jpg" width="210" height="110"><span>“银十”末周8盘入市 楼市回暖四季度房价或</span></a></li>
                <li class="l1"><a href="http://fcwt601.yj99.cn/news/txtlist_i92v.html"><img src="upload/3/f/1403677622lp3/1428381707-1.jpg" width="210" height="110"><span>城建万科城:三好住宅一次选择 一生乐享</span></a></li>
                <li class="l1"><a href="http://fcwt601.yj99.cn/news/txtlist_i91v.html"><img src="upload/3/f/1403677622lp3/1416977109-1.jpg" width="210" height="110"><span>20家标杆房企11月拿地金额创8个月新高</span></a></li>
            </ul>
        </div>

        <div class="d2">
            <ul class="u1"><li class="l1">最新房产资讯</li><li class="l2"><a href="http://fcwt601.yj99.cn/news/">更多资讯</a></li></ul>
            <ul class="u2">
                <li class="l1"><img src="mt/imp/zx.png" width="70" height="70" /></li>
                <li class="l2">
                    <a href="http://fcwt601.yj99.cn/news/txtlist_i113v.html">初创公司办公选址，必须考虑的9大问题</a><br>
                    <a href="http://fcwt601.yj99.cn/news/txtlist_i112v.html">“银十”末周8盘入市 楼市回暖四季度房价或上扬</a><br>
                    <a href="http://fcwt601.yj99.cn/news/txtlist_i111v.html">2016楼市走势预测：全国14城风险或加剧 投资注意</a><br>
                </li>
                <li class="l3"><span>1</span></li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/news/txtlist_i110v.html">恭喜!北京两盘抢先进驻搜房免费开放平台</a></li>
                <li class="l5">1.01</li>
                <li class="l3"><span>2</span></li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/news/txtlist_i109v.html">成本飙升倒逼房企拥抱互联网工程电商</a></li>
                <li class="l5">1.01</li>
                <li class="l3"><span>3</span></li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/news/txtlist_i108v.html">丰台南苑83.4亿再卖地 楼面价高达5.6万/平米</a></li>
                <li class="l5">1.01</li>
                <li class="l3"><span>4</span></li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/news/txtlist_i107v.html">恭喜!北京两盘抢先进驻搜房免费开放平台</a></li>
                <li class="l5">1.01</li>
                <li class="l3"><span>5</span></li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/news/txtlist_i106v.html">先开放后交房实景亮相 亦庄金茂悦工地开放诚意兑</a></li>
                <li class="l5">1.01</li>
                <li class="l3"><span>6</span></li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/news/txtlist_i105v.html">2015楼市大观上行中国金茂“双11光盘节”怎么玩？</a></li>
                <li class="l5">1.01</li>
                <li class="l3"><span>7</span></li>
                <li class="l4"><a href="http://fcwt601.yj99.cn/news/txtlist_i104v.html">今晚不能去你家睡 我妈超烦的</a></li>
                <li class="l5">1.01</li>
            </ul>
        </div>

        <div class="d3">
            <iframe marginwidth="1" marginheight="1" width="313px" height="315px" border="0" frameborder="0" src="lpjg/lpjgzs/esf.php"></iframe>
        </div>

    </div>
    <!--资讯E-->

</div>

<!--底部B-->
<div class="bfb ibottom">
    <div class="yjcode">
        <ul class="u1">
            <li class="l1"><img src="mt/imp/zhen.gif" width="131" height="153" /></li>
            <li class="l2">
                <span class="cap">快速导航</span>
                <a href="http://fcwt601.yj99.cn/">友价房产网T601</a><br>
                <a href="http://fcwt601.yj99.cn/loupan/">北京新房</a><br>
                <a href="http://fcwt601.yj99.cn/second/">北京二手房</a><br>
                <a href="http://fcwt601.yj99.cn/rent/">北京租房</a>
            </li>
            <li class="l2">
                <span class="cap">商业合作</span>
                <a href="http://fcwt601.yj99.cn/reg/reg.php">个人用户加入房产网</a><br>
                <a href="http://fcwt601.yj99.cn/reg/reg.php?u=2">经纪人入驻</a><br>
                <a href="http://fcwt601.yj99.cn/reg/reg.php?u=3">中介门店加盟</a><br>
                <a href="http://fcwt601.yj99.cn/reg/reg.php?u=5">楼盘入驻</a><br>
            </li>
            <li class="l2">
                <span class="cap">特色服务</span>
                <a href="http://fcwt601.yj99.cn/user/mianzhuce.php?control=chushou">免费发布出售房源</a><br>
                <a href="http://fcwt601.yj99.cn/user/mianzhuce.php?control=chuzu">免费发布出租房源</a><br>
                <a href="http://fcwt601.yj99.cn/user/mianzhuce.php?control=qiugou">免费发布求购信息</a><br>
                <a href="http://fcwt601.yj99.cn/user/mianzhuce.php?control=qiuzu">免费发布求租信息</a><br>
            </li>
            <li class="l2">
                <span class="cap">购房工具</span>
                <a href="tool/dkjsq/" target="_blank">房贷计算</a><br>
                <a href="tool/dkjsq/index.php?t=gjj" target="_blank">公积金贷款</a><br>
                <a href="tool/gfnlpg/" target="_blank">购房能力</a><br>
                <a href="tool/tqhdjsq/" target="_blank">提前还款</a>
            </li>
            <li class="l2">
                <span class="cap">二维码扫描</span>
                <a href="mt/" target="_blank"><img border="0" src="http://fcwt601.yj99.cn/template/getqr.php?u=http://fcwt601.yj99.cn/m/&size=3" style="margin:5px 0 0 0;" /></a>
            </li>
        </ul>
        <ul class="u2">
            <li class="l1">友情链接：</li>
            <li class="l2">
                <a href="http://www.yj99.cn">友价源码官网</a>
                <a href="http://www.yjcode.com">友价正版查询</a>
                <a href="http://fcwt601.yj99.cn">友价房产网</a>
                <a href="http://shopt5.yj99.cn">友价商城系统</a>
                <a href="http://ym.yj99.cn">友价域名系统</a>
                <a href="http://www.yj99.cn/product/search_j85v.html">PHP房产源码</a>
                <a href="http://www.yj99.cn/product/search_j85v.html">中介门户系统</a>
                <a href="http://www.yj99.cn/product/search_j85v.html">楼盘展示网站</a>
                <a href="http://www.yj99.cn/product/search_j85v.html">房产程序源码</a>
                <a href="http://www.yj99.cn/product/search_j86v.html">自动发货商城</a>
                <a href="http://www.yj99.cn/product/search_j86v.html">实物交易商城</a>
                <a href="http://www.yj99.cn/product/search_j86v.html">点卡交易系统</a>
                <a href="http://www.yj99.cn/product/search_j111v.html">PHP域名程序</a>
                <a href="http://www.yj99.cn/product/search_j111v.html">域名交易源码</a>
                <a href="http://www.yj99.cn/product/search_j111v.html">域名买卖系统</a>
            </li>
        </ul>

    </div>
</div>

<%--登陆--%>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1" aria-hidden="true">
    <div class="modal-dialog" style="width: 300px;height: 100px">
        <div class="modal-content">
            <div class="modal-header" >
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel1" >
                    用户登录
                </h4>
            </div>
            <div class="modal-body" >
                <div class="login">
                    <p><input type="text" class="form-control" name="username" id="id" placeholder="用户名" value=""></p>
                    <p><input type="password" class="form-control" name="userpass" id="password" placeholder="密码" value=""></p>
                </div>
                <%--<form id="addForm" method="post" >
                    <table>
                        <tr>
                            <td>
                                用户名：
                            </td>
                            <td>
                                <input  class="form-control" type="text" name="t1" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                密  码：
                            </td>
                            <td>
                                <input type="password" class="form-control"  name="t2" />
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2" align="center">
                                <a href="getmm.php">找回密码</a>
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2" align="center">
                                还没有友价房产网T601帐号？
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2" align="center">
                                <a href="reg.php">免费注册</a>
                            </th>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="hidden" value="yjcode" name="jvs" />
                            </td>
                        </tr>
                    </table>
                </form>--%>

            </div>
            <div class="modal-footer" >
                <button type="button" class="btn btn-success" onclick="login()" data-dismiss="modal">
                    登录
                </button>
                <button type="button" class="btn btn-info" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>
<!--底部E-->

<!--B B-->
<div class="bfb bottomy">
    <div class="yjcode">
        <div class="d1">
            <a href="http://fcwt601.yj99.cn/help/view4.html" class="acy" target="_blank">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://fcwt601.yj99.cn/help/search_j2v.html" class="acy" target="_blank">免责声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://fcwt601.yj99.cn/help/search_j3v.html" class="acy" target="_blank">联系我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://fcwt601.yj99.cn/help/search_j4v.html" class="acy" target="_blank">隐私协议</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://fcwt601.yj99.cn/help/view6.html" class="acy" target="_blank">广告合作</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://fcwt601.yj99.cn/help/search_j6v.html" class="acy" target="_blank">会员公告</a>&nbsp;&nbsp;|&nbsp;&nbsp;
            <a href="http://fcwt601.yj99.cn/">返回首页</a><br>
            Copyright 2014-2019 友价房产网T601,All Rights Reserved 版权所有<br>
            客服热线：0577-67068160（周一至周五：8:00-7:00） 浙ICP备123456789号 <script>
            var _hmt = _hmt || [];
            (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?2cbb034ac8adb10e0e457326c9d8e882";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();
        </script><a href="http://tongji.baidu.com/web/welcome/ico?s=2cbb034ac8adb10e0e457326c9d8e882" target=_blank>百度统计</a>  </div>
    </div>
</div>
<!--B E-->
<script src="../../assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="../../assets/js/bootstrap.js"></script>
<!-- METISMENU SCRIPTS -->
<script src="../../assets/js/jquery.metisMenu.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="../../assets/js/custom.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
<!-- bootstrap 核心js文件 -->
<script src="<%=request.getContextPath() %>/js/bootstrap/js/bootstrap.min.js"></script>
<!-- bootStrap TreeView -->
<script src="<%=request.getContextPath() %>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<!-- bootStrap addTabs -->
<script src="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>
<!-- bootStrap table -->
<script src="<%=request.getContextPath() %>/js/bootstrap-table/dist/bootstrap-table.js"></script>
<!-- bootStrap table 语言包中文-->
<script src="<%=request.getContextPath() %>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- bootstrap-datetimepicker -->
<script src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<!-- bootstrap-dialog -->
<script src="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
<!-- bootstrap-fileinput -->
<script src="<%=request.getContextPath() %>/js/bootstrap-fileinput/js/fileinput.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-fileinput/js/locales/zh.js"></script>

<script type="text/javascript">

    var aacc =  '<%=request.getSession().getAttribute("name")%>';
    $("#lhf").html(aacc);
    function login(){
        var username=$("[name='username']").val();
        var userpass=$("[name='userpass']").val();
        $.ajax({
            url:"<%=request.getContextPath()%>/viphy/querydengluuser",
            type:"post",
            data:{
                "username":username,
                "userpass":userpass,
            },
            dataType:"text",
            success:function(five){
                if(five=="2"){
                    //location.href="ZYM.jsp";
                    $("#lhf").html(username+" ");
                }else if(five=="0"){
                    alert("账号或密码错误");
                }else if(five=="1"){
                    alert("账号或密码错误")
                }
            },
            error:function(){
            }
        })
    }


    /*function login(){
        var username=$("[name='username']").val();
        var userpass=$("[name='userpass']").val();

        $.ajax({
            url:"<%=request.getContextPath()%>/viphy/querydengluuser",
            type:"post",
            data:{
                "username":username,
                "userpass":userpass,
            },
            dataType:"text",
            success:function(five){
                if(flag=="2"){
                    //location.href="ZYM.jsp";
                    $("#lhf").html(username+" ");
                }else if(flag=="0"){
                    alert("账号或密码错误");
                }else if(flag=="1"){
                    alert("账号或密码错误")
                }
            },
            error:function(){
            }
        })
    }*/



</script>

</body>
</html>
