<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-31
  Time: 下午 04:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="X-UA-Compatible" content="chrome=1">

    <title>用户中心</title>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="<%=request.getContextPath()%>/mt/html5.js"></script><![endif]-->
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
    <link href="<%=request.getContextPath()%>/mt/Favicon.ico.ico" type="image/x-icon" rel=icon />
    <link href="<%=request.getContextPath()%>/mt/Favicon.ico.ico" type="image/x-icon" rel="shortcut icon" />

    <!-- webIM css -->
    <link href="<%=request.getContextPath()%>/mt/imcommon.css" rel="stylesheet" />
    <link href="<%=request.getContextPath()%>/mt/mtim.css" rel="stylesheet" />
    <!-- webIM css -->

    <script type='text/javascript' src='<%=request.getContextPath()%>/mt/init.js'></script>
    <!--<script type='text/javascript' src='/scripts/pages/base/pagebase.js'></script>-->
    <link href="<%=request.getContextPath()%>/mt/base.css" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/mt/base_bak.css" rel="stylesheet" type="text/css" />

    <link href="<%=request.getContextPath()%>/mt/base.css?version=2.0.0" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/mt/userCenterStyle.css?version=4.0.0" rel="stylesheet" type="text/css" />
    <link href="<%=request.getContextPath()%>/mt/wenjuan.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/mt/jquery.reveal.js?version=2.0.0"></script>

    <link href="<%=request.getContextPath()%>/mt/wenjuan.css" rel="stylesheet" />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/header&footer.css" />
    <!--<script src="/Skin/js/jquery.reveal.js?version=2.0.0"></script>-->
    <script src="<%=request.getContextPath()%>/mt/Common.js"></script>

    <!-- webIM js -->
    <!--<script type='text/javascript' src='/webim.config.js'></script>
    <script type='text/javascript' src='/Scripts/dist/strophe-1.2.8.min.js'></script>
    <script type='text/javascript' src='/Scripts/dist/websdk-1.4.11.js'></script>
    <script type='text/javascript' src='/Scripts/dist/localStorage.js'></script>
    <script type='text/javascript' src='/Scripts/dist/weixinAudio.js'></script>-->
    <!-- webIM js -->



</head>
<body class="userCenterPage">

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

<!--header-->


<script type="text/javascript" src="<%=request.getContextPath()%>/mt/qc_loader.js" data-appid="101321688" data-redirecturi="http://bj.maitian.cn/Service/AuthLoginQQ.ashx" charset="utf-8"></script>
<script src="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=226422212" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/client.js" language="JavaScript"></script>


<div class="revealbga" style="display:none">
    <div class="dezxails clearfix">
        <p>
            <span tab="0" class="cur_tab">手机短信登录</span>
            &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
            <span tab="1">已有账号登录</span>
            <kbd>
                <a href="javascript:MTLoginHide();">
                    <img src="<%=request.getContextPath()%>/mt/close.jpg" alt="">
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
                    <img src="/Service/IdentifyingCode.ashx" onclick="javascript: LoadCode();" class="img_code" id="imgCode" alt="验证码" />
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
            <li class="logo"><a href="/index.html" onclick="ga('send', 'event', 'quanzhanyetou', 'logo', 'logo');"><img src="<%=request.getContextPath()%>/mt/imp/logo.png" alt=""></a></li>
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
                <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'APP');" href='/MTApp.jsp'>麦田APP</a>
            </li>
        </ul>
        <div class="about float_r">
            <p class="clearfix" id="islogined">
                <a class="know float_r" onclick="ga('send', 'event', 'quanzhanyetou', 'liaojiemaitian', 'liaojiemaitian');" href="http://about.maitian.cn/">了解麦田</a>
                <a onclick="ga('send', 'event', 'quanzhanyetou', 'denlguzhuce', 'zhuce');" href='<%=request.getContextPath()%>/userlogin.jsp' class="reg float_r"> 退出</a><a href="javascript:;" style="cursor:default;">/</a>
                <a onclick="ga('send', 'event', 'quanzhanyetou', 'denlguzhuce', 'denglu');" href='javascript:void(0)' class="login float_r"><%=request.getParameter("name")%></a>
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



<input type="hidden" value="http://bj.maitian.cn/VIEW/Member/MemberIndex.html" id="currentUrl" />
<div id="container" class="clearfix">
    <!--Main begin-->


    <div id="left_bar" class="fl">
        <div class="photoBox">
            <div class="photo"><img id="imgLeftAvatar" /></div><!--/Skin/member/images/photo2.jpg-->
            <div class="photoms"><img src="https://zmm18417.oss-cn-beijing.aliyuncs.com/wdd/95a6984098654f10b38c86a6383bb006.jpg" /></div>
        </div>
        <p class="userName"><a id="lblLeftNickName" href="javascript:void(0);" style="cursor:default;"></a></p>
        <ul id="leftNav">
            <li>
                <dl>
                    <dt

                            class="active"
                    ><i class="home"></i><a onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'wodeshouye', 'wodeshouye');" href='/userindex'>我的首页</a>
                    </dt>
                </dl>
            </li>
            <li>
                <dl>
                    <dt
                    ><i class="myFoucs"></i><a href="javascript:void(0);">我的关注</a>
                    </dt>
                    <dd>
                        <a onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'wodeguanzhu', 'xiaoqujinqichengjiao');" href='
                        /userjqcj'

                        >小区近期成交
                        </a>
                    </dd>
                    <dd>
                        <a onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'wodeguanzhu', 'xiangguanfangyuantuijian');" href='
                        /userfytj'

                        >相关房源推荐
                        </a>
                    </dd>
                    <dd>
                        <a onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'wodeguanzhu', 'jinqitianxinzengfangyuan');" href='
                        /userwt'

                        >近七天新增房源
                        </a>
                    </dd>
                    <dd>
                        <a onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'wodeguanzhu', 'guanzhufangyuanjiangjiatongzhi');" href='
                        /userpn'

                        >关注房源降价通知
                        </a>
                    </dd>
                    <dd>
                        <a onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'wodeguanzhu', 'woguanzhudejingjiren');" href='
                        /userbk'

                        >我关注的房产顾问
                        </a>
                    </dd>
                </dl>
            </li>
            <li>
                <dl>
                    <dt
                    >
                        <i class="personInfo"></i>
                        <a href='
                        /userinfo'

                        >个人信息
                        </a>
                    </dt>
                    <dd>
                        <a onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'gerenxinxi', 'jibenxinxi');" href='
                        /userinfo'

                        >基本信息
                        </a>
                    </dd>
                    <dd>
                        <a onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'gerenxinxi', 'zhaofangtiaojian');" href='
                        /usersearchesf'

                        >找房条件
                        </a>
                    </dd>
                    <dd id="ddShowPassword">
                        <a onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'gerenxinxi', 'xiugaimima');" href='
                        /userchgpwd'

                        >修改密码
                        </a>
                    </dd>
                </dl>
            </li>
            <!--
             <li>
                <dl id="dlCustomerSelfId">
                    <dt
                        ><i class="cusHelp"></i><a href="javascript:void(0);">客户自助</a>
                    </dt>
                    <dd>
                        <a id="researchPaper" onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'kehuzizhu', 'diaochawenjuan');"
                           data-reveal-id="myModalIdentityCheck" data-animation="none"
                           href='
                            /userpaper'

                            >调研问卷
                        </a>
                    </dd>
                    <dd>
                        <a id="invoiceApply" onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'kehuzizhu', 'fapiaoshenqing');"
                           data-reveal-id="myModalIdentityCheck" data-animation="none"
                           href='
                            /userinvoice'

                            >发票申请
                        </a>
                    </dd>
                    <dd>
                        <a id="accountQuery" onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'kehuzizhu', 'zhangkuanchaxun');"
                           data-reveal-id="myModalIdentityCheck" data-animation="none"
                           href='
                            /useraccount'

                            >账款查询
                        </a>
                    </dd>
                    <dd>
                        <a id="progressQuery" onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'kehuzizhu', 'maimaijinduchaxun');"
                           data-reveal-id="myModalIdentityCheck" data-animation="none"
                           href='
                            /userprogress'

                            >买卖进度查询
                        </a>
                    </dd>
                    <dd>
                        <a id="borrowingQuery" onclick="ga('send', 'event', 'yonghuzhongxinmulu', 'kehuzizhu', 'jiekuanxinxichaxun');"
                           data-reveal-id="myModalIdentityCheck" data-animation="none"
                           href='
                            /userborrow'

                            >借款信息查询
                        </a>
                    </dd>
                </dl>
            </li>
            -->
        </ul>
    </div>

    <div id="myModalIdentityCheck" class="reveal-modal" style="width:398px; margin-left:-199px; height:288px;">
        <!-- 核实身份信息 -->
        <div id="checkIdentity" class="qrsf_box1" style="display:block">
            <h4 class="qrsf_tit">为了保障您的账户隐私安全，请核实身份信息</h4>
            <ul class="clearfix qrsf_cont">
                <li class="clearfix inputBox verMid wj_p_info_bg wj_p_info" style="width:100%; position:relative;">
                    <span class="rH2BCTit" style="width:100px; display:inline-block;">手机号</span>
                    <input id="memberPhone" class="w136" type="text" maxlength="11" value="">
                    <a id="sendCheckCode" class="qrsf_yzm" href="javascript:;">发送验证码</a>
                    <!-- 重复发送验证码 -->
                    <a id="waitSendCode" class="qrsf_yzm qrsf_yzm_waite" href="javascript:;" style="display:none">59秒后重试</a>
                </li>
                <li class="clearfix inputBox verMid wj_p_info" style="width:100%;">
                    <span class="rH2BCTit fl" style="width:100px; display:inline-block;">有效证件</span>
                    <div id="identityType" class="filter_select select selectW89 fl selectBox" style="margin-right:0px; padding-right:0; width:88px;">
                        <p class="selectTit" style="width:55px;overflow:hidden" title="请选择" data-val="">请选择</p>
                        <div class="filter_sel selectCont" style="height:85px; width:88px">
                            <ul>
                            </ul>
                        </div>
                    </div>
                    <input id="identityCode" class="select_input" type="text" value="">
                </li>
                <li class="clearfix inputBox verMid wj_p_info_bg wj_p_info" style="width:100%;">
                    <span class="rH2BCTit" style="width:100px; display:inline-block;">验证码</span>
                    <input id="checkCode" class="w136" type="text" maxlength="4" value="" style="width:240px;">
                    <!-- 验证码错误 -->
                    <!--<input class="w136 qrsf_error" type="text" value="" style="width:240px;" value="568792">-->
                    <p class="qrsf_yzm_error" style="display:none">验证码错误</p>
                </li>
            </ul>
            <p class="wj_submit_box"><button id="btnCheckCustomer" class="wj_submit">提交</button></p>
        </div>
        <!-- 身份已核实 -->
        <div id="checkTrue" class="qrsf_box2" style="display:none">
            <div class="right_green"><img src="<%=request.getContextPath()%>/mt/imp/right_green.png" /></div>
            <h4 class="qrsf_tit">身份已核实<br />欢迎使用客户自助查询功能</h4>
            <p class="wj_submit_box"><button id="btnGoQuery" class="wj_submit">去查询</button></p>
        </div>
        <!-- 身份验证失败 -->
        <div id="checkFalse" class="qrsf_box3" style="display: none">
            <h4 class="qrsf_tit">对不起，身份验证失败<br>请重新录入身份核实信息</h4>
            <p class="wj_submit_box"><button id="btnReCheckUser" class="wj_submit wj_submit_red">重新验证</button></p>
        </div>
        <a class="close-reveal-modal wj_ico"></a>
    </div>

    <script type="text/javascript">
        $.ajax({
            type: "GET",
            url: '<%=request.getContextPath()%>/mt/Main.ashx',
            async: true,
            cache: false,
            data: "postType=get"
            + "&handler=" + 'MemberService_perm'
            + "&data=" + '{fucid:"GetMemberDateBase",data:""}'
            + "&debug=1",
            success: function (result) {
                result = eval("(" + result + ")");
                if (result.status == 200) {
                    var timestamp = Math.round(new Date().getTime() / 1000);
                    $('#imgLeftAvatar').attr("src", result.Picture + "?timestamp=" + timestamp);
                    $('#lblLeftNickName').html(result.NickName);
                    $('#memberPhone').val(result.Mobile);
                    if (result.IsAuthLogin == "true") {
                        $('#ddShowPassword').css("display", "none");
                    }
                }
            },
            error: function (err, e, a) {
                //args.error(err, e, a)
            }
        });

        var pageGoMarkId = "";
        $(function () {
            //失去焦点验证证件号
            $("#identityCode").blur(function () {
                if (!checkIdCardNO($("#identityType p.selectTit"), $(this))) {
                    return false;
                }
            });

            //验证客户自助是否已经通过身份验证，通过显示页面否则弹出审核窗口
            $("#researchPaper,#invoiceApply,#accountQuery,#progressQuery,#borrowingQuery").click(function () {
                var obj = $(this);
                pageGoMarkId = obj.attr("id");
                //var isCheck = true;
                var isCheck = CheckCustomerIsValid();
                if (!isCheck) {
                    //加载核实的身份类别
                    LoadCheckIdentityType();
                } else {
                    obj.removeAttr("data-reveal-id");
                    obj.removeAttr("data-animation");
                }
            });
            var wait = 60;
            //发送验证码定时器
            function time(o) {
                if (wait == 0) {
                    if (o.hasClass("qrsf_yzm_waite")) {
                        o.removeClass("qrsf_yzm_waite");
                    }
                    o.removeAttr("disabled");
                    o.text("发送验证码");
                    wait = 60;
                } else {
                    if (!o.hasClass("qrsf_yzm_waite")) {
                        o.addClass("qrsf_yzm_waite");
                    }
                    o.attr("disabled", true);
                    o.text(wait + "秒后重试");
                    wait--;
                    setTimeout(function () {
                            time(o)
                        },
                        1000)
                }
            }
            //发送验证码
            $("#sendCheckCode").click(function () {
                if ($(this).text() != "发送验证码") retrun;
                var $phone = $("#memberPhone");
                if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($.trim($phone.val()))) {
                    alert("温馨提示：请输入正确手机号！");
                    $phone.focus();
                    return false;
                }
                time($(this));
                var _parame = "{fucid:'GetCode',data:'" + $.trim($phone.val()) + ",4'}";
                GLOBAL.DataStore.DataHandle.postData({
                    url: GLOBAL.PageBase.ServiceURL,
                    handler: 'MemberBuy_perm',
                    parame: _parame,
                    debug: true,
                    success: function (data) {
                        if (data.status == '200') {
                            alert('温馨提示：验证码发送成功！');
                        }
                        else {
                            alert('温馨提示：验证码发送失败，请稍后再试');
                        }
                    }
                });
            });
            //提交审核
            $("#btnCheckCustomer").click(function(){
                var $phone = $("#memberPhone");
                if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($.trim($phone.val()))) {
                    alert("温馨提示：请输入正确手机号！");
                    $phone.focus();
                    return false;
                }
                var $identityType = $("#identityType .selectTit");
                if ($identityType.text() == "请选择") {
                    alert("温馨提示：请选择证件类型！");
                    $identityType.focus();
                    return false;
                }
                var $identityCode = $("#identityCode");
                if ($.trim($identityCode.val()) == "") {
                    alert("温馨提示：请输入证件号码！");
                    $identityCode.focus();
                    return false;
                }

                if (!checkIdCardNO($identityType, $identityCode)) {
                    return false;
                }
                var $checkCode = $("#checkCode");
                if ($.trim($checkCode.val()) == "" || $.trim($checkCode.val()).length < 4) {
                    alert("温馨提示：请输入有效的验证码！");
                    $checkCode.focus();
                    return false;
                }

                var dataParame = {
                    tel: $.trim($phone.val()),
                    idcardType: $identityType.attr("data-val"),
                    idcardNo: $.trim($identityCode.val()),
                    checkCode: $.trim($checkCode.val())
                }
                var _paramejson = JSON.stringify(dataParame);
                $.ajax({
                    url: "/Service/CustomerSelfServiceFun.ashx?funid=UserIdentityCheck",
                    type: "POST",
                    data: {
                        parame: _paramejson
                    },
                    dataType: "json",
                    success: function (data) {
                        if (data && data.code == "0") {//审核成功
                            $("#checkIdentity").hide();
                            $("#checkTrue").show();
                        } else {
                            if (typeof data != "undefined" && data.code == "3") { //验证码错误
                                alert(data.message);
                            } else {//审核失败
                                $("#checkIdentity").hide();
                                $("#checkFalse").show();
                            }
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        //alert(errorThrown);
                    }
                });
            });
            //跳转页面
            $("#btnGoQuery").click(function () {
                $("#myModalIdentityCheck").trigger('reveal:close');
                var obj;
                var gourl;
                switch (pageGoMarkId) {
                    case "researchPaper":
                        gourl = "/userpaper";
                        break;
                    case "invoiceApply":
                        gourl = "/userinvoice";
                        break;
                    case "accountQuery":
                        gourl = "/useraccount";
                        break;
                    case "progressQuery":
                        gourl = "/userprogress";
                        break;
                    case "borrowingQuery":
                        gourl = "/userborrow";
                        break;
                    default:
                        break;
                }
                window.location = gourl;
            });
            //重新验证
            $("#btnReCheckUser").click(function () {
                $("#checkIdentity").show();
                $("#checkTrue").hide();
                $("#checkFalse").hide();

                //$("#memberPhone").val("");
                var $identityType = $("#identityType .selectTit");
                $identityType.attr("data-val", "");
                $identityType.text("请选择");
                $("#identityCode").val("");
                $("#checkCode").val("");
            });

        });

        //验证客户是否审核通过
        function CheckCustomerIsValid() {
            var isCheck = false;
            var dataParame = {
                //memberName: $(".user_name").text()
            }
            var _paramejson = JSON.stringify(dataParame);
            $.ajax({
                url: "/Service/CustomerSelfServiceFun.ashx?funid=CheckCustomerIsValid",
                type: "POST",
                data: {
                    parame: ""
                },
                dataType: "json",
                async: false,
                success: function (data) {
                    if (data && data.code == "0") {
                        isCheck = true;
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    //alert(errorThrown);
                }
            });
            return isCheck;
        }
        //加载核实身份类别
        function LoadCheckIdentityType() {
            $.ajax({
                url: "/Service/CustomerSelfServiceFun.ashx?funid=IdentityType",
                type: "POST",
                data: {
                    parame: ""
                },
                dataType: "json",
                success: function (data) {
                    if (data && typeof data != "undefined") {
                        _bindSelect($("#identityType"), data.idCardTypes);//加载验证身份类型;
                    }
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    //alert(errorThrown);
                }
            });
        }
        /*下拉菜单绑定*/
        function _bindSelect(selobj, selvalue) {
            var seloption = "";
            seloption += '<li class="active" data-val="">' + "请选择" + '</li>';
            for (var i = 0; i < selvalue.length; i++) {
                $.each(selvalue[i], function (name, value) {
                    seloption += '<li style="width:84px; height:30px; overflow:hidden;" title="' + value + '" data-val="' + name + '">' + value + '</li>';
                });
            }
            selobj.find('div ul').html(seloption);
        }
        /* 验证证件类型
        身份证：15或18位（包括数字、字母）
        户口本：15或18位（包括数字、字母）
        军警身份证：15或18位（包括数字、字母）
        香港居民身份证：10位（包括数字、字母、括号）
        澳门居民身份证：10位（包括数字、字母、括号）
        来往大陆通行证：9位（包括数字、字母）
        护照：8-9位（包括数字、字母）
        公司营业执照：13位或15位（数字）
        */
        function checkIdCardNO(objType, objCode) {
            var identityTypeId = objType.attr("data-val");
            var identityCode = $.trim(objCode.val());
            var isValid = true;
            switch (identityTypeId) {
                case "1":
                    if (!/^[0-9]{17}[A-Za-z0-9]{1}$|^[0-9]{15}$/i.test(identityCode)) {
                        isValid = false;
                    }
                    break;
                case "2":
                    if (!/^[0-9a-zA-Z]{15}$|^[0-9a-zA-Z]{18}$/i.test(identityCode)) {
                        isValid = false;
                    }
                    break;
                case "3":
                    if (!/^[0-9a-zA-Z]{15}$|^[0-9a-zA-Z]{18}$/i.test(identityCode)) {
                        isValid = false;
                    }
                    break;
                case "4":
                case "5":
                    if (!/^[A-Za-z0-9\(\)]{10}$/i.test(identityCode)) {
                        isValid = false;
                    }
                    break;
                case "6":
                    if (!/^[A-Za-z0-9]{9}$/i.test(identityCode)) {
                        isValid = false;
                    }
                    break;
                case "7":
                    if (!/^[A-Za-z0-9]{8,9}$/i.test(identityCode)) {
                        isValid = false;
                    }
                    break;
                case "8":
                    if (!/^[0-9]{13}$|^[0-9]{15}$/i.test(identityCode)) {
                        isValid = false;
                    }
                    break;
                default:
                    if (objType.html() != "无") {
                        if (!/^[A-Za-z0-9]{1,25}$/i.test(identityCode)) {
                            isValid = false;
                        }
                    }
                    break;
            }
            if (!isValid) {
                alert("温馨提示：请输入有效的证件号码！");
                //objCode.focus();
                return false;
            }
            return true;
        }

    </script>

    <div id="right_bar" class="fr">
        <table cellpadding="1" cellspacing="1" class="myInfo">
            <thead>
            <th><lable>小区近期成交</lable></th>
            <th><lable>相关房源推荐</lable></th>
            <th><lable>近七天新增房源</lable></th>
            <th><lable>关注房源降价通知</lable></th>
            <th><lable>关注房产顾问</lable></th>
            </thead>
            <tr>
                <td><a id="AttentionRecentDealCount">0</a></td>
                <td><a id="AttentionRecommendedHouseCount">0</a></td>
                <td><a id="AttentionWeekTransactionCount">0</a></td>
                <td><a id="AttentionPriceNoticeCount">0</a></td>
                <td><a id="AttentionBorkerCount">0</a></td>
            </tr>
        </table>
        <div id="TimeAxis" class="timeZ"></div>
    </div>

    <!--Main end-->
</div>


<!--webIm-->

<!--webNIM-->
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=9Qqgu6wUHSFzaBdUfUTHnaIStqcynhwW"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/NIM_Web_NIM_v4.6.0.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/localStorage.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/WebNimCommon.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/mt/weixinAudio.js"></script>
<script type='text/javascript'>






    //异步加载js
    ~function () {
        var s = document.createElement('script');
        s.src = '../mt/netnim.js';
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
                        <img src="/Skin/img/load-indicator.gif" alt="loading..." />
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
                        <a href="/MTApp.jsp" target="_blank" title="下载麦田APP">立即下载麦田APP，随时随地聊~</a>
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





<div class="footer" style="padding: 0; height: auto; margin-top: 0">
    <div class="wrapper2 clearFix">
        <div class="footer-left fl">
            <ul class="website-map clearFix">
                <li><a target='_blank' onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'fuzhoufangchanwang');" href="http://fz.maitian.cn">福州房产网</a></li> <li><a target='_blank' onclick="ga('send', 'event', 'quanzhanyedi', 'daohang', 'xiamenfangchanwang');" href="http://xm.maitian.cn">厦门房产网</a></li>
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
<script type="text/javascript">
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

</script>

<script type='text/javascript'>

/*    var _scriptList = [
        '/mt/pagebase.js',
        '/mt/dataHandle.js',
        //'/scripts/pagekage/utils/widget/url/url.js',
        "/mt/pager.js",
        '/mt/MemberIndex.js'
    ];
    GLOBAL.Load(_scriptList, '', function () {
        GLOBAL.View.MemberIndex.Init();
    });*/

var name =  '<%=request.getParameter("name")%>';

$.ajax({
    url:"<%=request.getContextPath()%>/qt/queryuserjbzil",
    type:"post",
    data:{"name":name},
    dataType:"json",
    success:function (foul){

    }
})


</script>
<!--footer-->

</body>

</html>
