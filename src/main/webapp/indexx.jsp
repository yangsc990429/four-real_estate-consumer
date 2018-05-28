<!DOCTYPE HTML>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title></title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="generator" content="" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<link href="<%=request.getContextPath()%>/Fc/css/haiersoft.css" rel="stylesheet" type="text/css" media="screen,print" />
<link href="<%=request.getContextPath()%>/Fc/css/print.css" rel="stylesheet" type="text/css"  media="print" />

    <script src="<%=request.getContextPath()%>/Fc/js/jquery-1.10.1.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fc/js/side.js" type="text/javascript"></script>
<!--[if lt IE 9]>

<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
    <link href="<%=request.getContextPath() %>/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=request.getContextPath() %>/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/lineicons/style.css">
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/style-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bTabs-master/b.tabs.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.css">

</head>

<body>

<!-- wrap_left -->
<div class="wrap_left" id="frmTitle" name="fmTitle" style="width: 200px">
<!-- Logo -->
<div id="Logo"><span>人单合一</span></div>
<!-- /Logo -->

<!-- menu_list -->
<script>
$(function() {
    $(".menu_list dd");
    $(".menu_list dt").click(function(){
        $(this).toggleClass("open").next().slideToggle("fast");
    });
});
</script>
<div class="menu_list">

  <%--  <aside>
        <div id="sidebar"  class="nav-collapse " style="margin-top:50px">

            <!-- sidebar menu start-->
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <p class="centered"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></p>
                    <h5 class="centered"><%=request.getSession().getAttribute("username")%></h5>
                </li>
            </ul>
            <div id="treeas"></div>
            <!-- sidebar menu end-->
        </div>
    </aside>--%>

    <div id="treeas"></div>
</div>




<!-- /menu_list -->
</div>
<!-- /wrap_left -->

<!-- picBox -->
<div class="picBox" onclick="switchSysBar()" id="switchPoint"></div>
<!-- /picBox -->



<!-- wrap_right -->
<div class="wrap_right">
<header>
<!-- Header -->
<div id="Header">

    <%--<!-- Head -->
    <div id="Head">

    <script language="javascript">
    function showmenu(id){id.style.visibility = "visible";}
    function hidmenu(){UserList.style.visibility = "hidden";}
    document.onclick = hidmenu;
    </script>

            <h1 title="人单合一系统管理后台"><img src="<%=request.getContextPath()%>/Fc/images/common/page_ttl.gif" width="200" height="15" alt="人单合一系统管理后台"></h1>


    <div class="user" style="width:170px;height:48px;"><a href="javascript:showmenu(UserList)">admin</a>
    <div id="UserList"><a href="">修改</a>
    <a href="<%=request.getContextPath()%>/login.jsp">注销</a>
    <a href="<%=request.getContextPath()%>/login.jsp">退出</a></div>
    </div>
    </div>--%>
<!-- /Head -->
<nav>
<ul id="Navi">

<li><a href="javaScript:querytreess(1)"><img src="<%=request.getContextPath()%>/Fc/images/common/navi02.png" width="30" height="36" alt="全局设置"><span>全局设置</span></a></li>
<li><a href="javaScript:querytreess(2)"><img src="<%=request.getContextPath()%>/Fc/images/common/navi06.png" width="36" height="36" alt="会员管理"><span>会员管理</span></a></li>
<li><a href="javaScript:querytreess(3)"><img src="<%=request.getContextPath()%>/Fc/images/common/navi03.png" width="26" height="36" alt="咨询管理"><span>咨询管理</span></a></li>
<li><a href="javaScript:querytreess(4)"><img src="<%=request.getContextPath()%>/Fc/images/common/navi04.png" width="34" height="36" alt="房源管理"><span>房源管理</span></a></li>
<li><a href="javaScript:querytreess(5)"><img src="<%=request.getContextPath()%>/Fc/images/common/navi05.png" width="24" height="36" alt="楼盘小区"><span>楼盘小区</span></a></li>
<li><a href="javaScript:querytreess(6)"><img src="<%=request.getContextPath()%>/Fc/images/common/navi01.png" width="36" height="36" alt="家装馆"><span>家装馆</span></a></li>
<li><a href=""><img src="<%=request.getContextPath()%>/Fc/images/common/navi07.png" width="34" height="36" alt="资金支付-发票"><span>资金支付-发票</span></a></li>
<li class="active"><a href=""><img src="<%=request.getContextPath()%>/Fc/images/common/navi08.png" width="34" height="36" alt="产品管理信息"><span>产品管理信息</span></a></li>

<%--    <div class="user" style="width:170px;height:48px;"><a href="javascript:showmenu(UserList)">admin</a>
        <div id="UserList"><a href="">修改</a>
            <a href="<%=request.getContextPath()%>/login.jsp">注销</a>
            <a href="<%=request.getContextPath()%>/login.jsp">退出</a>
        </div>
    </div>--%>
</ul>

</nav>
</div>
<!-- /Header -->
</header>


<!-- Contents -->
<%--<div id="Contents">--%>

    <%--style="margin-top: 50px"--%>
    <div class="row"  id="xxkdiv">
        <div class="col-lg-9 main-chart" style="height:100%;width:100%">
            <div  style="height:100%;width:100%" class="span10" id="mainFrameTabs1">
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active noclose"><a href="#bTabs_navTabsMainPage" data-toggle="tab">首页</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="bTabs_navTabsMainPage">
                        <div style="text-align:center;font-size: 20px;line-height: 20px;">
                            <div id="shineflip"  style="margin-top: 70px;margin-left: 100px">
                                <div id="shineflip-pages">
                                    <canvas id="shineflip-canvas"></canvas>
                                    <canvas id="shineflip-page-mid-canvas"></canvas>
                                </div></div></div></div></div></div>
        </div><!-- /col-lg-9 END SECTION MIDDLE -->
    <%--</div>--%><!--/row -->



<script type="text/javascript">
$(function(){
$(".select").each(function(){
var s=$(this);
var z=parseInt(s.css("z-index"));
var dt=$(this).children("dt");
var dd=$(this).children("dd");
var _show=function(){dd.slideDown(200);dt.addClass("cur");s.css("z-index",z+1);};
var _hide=function(){dd.slideUp(200);dt.removeClass("cur");s.css("z-index",z);};
dt.click(function(){dd.is(":hidden")?_show():_hide();});
dd.find("a").click(function(){dt.html($(this).html());_hide();});
$("body").click(function(i){ !$(i.target).parents(".select").first().is(s) ? _hide():"";});})})
</script>
<%--<!-- TopMain -->
<div id="TopMain">
<!-- selectbox -->
<div class="selectbox floatL mag_r20">
<span class="sttl">年度：</span>
<dl class="select" style="width:200px;">
<dt>全部</dt>
<dd><ul>
<li><a href="#">选项选项A</a></li>
<li><a href="#">选项选项B</a></li>
<li><a href="#">选项选项C</a></li>
<li><a href="#">选项选项D</a></li>
<li><a href="#">选项选项E</a></li>
</ul></dd></dl>
</div>
<!-- /selectbox -->

<!-- selectbox -->
<div class="selectbox floatL mag_r20">
<span class="sttl">部门：</span>
<dl class="select" style="width:200px;">
<dt>全部</dt>
<dd><ul>
<li><a href="#">选项选项A</a></li>
<li><a href="#">选项选项B</a></li>
<li><a href="#">选项选项C</a></li>
<li><a href="#">选项选项D</a></li>
<li><a href="#">选项选项E</a></li>
</ul></dd></dl>
</div>
<!-- /selectbox -->

<!-- btn_box -->
<div class="btn_box floatL"><input name="" type="button" value="查询" onmousemove="this.className='input_move'" onmouseout="this.className='input_out'"></div>
<!-- /btn_box -->
</div>
<!-- /TopMain -->--%>

<%--    <div id="MainForm">
        <div class="form_boxA">--%>
<%--    <section id="main-content">
        <section class="wrapper">--%>





 <%--       </section>
    </section>--%>
<%--        </div>
    </div>--%>








<!-- MainForm -->
<%--<div id="MainForm">
<div class="form_boxA">

    <div   style="height:630px;width:1400px;border: solid red" class="span10" id="mainFrameTabs1">
<h2>年度预算列表</h2>

<p class="msg">共找到47条年度预算记录，当前显示从第1条至第10条</p>
</div>
</div>
<!-- /MainForm -->
</div>--%>


   <%-- <script src="<%=request.getContextPath() %>/assets/js/jquery.js"></script>--%>
    <script src="<%=request.getContextPath() %>/assets/js/jquery.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath()%>/Fc/js/jquery-1.10.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/jquery.scrollTo.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="<%=request.getContextPath() %>/assets/js/jquery.sparkline.js"></script>
    <!--common script for all pages-->
    <script src="<%=request.getContextPath() %>/assets/js/common-scripts.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/gritter-conf.js"></script>
    <!--script for this page-->
    <script src="<%=request.getContextPath() %>/assets/js/sparkline-chart.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/zabuto_calendar.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/bTabs-master/b.tabs.min.js"></script>
    <script src="<%=request.getContextPath() %>/assets/js/chart-master/Chart.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>

    <!-- -------------------------------------->
<script type="text/javascript">


    function getTreeData(obj){

        var tree_data = "";
        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/querytree?id="+obj,
            type:"post",
            dataType:"json",
            async:false,
            success:function(data){
                tree_data = data;
            }
        });
        return tree_data;
    }
$(function(){
    querytreess(1);
})


   function querytreess(aass) {

        $("#xxkdiv").html('<div class="col-lg-9 main-chart" style="height:100%;width:100%">\n' +
            '                    <div   style="height:100%;width:100%" class="span10" id="mainFrameTabs1">\n' +
            '                        <ul class="nav nav-tabs" role="tablist">\n' +
            '                            <li role="presentation" class="active noclose"><a href="#bTabs_navTabsMainPage" data-toggle="tab">首页</a></li>\n' +
            '                        </ul>\n' +
            '                        <div class="tab-content">\n' +
            '                            <div class="tab-pane active" id="bTabs_navTabsMainPage">\n' +
            '                                <div style="text-align:center;font-size: 20px;line-height: 20px;">\n' +
            '                                    <div id="shineflip"  style="margin-top: 70px;margin-left: 100px">\n' +
            '                                        <div id="shineflip-pages">\n' +
            '                                            <canvas id="shineflip-canvas"></canvas>\n' +
            '                                            <canvas id="shineflip-page-mid-canvas"></canvas>\n' +
            '                                        </div></div></div></div></div></div>')

/*       $("li").toggleClass("active");
       /!* $("li").addClass("active");*!/

       /!* $("li.active").prev().css("");*!/
       /!*alert($(aass).prop());*!/
       console.info($(aass).first().prev().prev())
       $(aass).prev().prev().prev().prev().each(function (i) {
           if (i > 1) {
               /!*        $(aass).next().remove();*!/
           }
       })*/


       $('#treeas').treeview({
           data: getTreeData(aass),
           color: "#ffffff",
           backColor: "#333333",
           onhoverColor: "#66ffff",
           expandIcon: "glyphicon glyphicon-globe",//父级关闭时的样式
           emptyIcon: "",//子节点的样式
           collapseIcon: "glyphicon glyphicon-stop",//父级展开时的样式

           onNodeSelected: function (event, data) {
                   $('#mainFrameTabs1').bTabsAdd(data.id, data.text, data.url);

           }
       });


      $('#mainFrameTabs1').bTabs({
           'resize': function () {
               //这里只是个样例，具体的情况需要计算
               $('#mainFrameTabs1').height(570);
           }
       })

       /*        var shineFlip = new ShineFlip({
                   width: 950,
                   height: 482,
                   page_width: 475,
                   page_height: 482
               });*/
   }
   /*$(function (){*/
    function getTreeDatasss() {
        $.ajax({
            url: "<%=request.getContextPath()%>/lfq/querytree",
            type: "post",
            dataType: "json",
            async: false,
            success: function (node) {
                $.each(node, function (index, obj) {
                    alert(index)
                    var id = obj.text;
                    alert(id);
                    $('#aa').accordion('add', {
                        title: obj.atext,

                        selected: false,
                        content: '<div style="padding:10px"><ul id="tree-' + id + '"  class="easyui-tree"></ul></div>',
                    })
                    $('#tree-' + id).tree({
                        url: '<%=request.getContextPath()%>/aaa/querynode.do?xid=' + id,
                        async: false,
                        lines: true,
                        onClick: function (node) {
                            if ($("#tt").tabs('exists', node.text)) {
                                $("#tt").tabs('select', node.text)
                            } else {
                                $("#tt").tabs('add', {
                                    title: node.text,
                                    href: '<%=request.getContextPath()%>/' + node.url,
                                    closable: true
                                })
                            }
                        }
                    })
                });
            },
            error: function () {
                alert("系统错误，请使用debug调试 ！！！");
            }
        })
    }
/*    });*/
</script>

<!-- PageNum -->
<%--<ul id="PageNum">
<li><a href="">首页</a></li>
<li><a href="">上一页</a></li>
<li><a href="">1</a></li>
<li><a href="">2</a></li>
<li><a href="">3</a></li>
<li><a href="">4</a></li>
<li><a href="">5</a></li>
<li><a href="">6</a></li>
<li><a href="">下一页</a></li>
<li><a href="">尾页</a></li>
</ul>--%>
<!-- /PageNum -->
</div>
<!-- /Contents -->

<!-- /footer -->
<%--<footer>
<address>电子邮箱：sales@haiersoft.com  技术支持：人单合一平台项目组<br>青岛海尔软件有限公司版权所有  Copyright &copy; 2015 Haiersoft Corporation, All Rights.</address>
</footer>--%>
<!-- /footer -->

</div>
<!-- /wrap_right -->
</body>
</html>