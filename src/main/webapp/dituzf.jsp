<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-30
  Time: 上午 09:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">
    <link href="<%=request.getContextPath()%>/mt/imp/Favicon.ico.ico" type="image/x-icon" rel="icon">
    <link href="<%=request.getContextPath()%>/mt/imp/Favicon.ico.ico" type="image/x-icon" rel="shortcut icon">

    <title>北京二手房_北京二手房交易_北京麦田网</title>
    <meta name="description" content="麦田北京二手房网提供北京二手房出售信息,北京最新二手房交易,北京二手房房价查询" />
    <meta name="keywords" content="北京二手房出售,北京二手房交易,北京二手房交易流程,北京二手房房价,北京二手房买卖." />

    <script type='text/javascript' src='<%=request.getContextPath()%>/mt/init.js'></script>
    <!--<script type='text/javascript' src='/scripts/pages/base/pagebase.js'></script>-->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/base.css">


    <script>
        var isnoA = 0;

    </script>

    <!--[if lt IE 9]><script type="text/javascript" src="<%=request.getContextPath()%>/mt/html5.js"></script><![endif]-->
    <style>
        .infoBox img {
            display: none;
        }

        .map_infoBox {
            position: absolute;
            line-height: 33px;
        }

        .map_infoBox .map_infoBox_top {
            padding: 8px 18px;
            border-radius: 3px 3px 0 0;
            background: url(<%=request.getContextPath()%>/mt/imp/list_left_tab.png);
            width: 280px;
        }

        .map_infoBox .map_infoBox_bot {
            height: 16px;
            background: url(<%=request.getContextPath()%>/mt/imp/map_infoBox.png) left bottom no-repeat;
        }

        .map_infoBox_red .map_infoBox_top {
            border: 2px solid #fe4646;
            border-bottom: 0;
            width: 276px;
        }

        .map_infoBox h4 {
            color: #fe4646;
            font-size: 16px;
            font-weight: normal;
        }

        .map_infoBox p {
            color: #999;
            font-size: 14px;
            line-height: 24px;
            padding: 4px 0;
        }

        .map_infoBox p span {
            color: #666;
            padding-left: 8px;
            font-size: 14px;
        }

        .map_infoBox_red .map_infoBox_bot {
            height: 16px;
            background: url(<%=request.getContextPath()%>/mt/imp/map_infoBox.png) right bottom no-repeat;
        }


        .single_price {
            position: absolute;
            height: 37px;
            line-height: 32px;
            font-size: 12px;
            z-index: 10;
            color: #666;
        }

        .single_price p {
            height: 32px;
            overflow: hidden;
            border-radius: 4px;
            cursor: pointer;
            background: url(<%=request.getContextPath()%>/mt/imp/list_left_tab.png);
        }

        .single_price_num {
            font-size: 13px;
            color: #fff;
            font-weight: bold;
            padding: 0 9px;
            background: url(<%=request.getContextPath()%>/mt/imp/single_price_num.png);
            display: inline-block;
        }

        .single_price_num label {
            font-size: 13px;
            cursor: pointer;
        }

        .single_price em {
            position: absolute;
            display: block;
            width: 11px;
            height: 5px;
            left: 50%;
            margin-left: -5px;
            bottom: 0px;
            background: url(<%=request.getContextPath()%>/mt/imp/single_price_num_arrow.png);
            z-index: 10;
        }

        .single_name_num {
            display: none;
            padding: 0 9px;
            cursor: pointer;
        }

        .single_name_num label {
            cursor: pointer;
        }

        .single_price:hover .single_name_num {
            display: inline-block;
        }

        .single_price:hover .single_price_num {
            background: url(<%=request.getContextPath()%>/mt/imp/single_price_num_hover.png);
        }

        .single_price:hover em {
            background: url(<%=request.getContextPath()%>/mt/imp/single_price_num_arrow_hover.png);
            left: 31px;
        }


        .single_price_y {
            position: absolute;
            height: 37px;
            line-height: 32px;
            font-size: 12px;
            z-index: 10;
            color: #666;
        }

        .single_price_y p {
            height: 32px;
            overflow: hidden;
            border-radius: 4px;
            cursor: pointer;
            background: url(<%=request.getContextPath()%>/mt/imp/list_left_tab.png);
        }

        .single_price_num_y {
            font-size: 13px;
            color: #fff;
            font-weight: bold;
            padding: 0 9px;
            background: url(<%=request.getContextPath()%>/mt/imp/shop_ico_bg.png);
            display: inline-block;
        }

        .single_price_num_y label {
            font-size: 13px;
            cursor: pointer;
        }

        .single_price_y em {
            position: absolute;
            display: block;
            width: 11px;
            height: 5px;
            left: 50%;
            margin-left: -5px;
            bottom: 0px;
            background: url(<%=request.getContextPath()%>/mt/imp/shop_arrow.png);
            z-index: 10;
        }

        .single_name_num {
            display: none;
            padding: 0 9px;
            cursor: pointer;
        }

        .single_name_num label {
            cursor: pointer;
        }

        .single_price_y:hover .single_name_num {
            display: inline-block;
        }

        .single_price_y:hover .single_price_num_y {
            background: url(<%=request.getContextPath()%>/mt/imp/shop_ico_bg.png);
        }

        .single_price_y:hover em {
            background: url(<%=request.getContextPath()%>/mt/imp/shop_arrow.png);
            left: 31px;
        }

        /* 要的新的标签 */
        .single_price2 {
            position: absolute;
            height: 37px;
            line-height: 32px;
            font-size: 12px;
            z-index: 10;
        }

        .single_price2 p {
            height: 32px;
            overflow: hidden;
            border-radius: 4px;
            cursor: pointer;
            background: url(<%=request.getContextPath()%>/mt/imp/list_left_tab.png);
        }

        .single_price2 .single_name_num {
            padding-right: 9px;
            cursor: pointer;
            display: inline-block;
            color: #666;
        }

        .single_price2 .single_price_num {
            background: url(<%=request.getContextPath()%>/mt/imp/shop_ico_bg.png);
        }

        .single_price2 em {
            position: absolute;
            display: block;
            width: 11px;
            height: 5px;
            left: 31px;
            margin-left: -5px;
            bottom: 0px;
            background: url(<%=request.getContextPath()%>/mt/imp/shop_arrow.png);
            z-index: 10;
        }
    </style>

    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/esf_list_map.css?version=3.0.0">
    <!--[if lt IE 9]><script type="text/javascript" src="<%=request.getContextPath()%>/mt/html5.js"></script><![endif]-->
    <link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=d6zGANUDmor3AVuE7Iy34UCY"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/GeoUtils/1.2/src/GeoUtils_min.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/library/InfoBox/1.2/src/InfoBox_min.js"></script>


    <script src="<%=request.getContextPath()%>/mt/Common.js"></script>
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
                window.location = '../../browser/browser.html';
            }
        }
    </script>

</head>
<body>
<div class="map_frame">
    <!--CommonBody-->
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

    <script src='<%=request.getContextPath()%>/mt/jquery.Scrollbar.min.js'></script>
    <div class="revealbga" style="display: none">
        <div class="dezxails clearfix">
            <p><span>登录麦田在线</span><label>还没有麦田账号?<a href='/userregist'>马上注册</a></label><kbd><a href="javascript:MTLoginHide();"><img src="<%=request.getContextPath()%>/mt/imp/close.jpg" alt=""></a></kbd></p>
            <form id="thisForm" method="post" action="">
                <ul class="FancyF">
                    <li class="">手机号<br />
                        <i class="mai-ico"></i>
                        <input id="txtLoginName" type='text' maxlength="11" class="stext" value="" />
                        <label>请输入手机号码</label>
                        <span class="fff"></span>
                    </li>
                    <li class="">密码<br />
                        <i class="mai-ico password"></i>
                        <input id="txtPassword" type="password" maxlength="16">
                        <label>请输入密码</label>
                        <span class="fff"></span>
                    </li>
                </ul>
            </form>
            <dl class="clearfix">
                <dd class="fl">
                    <input id="isAutoLogin" type="checkbox">下次自动登录</dd>
                <dd class="fr"><a href='/userforget'>找回密码</a></dd>
            </dl>
            <samp><a id="btnLogin" href="javascript:">立即登录</a></samp>
            <ol>
                <li><i></i><a id="btnQQLogin" href="javascript:">QQ登录</a></li>
                <li><i class="sina"></i><a id="btnSinaLogin" href="javascript:">新浪微博登录</a></li>
            </ol>
        </div>
    </div>

    <header class="maitian-header bj_map_header">
        <div class="nav-wrap clearfix">
            <ul class="fl">
                <li class="logo"><a href="index.html">
                    <img src="<%=request.getContextPath()%>/mt/imp/logo.png" alt=""></a></li>
                <li class="search_box_noBorder">
                    <input class="placeholder text" type="text"  onblur=" if (this.value == '') {this.value = '请输入房源所在区域或小区名称'} " onfocus=" if (this.value == '请输入房源所在区域或小区名称') {this.value = ''}; "  value="请输入房源所在区域或小区名称" maxlength="100" autocomplete="off" id="ico-search">
                    <input type="button" class="search_btn" value="" id="btSearch" onclick="ga('send', 'event', 'zhanneisousuo', 'sousuo', 'sousuoanniu');" />
                    <ul id="SearchTips" style="top: 60px; left: 240px; width: 622px; position: absolute; border: 1px solid #d9d9d9; background-color: white; display: none; z-index: 3;"></ul>
                </li>
                <li class="header_select">
                    <div class="filter_select clearfix selectBox">
                        <a href="#" class="show" id="SearchPrice">售价</a>
                        <em></em>
                        <div class="filter_sel selectCont" style="width: 90px; height:220px;">
                            <ul>
                                <li class="active"  id="SearchPriceS0"><a onclick="ga('send', 'event', 'shenghuoquan', 'shoujia', '不限');" href='/esfmap' id="S0">
                                    <samp></samp>
                                    不限</a></li>

                                <li id="SearchPriceS1"><a onclick="ga('send', 'event', 'shenghuoquan', 'shoujia', '200万以下');" href='<%=request.getContextPath()%>/mt/imp/S1' id="S1" ><samp></samp>200万以下</a></li>

                                <li id="SearchPriceS2"><a onclick="ga('send', 'event', 'shenghuoquan', 'shoujia', '200-300万');" href='<%=request.getContextPath()%>/mt/imp/S2' id="S2" ><samp></samp>200-300万</a></li>

                                <li id="SearchPriceS3"><a onclick="ga('send', 'event', 'shenghuoquan', 'shoujia', '300-400万');" href='<%=request.getContextPath()%>/mt/imp/S3' id="S3" ><samp></samp>300-400万</a></li>

                                <li id="SearchPriceS4"><a onclick="ga('send', 'event', 'shenghuoquan', 'shoujia', '400-600万');" href='<%=request.getContextPath()%>/mt/imp/S4' id="S4" ><samp></samp>400-600万</a></li>

                                <li id="SearchPriceS5"><a onclick="ga('send', 'event', 'shenghuoquan', 'shoujia', '600-800万');" href='<%=request.getContextPath()%>/mt/imp/S5' id="S5" ><samp></samp>600-800万</a></li>

                                <li id="SearchPriceS6"><a onclick="ga('send', 'event', 'shenghuoquan', 'shoujia', '800万以上');" href='<%=request.getContextPath()%>/mt/imp/S6' id="S6" ><samp></samp>800万以上</a></li>

                            </ul>
                        </div>
                    </div>
                </li>
                <li class="header_select">
                    <div class="filter_select clearfix selectBox">
                        <a href="#" class="show" id="SearchArea">面积</a>
                        <em></em>
                        <div class="filter_sel selectCont" style="width: 90px;height:220px;">
                            <ul>
                                <li class="active" id="AreaA0"><a onclick="ga('send', 'event', 'shenghuoquan', 'mianji', '不限');" href='/esfmap' id="A0">
                                    <samp></samp>
                                    不限</a></li>

                                <li id="AreaA1"><a onclick="ga('send', 'event', 'shenghuoquan', 'mianji', '50平以下');" href='/esfmap/A1'  id="A1"><samp></samp>50平以下</a></li>

                                <li id="AreaA2"><a onclick="ga('send', 'event', 'shenghuoquan', 'mianji', '50-70平');" href='/esfmap/A2'  id="A2"><samp></samp>50-70平</a></li>

                                <li id="AreaA3"><a onclick="ga('send', 'event', 'shenghuoquan', 'mianji', '70-90平');" href='/esfmap/A3'  id="A3"><samp></samp>70-90平</a></li>

                                <li id="AreaA4"><a onclick="ga('send', 'event', 'shenghuoquan', 'mianji', '90-110平');" href='/esfmap/A4'  id="A4"><samp></samp>90-110平</a></li>

                                <li id="AreaA5"><a onclick="ga('send', 'event', 'shenghuoquan', 'mianji', '110-130平');" href='/esfmap/A5'  id="A5"><samp></samp>110-130平</a></li>

                                <li id="AreaA6"><a onclick="ga('send', 'event', 'shenghuoquan', 'mianji', '130-150平');" href='/esfmap/A6'  id="A6"><samp></samp>130-150平</a></li>

                                <li id="AreaA7"><a onclick="ga('send', 'event', 'shenghuoquan', 'mianji', '150平以上');" href='/esfmap/A7'  id="A7"><samp></samp>150平以上</a></li>

                            </ul>
                        </div>
                    </div>
                </li>

                <li class="header_select">
                    <div class="selectBox more_tj">
                        <a href="javascript:;">更多</a>
                        <em></em>
                        <div class="selectCont clearfix more_tj_box">
                            <ol class="more_tj_ul">
                                <li class="filter_select clearfix selectBox more_tj_li">
                                    <div class="filter_select clearfix selectBox">
                                        <a href="#" class="show" id="SearchLayout">户型</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <em></em>
                                        <div class="filter_sel selectCont" style="width: 90px;height:190px;">
                                            <ul>
                                                <li class="active" id="LayoutH0"><a onclick="ga('send', 'event', 'shenghuoquan', 'huxing', '不限');" href='/esfmap' id="H0">
                                                    <samp></samp>
                                                    不限</a></li>

                                                <li  id="LayoutH1"><a onclick="ga('send', 'event', 'shenghuoquan', 'huxing', '一室');" href='/esfmap/H1'  id="H1" ><samp></samp>一室</a></li>

                                                <li  id="LayoutH2"><a onclick="ga('send', 'event', 'shenghuoquan', 'huxing', '二室');" href='/esfmap/H2'  id="H2" ><samp></samp>二室</a></li>

                                                <li  id="LayoutH3"><a onclick="ga('send', 'event', 'shenghuoquan', 'huxing', '三室');" href='/esfmap/H3'  id="H3" ><samp></samp>三室</a></li>

                                                <li  id="LayoutH4"><a onclick="ga('send', 'event', 'shenghuoquan', 'huxing', '四室');" href='/esfmap/H4'  id="H4" ><samp></samp>四室</a></li>

                                                <li  id="LayoutH5"><a onclick="ga('send', 'event', 'shenghuoquan', 'huxing', '五室以上');" href='/esfmap/H5'  id="H5" ><samp></samp>五室以上</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="filter_select clearfix selectBox more_tj_li">
                                    <div class="filter_select clearfix selectBox">
                                        <a href="#" class="show" id="SearchFace">朝向</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <em></em>
                                        <div class="filter_sel selectCont" style="width: 90px;height:190px;">
                                            <ul>
                                                <li class="active" id="Face0"><a onclick="ga('send', 'event', 'shenghuoquan', 'chaoxiang', '不限');" href='/esfmap' id="O0">
                                                    <samp></samp>
                                                    不限</a></li>

                                                <li id="FaceO1"><a onclick="ga('send', 'event', 'shenghuoquan', 'chaoxiang', '东');" href='/esfmap/O1'  id="O1"><samp></samp>东</a></li>

                                                <li id="FaceO2"><a onclick="ga('send', 'event', 'shenghuoquan', 'chaoxiang', '南');" href='/esfmap/O2'  id="O2"><samp></samp>南</a></li>

                                                <li id="FaceO3"><a onclick="ga('send', 'event', 'shenghuoquan', 'chaoxiang', '西');" href='/esfmap/O3'  id="O3"><samp></samp>西</a></li>

                                                <li id="FaceO4"><a onclick="ga('send', 'event', 'shenghuoquan', 'chaoxiang', '北');" href='/esfmap/O4'  id="O4"><samp></samp>北</a></li>

                                                <li id="FaceO5"><a onclick="ga('send', 'event', 'shenghuoquan', 'chaoxiang', '南北');" href='/esfmap/O5'  id="O5"><samp></samp>南北</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="filter_select clearfix selectBox more_tj_li">
                                    <div class="filter_select clearfix selectBox">
                                        <a href="#" class="show" id="SearchTag">卖点</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <em></em>
                                        <div class="filter_sel selectCont" style="width: 90px;height:190px;">
                                            <ul>
                                                <li class="active" id="TagT0"><a onclick="ga('send', 'event', 'shenghuoquan', 'maidian', '不限');" href='/esfmap' id="T0">
                                                    <samp></samp>
                                                    不限</a></li>

                                                <li id="TagT3"><a onclick="ga('send', 'event', 'shenghuoquan', 'maidian', '临近地铁');" href='/esfmap/T3'  id="T3"><samp></samp>临近地铁</a></li>

                                                <li id="TagT2"><a onclick="ga('send', 'event', 'shenghuoquan', 'maidian', '满五');" href='/esfmap/T2'  id="T2"><samp></samp>满五</a></li>

                                                <li id="TagT4"><a onclick="ga('send', 'event', 'shenghuoquan', 'maidian', '随时可看');" href='/esfmap/T4'  id="T4"><samp></samp>随时可看</a></li>

                                                <li id="TagT9"><a onclick="ga('send', 'event', 'shenghuoquan', 'maidian', '带车位');" href='/esfmap/T9'  id="T9"><samp></samp>带车位</a></li>

                                                <li id="TagT7"><a onclick="ga('send', 'event', 'shenghuoquan', 'maidian', '带露台');" href='/esfmap/T7'  id="T7"><samp></samp>带露台</a></li>

                                                <li id="TagT8"><a onclick="ga('send', 'event', 'shenghuoquan', 'maidian', '带飘窗');" href='/esfmap/T8'  id="T8"><samp></samp>带飘窗</a></li>

                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </ol>
                        </div>
                    </div>
                </li>
                <!-- <li class="save_btn"><span><a href="#" onclick="ga('send', 'event', 'shenghuoquan', 'zhaofangtiaojian', 'baocunzhaofangtiaojian');" class="blue_tj" id="SaveHouseTerm">保存条件</a></span></li>-->
                <li class="clearup_btn">  <span>

                                          <a onclick="ga('send', 'event', 'shenghuoquan', 'zhaofangtiaojian', 'qingkongshaixuantiaojian');" href='/esfmap'>清空</a>


           </span></li>
            </ul>
            <div class="about float_r">
                <p class="clearfix" id="islogined">
                    <a class="know float_r" onclick="ga('send', 'event', 'quanzhanyetou', 'liaojiemaitian', 'liaojiemaitian');" href="http://about.maitian.cn/">了解麦田</a>
                    <a onclick="ga('send', 'event', 'quanzhanyetou', 'denlguzhuce', 'zhuce');" href='/userregist' class="reg float_r">注册</a><a href="javascript:;" style="cursor: default;">/</a>
                    <a onclick="ga('send', 'event', 'quanzhanyetou', 'denlguzhuce', 'denglu');" href='/userlogin' class="login float_r">登录</a>
                </p>
                <h3 class="float_r">购房热线：400-706-1188</h3>
            </div>
        </div>
    </header>





    <input type="hidden" value="http://bj.maitian.cn:8082/VIEW/HouseSecond/HouseSecondCycle.html?R=&C=&S=&A=&H=&O=&T=&pointx=&pointy=&travelmode=&timeconsuming=&OR=&PG=&RE=&RS=" id="currentUrl" />
    <section class="esf_map clearfix" >
        <div style="height:60px;"></div>
        <div class="list_map clearfix" style="width:946px;height:600px;margin:0;" id="allmap">
        </div>
        <div class="list_left" style="overflow-y:hidden">
            <div class="list_left_head">
                <div class="list_left_tab clearfix">
                    <p class="float_r_ListCount"><strong>找到<a href="javascript:;" style="cursor:text" id="EsfCount">9569</a>套符合要求的房源</strong></p>
                </div>
                <div class="screening clearfix">
                    <ul class="fl">

                        <li class="basepaixu">
                            <a onclick="ga('send', 'event', 'paixu', 'moren', 'moren');" href='/esfmap'

                               class="bg"


                            >默认
                            </a>
                        </li>

                        <li class="paixu_zj"><a onclick="ga('send', 'event', 'paixu', 'zongjia', 'yougaodaodi');" href='javascript:clkPaixu(this,"OR=11","")'>总价<i class="mai-ico"></i></a></li>
                        <li class="paixu_dj"><a onclick="ga('send', 'event', 'paixu', 'danjia', 'yougaodaodi');" href='javascript:clkPaixu(this,"OR=21","")'>单价<i class="mai-ico"></i></a></li>
                        <li class="paixu_mj"><a onclick="ga('send', 'event', 'paixu', 'mianji', 'yougaodaodi');" href='javascript:clkPaixu(this,"OR=31","")'>面积<i class="mai-ico"></i></a></li>
                        <!--
                             <li><a href='/esfmap/OR11'>总价<i class="mai-ico"></i></a></li>
                         -->

                        <!--
                            <li><a href='/esfmap/OR21'>单价<i class="mai-ico"></i></a></li>
                        -->

                        <!--
                            <li><a href='/esfmap/OR31'>面积<i class="mai-ico"></i></a></li>
                        -->
                    </ul>
                    <label><a onclick="ga('send', 'event', 'paixu', 'ditumoshi', 'liebiaomoshi');" href='/esfall' class="list_gay mai-ico"></a>
                        <a onclick="ga('send', 'event', 'paixu', 'ditumoshi', 'shenghuoquan');" href='/esfmap'  class="map mai-ico"></a></label>

                </div>
            </div>
            <!---Housing list--->
            <div class="list_wrap filter_sel" style="height:500px; display:block; top:94px;">
                <ul class="map_ico_left">

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('1AE73433238A9630E053660310AC41DE',116.222829,40.041176)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_1');"  target="_blank" href='
                                /esfxq/IFY00627119'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/01D/E4A/01DE4A3C6EDD47C08546BB358699C260_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_1');" target="_blank" href='
                                        /esfxq/IFY00627119'><label>
                                8图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_1');" href='/esfxq/IFY00627119'>保利西山林语   复式带阁楼  两室两卫 带天窗</a></h1>
                            <p><span class="the_price"><strong><em>450</em>万元</strong>（<em>80486</em>元/㎡）</span><br/>
                                <span> [海淀]&nbsp;北部新区&nbsp;保利西山林语<br/>

                                            <span>1</span>室


                                            <span>1</span>厅


                                            <span>1</span>厨


                                        <span>1</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>55.91</span>㎡</span>&nbsp;|&nbsp;东西北
                            <dl class="clearfix">
                                <dd class="morel clearfix">









                                    <mark class="sole">满五</mark>







                                    <mark class="yellow">随时可看</mark>




                                </dd>
                            </dl>

                        </div></li>

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('1AE7343322EE9630E053660310AC41DE',116.521775,39.936198)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_2');"  target="_blank" href='
                                /esfxq/IFY00587787'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/335/8D8/3358D8C1ADD746ADAF40183C6470F4DF_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_2');" target="_blank" href='
                                        /esfxq/IFY00587787'><label>
                                10图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_2');" href='/esfxq/IFY00587787'>华纺易城 中间位置三居室 南北通透 正观园区绿化</a></h1>
                            <p><span class="the_price"><strong><em>1100</em>万元</strong>（<em>77992</em>元/㎡）</span><br/>
                                <span> [朝阳]&nbsp;朝青&nbsp;华纺易城<br/>

                                            <span>3</span>室


                                            <span>2</span>厅


                                            <span>1</span>厨


                                        <span>2</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>141.04</span>㎡</span>&nbsp;|&nbsp;南北
                            <dl class="clearfix">
                                <dd class="morel clearfix">











                                    <mark class="sole">满五</mark>







                                    <mark class="green">6号线</mark>







                                    <mark class="window">带飘窗</mark>




                                </dd>
                            </dl>

                        </div></li>

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('1AE7343323259630E053660310AC41DE',116.296145,39.949806)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_3');"  target="_blank" href='
                                /esfxq/IFY00609402'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/914/1DD/9141DD883D1249E18FF0605090A86E87_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_3');" target="_blank" href='
                                        /esfxq/IFY00609402'><label>
                                14图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_3');" href='/esfxq/IFY00609402'>车道沟 京西明珠 人车分流 南北通风 带明卫 附带独立门厅</a></h1>
                            <p><span class="the_price"><strong><em>1210</em>万元</strong>（<em>93076</em>元/㎡）</span><br/>
                                <span> [海淀]&nbsp;紫竹桥&nbsp;曙光花园望山园<br/>

                                            <span>3</span>室


                                            <span>2</span>厅


                                            <span>1</span>厨


                                        <span>2</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>130</span>㎡</span>&nbsp;|&nbsp;南北
                            <dl class="clearfix">
                                <dd class="morel clearfix">











                                    <mark class="sole">满五</mark>







                                    <mark class="green">10号线、6号线</mark>







                                    <mark class="carport">带车位</mark>




                                </dd>
                            </dl>

                        </div></li>

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('1AE7343322729630E053660310AC41DE',116.486889,40.013268)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_4');"  target="_blank" href='
                                /esfxq/IFY00551622'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/436/7CA/4367CAE2AAD245F2B6158FCC429A792E_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_4');" target="_blank" href='
                                        /esfxq/IFY00551622'><label>
                                16图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_4');" href='/esfxq/IFY00551622'>安静位置 高层 叠拼别墅4室 看房方便 ！</a></h1>
                            <p><span class="the_price"><strong><em>2299</em>万元</strong>（<em>106930</em>元/㎡）</span><br/>
                                <span> [朝阳]&nbsp;望京&nbsp;果岭里class<br/>

                                            <span>4</span>室


                                            <span>2</span>厅


                                            <span>2</span>厨


                                        <span>3</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>215</span>㎡</span>&nbsp;|&nbsp;南北
                            <dl class="clearfix">
                                <dd class="morel clearfix">











                                    <mark class="sole">满五</mark>







                                    <mark class="green">14号线、15号线</mark>







                                    <mark class="carport">带车位</mark>




                                </dd>
                            </dl>

                        </div></li>

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('1AE73433236D9630E053660310AC41DE',116.288582,39.96679)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_5');"  target="_blank" href='
                                /esfxq/IFY00639770'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/10E/6CC/10E6CCA55F134B0BA418E87E44481184_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_5');" target="_blank" href='
                                        /esfxq/IFY00639770'><label>
                                9图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_5');" href='/esfxq/IFY00639770'>世纪城时雨园+动静分离+落地飘窗+双卧南+高层观景+双明卫</a></h1>
                            <p><span class="the_price"><strong><em>1580</em>万元</strong>（<em>95897</em>元/㎡）</span><br/>
                                <span> [海淀]&nbsp;世纪城&nbsp;时雨园<br/>

                                            <span>3</span>室


                                            <span>2</span>厅


                                            <span>1</span>厨


                                        <span>2</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>164.76</span>㎡</span>&nbsp;|&nbsp;东南
                            <dl class="clearfix">
                                <dd class="morel clearfix">













                                    <mark class="sole">满五</mark>







                                    <mark class="green">10号线</mark>







                                    <mark class="terrace">带露台</mark>







                                    <mark class="window">带飘窗</mark>




                                </dd>
                            </dl>

                        </div></li>

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('1AE7343322A09630E053660310AC41DE',116.456767,39.973749)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_6');"  target="_blank" href='
                                /esfxq/IFY00604456'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/D43/FD0/D43FD0341D774677952327D280EC10B0_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_6');" target="_blank" href='
                                        /esfxq/IFY00604456'><label>
                                12图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_6');" href='/esfxq/IFY00604456'>三元桥 国际村南北东三面采光四居室 配套齐全 采光好</a></h1>
                            <p><span class="the_price"><strong><em>1550</em>万元</strong>（<em>94512</em>元/㎡）</span><br/>
                                <span> [朝阳]&nbsp;三元桥&nbsp;UHN国际村<br/>

                                            <span>4</span>室


                                            <span>2</span>厅


                                            <span>1</span>厨


                                        <span>2</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>164</span>㎡</span>&nbsp;|&nbsp;南北
                            <dl class="clearfix">
                                <dd class="morel clearfix">











                                    <mark class="sole">满五</mark>







                                    <mark class="green">10号线、机场线</mark>







                                    <mark class="yellow">随时可看</mark>




                                </dd>
                            </dl>

                        </div></li>

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('1AE7343322F69630E053660310AC41DE',116.518136,39.933321)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_7');"  target="_blank" href='
                                /esfxq/IFY00627100'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/625/3A0/6253A0E8A3EA4CD5ADC09BE05B6DE8DC_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_7');" target="_blank" href='
                                        /esfxq/IFY00627100'><label>
                                9图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_7');" href='/esfxq/IFY00627100'>朝阳大悦城 青年路 润枫水尚 南北2居室 遇好人缘</a></h1>
                            <p><span class="the_price"><strong><em>950</em>万元</strong>（<em>77868</em>元/㎡）</span><br/>
                                <span> [朝阳]&nbsp;朝青&nbsp;润枫水尚<br/>

                                            <span>2</span>室


                                            <span>1</span>厅


                                            <span>1</span>厨


                                        <span>2</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>122</span>㎡</span>&nbsp;|&nbsp;南北
                            <dl class="clearfix">
                                <dd class="morel clearfix">









                                    <mark class="sole">满五</mark>







                                    <mark class="green">6号线</mark>




                                </dd>
                            </dl>

                        </div></li>

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('3DB700BD44D89651E053660310AC08E2',116.439772,39.896108)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_8');"  target="_blank" href='
                                /esfxq/IFY00631458'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/CB3/6BE/CB36BECD3F91479A86E21C0F66C51C88_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_8');" target="_blank" href='
                                        /esfxq/IFY00631458'><label>
                                11图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_8');" href='/esfxq/IFY00631458'>东城区 培新街乙5号院 南北复式三居 双卫 对花园 带储物间</a></h1>
                            <p><span class="the_price"><strong><em>1180</em>万元</strong>（<em>90456</em>元/㎡）</span><br/>
                                <span> [东城]&nbsp;广渠门&nbsp;培新街乙5号院<br/>

                                            <span>3</span>室


                                            <span>1</span>厅


                                            <span>1</span>厨


                                        <span>2</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>130.45</span>㎡</span>&nbsp;|&nbsp;南北
                            <dl class="clearfix">
                                <dd class="morel clearfix">











                                    <mark class="sole">满五</mark>







                                    <mark class="green">5号线、7号线</mark>







                                    <mark class="yellow">随时可看</mark>




                                </dd>
                            </dl>

                        </div></li>

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('1AE7343323999630E053660310AC41DE',116.43519,39.904901)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_9');"  target="_blank" href='
                                /esfxq/IFY00580320'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/764/A0A/764A0A906B874CF6BFFC2ED6F34520D5_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_9');" target="_blank" href='
                                        /esfxq/IFY00580320'><label>
                                13图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_9');" href='/esfxq/IFY00580320'>东花市北里中区 版楼 复式 东南北向 看房方便</a></h1>
                            <p><span class="the_price"><strong><em>1330</em>万元</strong>（<em>72164</em>元/㎡）</span><br/>
                                <span> [东城]&nbsp;东花市&nbsp;东花市北里中区<br/>

                                            <span>3</span>室


                                            <span>3</span>厅


                                            <span>1</span>厨


                                        <span>2</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>184.3</span>㎡</span>&nbsp;|&nbsp;东南北
                            <dl class="clearfix">
                                <dd class="morel clearfix">









                                    <mark class="sole">满五</mark>







                                    <mark class="green">1号线、5号线、2号线、7号线</mark>




                                </dd>
                            </dl>

                        </div></li>

                    <li class="clearfix" onmouseover="if(isnoA==0){ return;} else { disPoint('1AE7343322889630E053660310AC41DE',116.448656,39.987594)}">
                        <a  onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian','1_10');"  target="_blank" href='
                                /esfxq/IFY00606013'>
                            <img src="http://img.maitian.cn/IMAGE/SEC/6EE/11F/6EE11F65F7A94AA19C7FCF8E79F5C787_208x156.JPG" width="142" height="106"/>
                        </a>

                        <div class="hide_border">
                            <a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuantupian', '1_10');" target="_blank" href='
                                        /esfxq/IFY00606013'><label>
                                11图</label>
                            </a></div>

                        <div class="list_title">
                            <h1><a onclick="ga('send', 'event', 'ershoufangditumoshi', 'fangyuanbiaoti', '1_10');" href='/esfxq/IFY00606013'>南北通透，业主自己住保持好 看房方便基本上随时可以看房</a></h1>
                            <p><span class="the_price"><strong><em>2599</em>万元</strong>（<em>135498</em>元/㎡）</span><br/>
                                <span> [朝阳]&nbsp;太阳宫&nbsp;太阳公元<br/>

                                            <span>3</span>室


                                            <span>2</span>厅


                                            <span>1</span>厨


                                        <span>2</span>卫&nbsp;

                        &nbsp;|&nbsp;<span>191.81</span>㎡</span>&nbsp;|&nbsp;东南北
                            <dl class="clearfix">
                                <dd class="morel clearfix">











                                    <mark class="sole">满五</mark>







                                    <mark class="green">10号线、13号线</mark>







                                    <mark class="window">带飘窗</mark>




                                </dd>
                            </dl>

                        </div></li>

                </ul>
                <div class="paging clearfix">
                    <div id="paging" class="paging clearfix">  <a class="up_page"><i class="mai-ico"></i></a> <a class="on"> 1 </a> <a onclick="ga('send', 'event', 'fanye', 'dangqianyema', '2');ClkPage('PG=2'); "  > 2 </a> <a onclick="ga('send', 'event', 'fanye', 'dangqianyema', '3');ClkPage('PG=3'); "  > 3 </a> <a onclick="ClkPage('PG=4');  " > ... </a> <a onclick="ga('send', 'event', 'fanye', 'dangqianyema', 'xiayiye'); ClkPage('PG=2');" class="down_page"><i class="mai-ico"></i></a> </div>
                </div>
            </div>

        </div>
        <a class="indent_btn" href="javascript:;"><em class=""></em></a>
    </section>




    <!--footer-->
    <footer>


    </footer>


    <script type='text/javascript'>
        var _scriptList = [
            '<%=request.getContextPath()%>/mt/pagebase.js',
            '<%=request.getContextPath()%>/mt/dataHandle.js',
            //'/scripts/pagekage/utils/widget/url/url.js',
            '<%=request.getContextPath()%>/mt/jquery_plug_in.js',
            "<%=request.getContextPath()%>/mt/underscore.js",
            '<%=request.getContextPath()%>/mt/jquery.reveal.js',
            '<%=request.getContextPath()%>/mt/localStorage.js',
            '<%=request.getContextPath()%>/mt/SearchInputCycle.js',
            '<%=request.getContextPath()%>/mt/HouseSecondCycle.js'

        ];
        //小区
        //var GetReInfo_View = eval("(" + '' + ")");
        //区域
        var MtDictInfo_Tbl = eval("(" + '[{"RegionName":"石景山","MapLngLat":"116.228969,39.91196","dictId":"DF7AF30A1945451FAAC0940C0B07FAC1","DictHJ":"88","PointX":"116.228969","PointY":"39.91196"},{"RegionName":"东城","MapLngLat":"116.420991,39.934536","dictId":"1657417C977DBB52E053660310AC950A","DictHJ":"696","PointX":"116.420991","PointY":"39.934536"},{"RegionName":"海淀","MapLngLat":"116.306583,39.966617","dictId":"1657417C9780BB52E053660310AC950A","DictHJ":"1644","PointX":"116.306583","PointY":"39.966617"},{"RegionName":"昌平","MapLngLat":"116.234718,40.225582","dictId":"1657417C977BBB52E053660310AC950A","DictHJ":"494","PointX":"116.234718","PointY":"40.225582"},{"RegionName":"朝阳","MapLngLat":"116.478482,39.962414","dictId":"1657417C977CBB52E053660310AC950A","DictHJ":"5527","PointX":"116.478482","PointY":"39.962414"},{"RegionName":"大兴","MapLngLat":"116.346827,39.734408","dictId":"1657417C977EBB52E053660310AC950A","DictHJ":"564","PointX":"116.346827","PointY":"39.734408"},{"RegionName":"丰台","MapLngLat":"116.292785,39.866563","dictId":"1657417C977FBB52E053660310AC950A","DictHJ":"212","PointX":"116.292785","PointY":"39.866563"},{"RegionName":"西城","MapLngLat":"116.373273,39.919707","dictId":"1657417C9781BB52E053660310AC950A","DictHJ":"226","PointX":"116.373273","PointY":"39.919707"}]' + ")");

        var DictInfoONE = eval("(" + "'0'" + ")");
        var DictInfoONE_X = eval("(" + "''" + ")");
        var DictInfoONE_Y = eval("(" + "''" + ")");
        var DictInfoONE_DictID = eval("(" + "''" + ")");

        var HSCOUNTIsRealSourceOn = eval("(" + "'1'" + ")");

        var strcontext = eval("(" + "''" + ")");

        //搜索框联想提示框选中小区信息
        var RE_ID = eval("(" + "''" + ")");
        var RE_ID_x = eval("(" + "''" + ")");
        var RE_ID_y = eval("(" + "''" + ")");
        var RE_ID_RegionID = eval("(" + "''" + ")");
        //var Search_GardenInfo = eval("(" + '[]' + ")");

        var HousingType = "";  //标识房源类型为：二手房
        GLOBAL.Load(_scriptList, '', function () {
                GLOBAL.View.HouseSecondCycle.Init();
            }
            , "debug"
        )
    </script>

    <!--footer-->
</div>
</body>
</html>

<script>
    //计算左侧列表的高度
    //屏幕宽度小于1190时 隐藏头部右侧内容
    $(function () {

        console.log("bbb");

        caculatHeight();
        caculateW();
        $(window).resize(function () { caculatHeight(); caculateW(); });
        function caculatHeight() {
            $('.list_left').height($(window).height() - 60);
            $('.list_wrap').height($(window).height() - $('.list_left_head').height() - 62);
            $('.list_map').height($(window).height() - 60);//关于.list_map 解决被导航条挡住的问题
            // $('.list_map').css({ 'top': '60px' });  //关于.list_map 解决被导航条挡住的问题
        }
        //function hideHeaderRight() {
        //    var $iWw = $(document).width() > 1190 ? $(document).width() : 1190;
        //    if ($iWw < 1190) {
        //        $('.about').css('display', 'none');
        //    } else {
        //        $('.about').css('display', 'block');
        //    }
        //}
        //计算地图宽度
        function caculateW() {
            var $iWw = $(document).width() > 1190 ? $(document).width() : 1190;
            var $listLeft_left = parseInt($('.list_left').css('left'));
            if ($listLeft_left >= 0) {
                $('.list_map').width($iWw - $('.list_left').width());
            } else {
                $('.list_map').width($iWw);
            }

        }
        //更多条件下拉鼠标移上变色
        $('.more_tj_li').hover(function () {
            $(this).css({ 'background-color': '#f56849' });
            $(this).find('a').eq(0).css({ 'color': '#fff' });
            $(this).find('em').eq(0).css({ 'background-image': 'url("<%=request.getContextPath()%>/mt/imp/arrow_drop2.png")' });
        }, function () {
            $(this).css({ 'background-color': '' });
            $(this).find('a').eq(0).css({ 'color': '#333' });
            $(this).find('em').eq(0).css({ 'background-image': 'url("<%=request.getContextPath()%>/mt/imp/arrow_drop.png")' });
        });

        //售价选中样式
        var PriceDefaultID = 'SearchPrice' + '';
        $("#" + PriceDefaultID + "").addClass("active").siblings().removeClass("active");
        var AreaDefaultID = 'Area' + '';
        $("#" + AreaDefaultID + "").addClass("active").siblings().removeClass("active");
        //Layout
        var LayoutDefaultID = 'Layout' + '';
        $("#" + LayoutDefaultID + "").addClass("active").siblings().removeClass("active");

        var FaceDefaultID = 'Face' + '';
        $("#" + FaceDefaultID + "").addClass("active").siblings().removeClass("active");
        //Tag
        var TagDefaultID = 'Tag' + '';
        $("#" + TagDefaultID + "").addClass("active").siblings().removeClass("active");

        $("#LBLZidndex").closest('label').css('z-index', 9999);
    })
</script>

<script type="text/template" id="leftscreening">


 <%--   <%_.map(screeningtemplate,function(CurrentareaOrderBy){ %>
    <ul class="fl">
        <li class='basepaixu'>
            <a onclick="ga('send', 'event', 'paixu', 'moren', 'moren');" href='/esfmap/'
                    <%if(CurrentareaOrderBy.CurrentareaOrderBy=="0" || CurrentareaOrderBy.CurrentareaOrderBy==""){%>
               class="bg"
                    <%}%>
            >默认
            </a>       </li>

        <%if(CurrentareaOrderBy.CurrentareaOrderBy=="11"){%>
        <li class='paixu_zj'><a onClick="ga('send', 'event', 'paixu', 'zongjia', 'yougaodaodi');" href='javascript:clkPaixu(this,"OR=12","<%=CurrentareaOrderBy.REID%>")' class="bg">总价<i class="mai-ico up"></i></a></li>
        <%} else if(CurrentareaOrderBy.CurrentareaOrderBy=="12"){   %>
        <li class='paixu_zj'><a onClick="ga('send', 'event', 'paixu', 'zongjia', 'youdidaogao');" href='javascript:clkPaixu(this,"OR=11","<%=CurrentareaOrderBy.REID%>")' class="bg">总价<i class="mai-ico"></i></a></li>
        <%} else {  %>
        <li class='paixu_zj'><a href='javascript:clkPaixu(this,"OR=12","<%=CurrentareaOrderBy.REID%>")'>总价<i class="mai-ico"></i></a></li>
        <%}%>
        <%if(CurrentareaOrderBy.CurrentareaOrderBy=="21"){%>
        <li class='paixu_dj'><a onClick="ga('send', 'event', 'paixu', 'zongjia', 'yougaodaodi');" href='javascript:clkPaixu(this,"OR=22","<%=CurrentareaOrderBy.REID%>")' class="bg">单价<i class="mai-ico up"></i></a></li>
        <%} else if(CurrentareaOrderBy.CurrentareaOrderBy=="22"){   %>
        <li class='paixu_dj'><a onClick="ga('send', 'event', 'paixu', 'zongjia', 'youdidaogao');" href='javascript:clkPaixu(this,"OR=21","<%=CurrentareaOrderBy.REID%>")' class="bg">单价<i class="mai-ico"></i></a></li>
        <%} else {  %>
        <li class='paixu_dj'><a href='javascript:clkPaixu(this,"OR=21","<%=CurrentareaOrderBy.REID%>")'>单价<i class="mai-ico"></i></a></li>
        <%}%>

        <%if(CurrentareaOrderBy.CurrentareaOrderBy=="31"){%>
        <li class='paixu_mj'><a onClick="ga('send', 'event', 'paixu', 'zongjia', 'yougaodaodi');" href='javascript:clkPaixu(this,"OR=32","<%=CurrentareaOrderBy.REID%>")' class="bg">面积<i class="mai-ico up"></i></a></li>
        <%} else if(CurrentareaOrderBy.CurrentareaOrderBy=="32"){   %>
        <li class='paixu_mj'><a onClick="ga('send', 'event', 'paixu', 'zongjia', 'youdidaogao');" href='javascript:clkPaixu(this,"OR=31","<%=CurrentareaOrderBy.REID%>")' class="bg">面积<i class="mai-ico"></i></a></li>
        <%} else {  %>
        <li class='paixu_mj'><a href='javascript:clkPaixu(this,"OR=31","<%=CurrentareaOrderBy.REID%>")'>面积<i class="mai-ico"></i></a></li>
        <%}%>
        <label><a href="esfall" class="list_gay mai-ico"></a><a href="/VIEW/HouseSecond/HouseSecondCycle.html" class="map mai-ico"></a></label>

    </ul>
    <% }) %>--%>
</script>

</body>
</html>
