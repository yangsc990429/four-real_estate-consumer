<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-29
  Time: 下午 05:27
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
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

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
        <div class="login_logo" onclick="ga('send', 'event', 'dengluyetou', 'logo', 'logo');"><a href="<%=request.getContextPath()%>/mtzx.jsp"><img src="<%=request.getContextPath()%>/mt/imp/login_logo.png"></a></div>
        <p>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'shouye');" href='/Index.html'>首页</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'ershoufang');" href='/esfall'>二手房</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'zulin');" href='/zfall'>租房</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'xiaoqu');" href='/xqall'>小区</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'jingjiren');" href='/bkesf'>房产顾问</a>
            <!--<a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'VIP');" href='/viphouse.html'>麦田房源</a>-->
            <a onclick=" ga('send', 'event', 'quanzhanyetou', 'zhudaohang', 'woyaomaifang'); " href='/membersell'>委托</a>
            <a onclick="ga('send', 'event', 'dengluyetou', 'zhudaohang', 'APP');" href='/MTApp.jsp'>麦田APP</a>

        </p>
        <ul><a id="btnQQLogin" href="javascript:" onclick="ga('send', 'event', 'denglu', 'lianhedenglu', 'qqhaodenglu');" class="qq"><i class="mai-ico"></i>用QQ号码登录</a><a onclick="ga('send', 'event', 'denglu', 'lianhedenglu', 'xinlanweibodenglu');" id="btnSinaLogin" href="javascript:" class="weibo"><i class="mai-ico"></i>用新浪微博登录</a><!--<wb:login-button type="3,2" onlogin="login" onlogout="logout"></wb:login-button>--></ul>
    </div>
    <div class="login_frame details clearfix">
        <label class="go_reg">还没有麦田账号?<a onclick="ga('send', 'event', 'denglu', 'maitianzaixiandenglu', 'mashangzhuce');" href='<%=request.getContextPath()%>/zhuce.jsp'>马上注册</a></label>
        <p><span tab="0" class="cur_tab">手机短信登录</span>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<%--<span tab="1">已有账号登录</span>--%></p>
        <form id="usereForm">
           <ul class="FancyForm " style="display: block" id="ulMobileVerify">
               <li>
                   <span class="label-name">用户名或密码</span>
                   <i class="mai-ico"></i>
                   <input id="txtLoginName" name="username" type='text' maxlength="11" placeholder="请输入用户名或密码"/>
                   <%--<label>请输入手机号码</label>--%>
                   <span class="fff"></span>
               </li>
               <li>
                   <span class="label-name">密码</span>
                   <i class="mai-ico password"></i>
                   <input id="txtPassword" name="userpass" type="password" maxlength="16" placeholder="请输入密码">
                   <%--<label>请输入密码</label>--%>
                   <span class="fff"></span>
               </li>
               <li>
                   <dl class="clearfix">
                       <dd class="fl"><input style="width:20px" id="isAutoLogin" type="checkbox" onchange="ga('send', 'event', 'denglu', 'maitianzaixiandenglu', 'xiacizidongdenglu');">下次自动登录</dd>
                       <dd class="fr"><a onclick="ga('send', 'event', 'denglu', 'maitianzaixiandenglu', 'zhaohuimima');" href='/userforget'>找回密码</a></dd>

                   </dl>
               </li>
            </ul>
            <ul class="FancyForm FancyForm2">

            </ul>
        </form>

        <div class="btn-box"><a onclick="dengluuser()" href='javascript:' id="btnLogin">立即登录</a></div>
    </div>

    <div class="footer" style="background:none;">北京麦田房产经纪有限公司&nbsp;&nbsp;&nbsp;京ICP备 13011372号-1Copyright©2014 北京麦田房产经纪有限公司保留所有权利</div>
    <script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
    <script type='text/javascript'>
        var sendTime = 0;
        $(function () {
            $('.details p span').click(function () {
                $('.details p span').removeClass('cur_tab');
                $(this).addClass('cur_tab');
                $('.details ul').css('display', 'none');
                $('.details ul').eq($(this).attr('tab')).css('display', 'block');
                //$('#btnPsd').css('display', 'none');
            });
        });

        var _scriptList = [
            '<%=request.getContextPath()%>/mt/dataHandle.js',
            //'/scripts/pagekage/utils/widget/url/url.js',
            "<%=request.getContextPath()%>/mt/pager.js",
            '<%=request.getContextPath()%>/mt/MemberLogin.js'
        ];
      /*  GLOBAL.Load(_scriptList, '', function () {
            GLOBAL.View.MemberLogin.Init();
        });*/
        //document.body.onload = function () {
        //    alert(test);
        //}
        //var test = '';
        
        
        //登陆
        function dengluuser() {

            $.ajax({
                url:"<%=request.getContextPath()%>/qt/querydengluuser",
                type:"post",
                data:$("#usereForm").serialize(),
                dataType:"text",
                success:function (foul){
                    if(foul == "success"){
                        /*alert("登陆成功");*/
                        location.href="<%=request.getContextPath()%>/index.jsp";

                    }else if(foul == "mimacuowu"){

                        alert("密码错误");

                    }else if(foul == "yhsjkong"){

                        alert("用户名或手机号不存在");
                    }
                }
            })

        }
        
        
        
    </script>


</div>



</body>
</html>
