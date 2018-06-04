<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-29
  Time: 下午 09:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE =Edge,chrome =1">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/base.css-version=2.0-1.0.css" tppabs="http://bj.maitian.cn/skin/css/base.css?version=2.0.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/mt/login_register.css-version=3.0.0.css" tppabs="http://bj.maitian.cn/Skin/css/login_register.css?version=3.0.0">
    <link href="<%=request.getContextPath()%>/mt/Favicon.ico.ico" type="image/x-icon" rel=icon>
    <link href="<%=request.getContextPath()%>/mt/Favicon.ico.ico" type="image/x-icon" rel="shortcut icon">
    <script type='text/javascript' src="<%=request.getContextPath()%>/mt/init.js" tppabs="http://bj.maitian.cn/Scripts/pagekage/common/init.js"></script>
    <!--<script type='text/javascript' src='/scripts/pages/base/pagebase.js'></script>-->
    <!--<script src="/Skin/js/jquery.min.js?version=2.0.0"></script>-->
    <!--<script src="/Skin/js/jquery_plug_in.js?version=2.0.0"></script>-->
    <script type="text/javascript" src="<%=request.getContextPath()%>/mt/qc_loader.js" tppabs="http://qzonestyle.gtimg.cn/qzone/openapi/qc_loader.js" data-appid="101321688" data-redirecturi="http://bj.maitian.cn/Service/AuthLoginQQ.ashx" charset="utf-8"></script>
    <script src="<%=request.getContextPath()%>/mt/wb.js-appkey=226422212" tppabs="http://tjs.sjs.sinajs.cn/open/api/js/wb.js?appkey=226422212" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/mt/client.js" tppabs="http://tjs.sjs.sinajs.cn/t35/apps/opent/js/frames/client.js" language="JavaScript"></script>
    <style type="text/css">
        #authDiv {
            position: absolute !important;
        }
    </style>

    <script src="<%=request.getContextPath()%>/mt/Common.js" tppabs="http://bj.maitian.cn/VIEW/Shared/Common.js"></script>
</head>

<body>
<!--CommonBody-->
<div style="display:none;">
    <script type="text/javascript">
        //  var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cspan id='cnzz_stat_icon_1255180190'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s95.cnzz.com/z_stat.php%3Fid%3D1255180190%26show%3Dpic1' type='text/javascript'%3E%3C/script%3E"));
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
                m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'analytics.js'/*tpa=http://www.google-analytics.com/analytics.js*/, 'ga');

        ga('create', 'UA-66928601-1', 'auto');
        ga('send', 'pageview');
    </script>
</div>
<!--login-->
<div class="login_bg">
    <ul>
        <li class="one"></li>
        <li class="two"></li>
        <li class="three"></li>
        <li class="four"></li>
        <li class="five"></li>
        <li class="six"></li>
    </ul>
</div>
<div class="login">
    <div class="login_frame lc_nav">
        <div class="login_logo"><a href="<%=request.getContextPath()%>/mtzx.jsp" tppabs="http://bj.maitian.cn/index.html"><img src="<%=request.getContextPath()%>/mt/imp/login_logo-1.png" tppabs="http://bj.maitian.cn/Skin/img/login_logo.png"></a></div>
        <p style="width: 650px;">
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'shouye');" href="Index.html" tppabs="http://bj.maitian.cn/Index.html">首页</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'ershoufang');" href="esfall.htm" tppabs="http://bj.maitian.cn/esfall">二手房</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'zulin');" href="zfall.htm" tppabs="http://bj.maitian.cn/zfall">租房</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'xiaoqu');" href="xqall.htm" tppabs="http://bj.maitian.cn/xqall">小区</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'jingjiren');" href="bkesf.htm" tppabs="http://bj.maitian.cn/bkesf">房产顾问</a>
            <!--<a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'VIP');" href='/viphouse.html'>麦田房源</a>-->
            <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'woyaomaifang'); " href="membersell.htm" tppabs="http://bj.maitian.cn/membersell">委托</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'APP');" href="MTApp.jsp" tppabs="http://bj.maitian.cn/MTApp.html">麦田APP</a>

        </p>
        <ul><a onclick="ga('send', 'event', 'denglu', 'lianhedenglu', 'qqhaodenglu');" id="btnQQLogin" href="javascript:" class="qq"><i class="mai-ico"></i>用QQ号码登录</a><a onclick="ga('send', 'event', 'denglu', 'lianhedenglu', 'xinlanweibodenglu');" id="btnSinaLogin" href="javascript:" class="weibo"><i class="mai-ico"></i>用新浪微博登录</a><!--<wb:login-button type="3,2" onlogin="login" onlogout="logout"></wb:login-button>--></ul>
    </div>
    <div class="login_frame details clearfix" style="height:650px">
        <form id="userform" >
        <p><span><i class="mai-ico pen"></i>注册麦田在线</span><label>已有麦田账号?<a onclick="ga('send', 'event', 'zhuce', 'maitianzaixianzhuce', 'zhijiedenlgu');" href="<%=request.getContextPath()%>/userlogin.jsp" tppabs="http://bj.maitian.cn/userlogin">直接登录</a></label></p>

        <ul class="FancyForm clearfix FancyForm2 ">

            <li><span class="label-name">用户名</span><i class="mai-ico red_star"></i><input name="username" type="text" maxlength="16" placeholder="请输入用户名"><span class="fff"></span></li>

            <li><span class="label-name">密码</span><i class="mai-ico red_star"></i><input id="userpass" name="userpass"  type="password" maxlength="16" placeholder="请输入密码（6-16位数字、字母组合）"><span class="fff"></span></li>
            <li><span class="label-name">确认密码</span><i class="mai-ico red_star"></i><input id="chong" onblur="qurenpass()" type="password" maxlength="16" placeholder="请再输入一次密码"><span class="fff"></span><span id="msg"></span></li>
            <li>
                <div class="sendm"><a href='javascript:' id="btnSendCode" onclick="fasongyanzhengma()" class="mai-ico">发送验证码</a></div>
                <span class="label-name">手机号</span><i class="mai-ico red_star"></i><input name="userphone" type="text" maxlength="11"  placeholder="请输入您正确的手机号码"/><span class="fff"></span><span id="shjh"></span>
            </li>
            <li><span class="label-name">手机验证码</span><i class="mai-ico red_star"></i><input name="yanzhengma" type="text" maxlength="6" placeholder="请输入短信验证码"><span class="fff"></span></li>
            <%--<li style=" display:none">
                <div class="sendm"><a onclick="ga('send', 'event', 'zhuce', 'maitianzaixianzhuce', 'shuduilema');" id="btnCheckBrokerNO" href="javascript:" class="mai-ico">输对了么？</a></div>
                <span class="label-name">推荐人</span><input onfocus="ga('send', 'event', 'zhuce', 'maitianzaixianzhuce', 'tuijianren');" id="txtBrokerNO" maxlength="12" type="text" style="background:url(../skin/img/transparent_bg2.png);"><label>请输入推荐人系统号</label><span class="fff"></span>
            </li>--%>
        </ul>

        <%--<span class="label-name">手机号</span><i class="mai-ico red_star"></i><input onfocus="ga('send', 'event', 'zhuce', 'maitianzaixianzhuce', 'shurushoujihao');this.type='text';" autocomplete="off" id="txtPhone" type="text" maxlength="11" style="background:url(../mt/imp/transparent_bg2.png);" /><label>请输入您正确的手机号码</label><span class="fff"></span>--%>

        <dl class="clearfix">
            <dd class="fl" style="width:auto"><input id="isOk" onchange="ga('send', 'event', 'zhuce', 'maitianzaixianzhuce', 'tongyixieyi');" type="checkbox">我已阅读并同意<a href="useragree.htm" tppabs="http://bj.maitian.cn/useragree" class="red">《麦田用户使用协议》</a></dd>
        </dl>
        <div class="btn-box"><a href='javascript:' onclick="zhuceuser()" id="btnAdd">注 册</a></div>
        <div class="clear"></div>
        </form>
    </div>
    <div class="footer" style="background:none;">北京麦田房产经纪有限公司&nbsp;&nbsp;&nbsp;京ICP备 13011372号-1Copyright©2014 北京麦田房产经纪有限公司保留所有权利</div>
    <script type='text/javascript'>
        var _scriptList = [
            //'pagebase.js'/*tpa=http://bj.maitian.cn/scripts/pages/base/pagebase.js*/,
            '<%=request.getContextPath()%>/mt/dataHandle.js'/*tpa=http://bj.maitian.cn/scripts/pagekage/datastore/dataHandle.js*/,
            //'url.js'/*tpa=http://bj.maitian.cn/scripts/pagekage/utils/widget/url/url.js*/,
            "<%=request.getContextPath()%>/mt/pager.js"/*tpa=http://bj.maitian.cn/Scripts/pagekage/utils/widget/pager/pager.js*/,
            '<%=request.getContextPath()%>/mt/MemberRegist.js'/*tpa=http://bj.maitian.cn/VIEW/Member/MemberRegist.js*/
        ];
        GLOBAL.Load(_scriptList, '', function () {
            GLOBAL.View.MemberRegist.Init();
        });
        var RegionJson = $.parseJSON('');
    </script>

</div>


<!-- 新增20151105 -->
<div id="codeInput"></div>
<div id="codeBox">
    <div class="clearfix codeBoxHeader"><h4 class="fl">请输入验证码</h4><a href="javascript:;" class="fr mai-ico closeCodeBox"></a></div>
    <p class="clearfix codeCont">
        <img src="http://bj.maitian.cn/Service/IdentifyingCode.ashx" tppabs="http://bj.maitian.cn/Service/IdentifyingCode.ashx" onclick="javascript: LoadCode();" id="imgCode" alt="验证码" />
        <a href="javascript:;" onclick="javascript:LoadCode();">换一组</a>
    </p>
    <p class="inputCodeBox"><input class="inputCode inputCodeTip" type="text" value="输入上图所示验证码" /><span class="errorTip">验证码有误，请重新输入</span></p>
    <button class="codeSureBtn">确定</button>
</div>


<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>

<script>
   $('.closeCodeBox').click(function () {
        $('#codeInput').css('display', 'none');
        $('#codeBox').css('display', 'none');
    })


      /*$('.sendm').click(function () {

               if ($("#btnSendCode").html() != "发送验证码") {
                  return;
              }
            var $phone = $("#txtPhone");
              if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test($phone.val())) {
                  alert("温馨提示：请输入正确手机号！");
                  $phone.focus();
                  return;
              }

        var L = ($(window).width() - $('#codeBox').width()) / 2;
        var T = ($(window).height() - $('#codeBox').height()) / 2 + $(document).scrollTop();
        $('#codeBox').css({ left: L, top: T });
        $('#codeInput').css('display', 'block');
        $('#codeBox').css('display', 'block');
        // 刷新验证码
        LoadCode()
    })
    $('.inputCode').focus(function () {
        if ($(this).val() == '输入上图所示验证码') {
            $(this).val('');
        }
        $(this).removeClass('inputCodeTip');
    })
    $('.inputCode').blur(function () {
        if ($(this).val() == '') {
            $(this).addClass('inputCodeTip');
            $(this).val('输入上图所示验证码');
        }

    })*/




    //------------

   //确认密码
   function qurenpass() {

       var pass = $("#userpass").val();
       var chong = $("#chong").val();

       if (chong != pass){
           $("#msg").html("<font color='red'>两次密码不同</font>");
       }else {
           $("#msg").html("");
       }
   }

   //发送验证码
   function fasongyanzhengma() {

       var phone = $("[name='userphone']").val();
       if (!/^(13[0-9]|14[0-9]|15[0-9]|16[0-9]|17[0-9]|18[0-9])\d{8}$/i.test(phone)) {
           $("#shjh").html("<font color='red'>请输入正确的手机号</font>");
       }else {
           $("#shjh").html("");

           $.ajax({
               url:"<%=request.getContextPath()%>/qt/fasongyzm",
               type:"post",
               data:{"phone":phone},
               dataType:"text",
               success:function (data){
                        alert(data);
                        if (data == "yzm"){
                            alert("发送成功");
                        }
               }
           })
       }
   }



   //注册
   function zhuceuser(){

           $.ajax({
               url:"<%=request.getContextPath()%>/qt/zhuceuser",
               type:"post",
               data:$("#userform").serialize(),
               dataType:"text",
               success:function (data){
                   if(data == "addsuccess"){
                       alert("注册成功");
                       location.href="<%=request.getContextPath()%>/userlogin.jsp";
                   }else if(data == "error"){
                       alert("验证码错误");
                   }

               }
           })
   }







</script>


</body>
</html>
