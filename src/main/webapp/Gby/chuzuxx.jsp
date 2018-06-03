<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>home</title>

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
</head>
<style type="text/css">

    element.style {
    }
    .user-img-div img {
    }
</style>
<body>
<div id="wrapper">
    <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">

        <table >
            <tr>
                <td ><img alt=""  height="175px" src="<%=request.getContextPath() %>/js/QQ图片20180516200910.jpg"></td>
            </tr>
        </table>

    </nav>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">


        <div class="row">
            <nav class="navbar-default navbar-side" role="navigation" style="width:275px;height:700xp;">
                <div >
                    <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;房地产网站</h3>
                </div>
                <div >
                    <img src="<%=request.getContextPath() %>/img/touxiang1%20(2).jpg" class="img-thumbnail" />


                </div>
                <!-- 	树 -->
                <div >
                    <div id="tree-div" style="color:black" ></div>
                </div>
                <!-- 		选项卡 -->
            </nav>
        </div>
    <input type="hidden" value="${userid}" name="userid" >

    </nav>

    <div id="page-wrapper">
        <div id="page-inner">
            <!-- <div class="row">
                <div class="col-md-12">
                    <h1 class="page-head-line">BLANK PAGE</h1>
                    <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1>

                </div>
            </div> -->
            <!-- /. ROW  -->
            <!-- <div class="row">
                <div class="col-md-12">

                </div>
            </div> -->
            <!-- 中间开始 -->
            <iframe width="420" scrolling="no" height="60" frameborder="0" allowtransparency="true" src="http://i.tianqi.com/index.php?c=code&id=12&icon=1&num=5&site=12"></iframe>
            <div>
                <ul id="myTab" class="nav nav-tabs"></ul>
                <!--想要打开tab页内容，需要把对应的ul和要打开的内容tab放在一个div里  -->
                <div class="tab-content"></div>
            </div>
            <!-- 中间开始 -->
            <%--<center><font size="10">欢迎来到房地产项目</font></center>--%>
            <div class="container">
                <div class="row clearfix">
                    <div class="col-md-12 column">
                        <div class="tabbable" id="tabs-233291">
                            <ul class="nav nav-tabs">
                                <li class="active">
                                    <a href="#panel-590035" data-toggle="tab">出租信息</a>
                                </li>
                                <li>
                                    <a href="<%=request.getContextPath()%>/success.jsp" >返回列表</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="panel-590035">
                                    <p>
                                    <center>
                                        <form id="chuzuForm">
                                         <input type="hidden" name="chuzuid" value="${list[0].chuzuid}">
                                            <input type="hidden" name="id"  value="${list[0].id}">
                                            <table>
                                                <tr>
                                                    <td>出租类型:</td>
                                                    <td>
                                                        <input type="text"  style="width:300px;"class="form-control"  value="${list[0].name}" ><font size="2"> [修改类型]</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>* 标题:</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control" name="chuzuname" value="${list[0].chuzuname}"   >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>自定义编号:</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control" name="zdybianhao" value="${list[0].zdybianhao}">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>* 面积:</td>
                                                    <td>
                                                        <input type="text"  style="width:300px;" class="form-control" name="chuzumianji" value="${list[0].chuzumianji}" >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>租金:</td>
                                                    <td>
                                                        <input type="text"  style="width:100px;" class="form-control" name="chuzuzujin" value="${list[0].chuzuzujin}" >
                                                        <select name="chuzuzujin"  class="form-control" style="width:200px;">
                                                            <option value="" >元/年</option>
                                                            <option value="" >元/季</option>
                                                            <option value="" >元/天</option>
                                                            <option value="" >元/月</option>
                                                            <option value="" >元/半年</option>
                                                </select>
                                                        <select name="chuzuzujin"  class="form-control" style="width:200px;">
                                                            <option value="" >付3押1</option>
                                                            <option value="" >付1押1</option>
                                                            <option value="" >付2押1</option>
                                                            <option value="" >付1押2</option>
                                                            <option value="" >年付不押</option>
                                                            <option value="" >半年付不押</option>
                                                            <option value="" >面议</option>
                                                        </select><font size="1">(小提示：不填表示面议)</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>转让费：</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control" name="chuzuzrf" value="${list[0].chuzuzrf}" ><font size="2">万(小提示：不填表示无转让费)</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>出租方式：</td>
                                                    <td>
                                                        <input type="radio" checked name="chuzufs" value="整租">整租
                                                        <input type="radio"  name="chuzufs" value="合租">合租
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>所在小区：</td>
                                                    <td>
                                                        <input type="text"  style="width:300px;" class="form-control" name="chuzuszxq" value="${list[0].chuzuszxq}" >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>楼层：</td>
                                                    <td>
                                                        <font size="2">第</font><input style="width:100px;" type="text" class="form-control" name="chuzulouc" value="1"><font size="2">层</font>
                                                    <font size="2">共</font><input  style="width:100px;" type="text" class="form-control"value="2" ><font size="2">层</font><font size="1">(小提示：如不清楚总共几层，可以不用填写楼层总数)</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>所在区域:</td>
                                                    <td>
                                                        <select name="chuzuqypid"  class="form-control" style="width:200px;">
                                                            <option value="" >---请选择---</option>
                                                        </select>
                                                        <select name="areaid"  class="form-control" style="width:200px;">
                                                            <option value="" >---请选择---</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>* 具体位置:</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control" name="chuzuwz"  value="${list[0].chuzuwz}" >
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>效果图:</td>
                                                    <td>
                                                        <input type="hidden" name="chuzuxgt" id="dwimg4">

                                                        <input id="dwimg5" name="file" type="file" multiple data-min-file-count="1" size="500">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        公交线路
                                                    </td>
                                                    <td>
                                                        <span id="gongjiao"></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>地铁线路:</td>
                                                    <td>
                                                        <span id="ditie"></span>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>行业类型：</td>
                                                    <td>
                                                        <select  style="width:300px;" class="form-control" name="hangyelxid" width="100px">
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>商铺类型：</td>
                                                    <td>
                                                       <%-- <select name="id"  class="form-control" style="width:200px;">
                                                            <option value="" >--请选择--</option>
                                                        </select>
                                                        <select name="pumianid"  class="form-control" style="width:200px;">
                                                            <option value="" >--请选择--</option>
                                                        </select>--%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>物业费：</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control" name="wuyefei"  value="${list[0].wuyefei}" >
                                                        <font size="1">(小提示：如不清楚或没有物业费，可以留空)</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>房屋情况:</td>
                                                    <td>
                                                        <select name="fwqkid"  class="form-control" style="width:200px;">
                                                            <option value="" >--请选择--</option>
                                                        </select>
                                                        <select name="chaoxiangid"  class="form-control" style="width:200px;">
                                                            <option value="" >--请选择--</option>
                                                        </select>
                                                        <select name="areaid"  class="form-control" style="width:200px;">
                                                            <option value="1" >建筑年代</option>
                                                            <option value="1" >2018年</option>
                                                            <option value="1" >2017年</option>
                                                            <option value="1" >2016年</option>
                                                            <option value="1" >2015年</option>
                                                            <option value="1" >2014年</option>
                                                            <option value="1" >2013年</option>
                                                            <option value="1" >2012年</option>
                                                            <option value="1" >2011年</option>
                                                            <option value="1" >2010年</option>
                                                            <option value="1" >2009年</option>
                                                            <option value="1" >2008年</option>
                                                            <option value="1" >2007年</option>
                                                            <option value="1" >2006年</option>
                                                            <option value="1" >2005年</option>
                                                            <option value="1" >2004年</option>
                                                            <option value="1" >2003年</option>
                                                            <option value="1" >2002年</option>
                                                        </select>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>物业特色：</td>
                                                    <td>
                                                        <span id="wuye"></span>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>配套设施：</td>
                                                    <td>
                                                        <span id="peitao"></span>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>街景代码：</td>
                                                    <td>
                                                        <textarea  name="chuzujjdm">......</textarea>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>视频地址：</td>
                                                    <td>
                                                        <input type="text"  style="width:300px;" class="form-control" value="${list[0].zhuzuspdz}" name="zhuzuspdz"  >
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>详细描述：</td>
                                                    <td>
                                                        <textarea name="chuzuxxms">......</textarea>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>上架/下架：</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control"  value="${list[0].chuzusxj}" name="chuzusxj"  >
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>* 橱窗推荐：</td>
                                                    <td>
                                                        <input type="radio" checked name="chuzucctj" value="推荐">推荐
                                                        <input type="radio"  name="chuzucctj" value="普通展示">普通展示
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>* 联系人：</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control" name="chuzulxr"  value="${list[0].chuzulxr}">
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>* 联系号码：</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control" name="chuzulxhm"  value="${list[0].chuzulxhm}">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>发布会员：</td>
                                                    <td>
                                                        <input type="text"  style="width:300px;" class="form-control" name="chuzufbhy" value="${list[0].chuzufbhy}"   >
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>推荐序号：</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control" name="chuzutjxh" value="${list[0].chuzutjxh}"><font size="2">0表示不推荐，反之按从小到大推荐</font>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>置顶序号：</td>
                                                    <td>
                                                        <input type="text" style="width:300px;" class="form-control"  value="${list[0].chuzuzdxh}"   name="chuzuzdxh">
                                                    <font>到期时间:</font>
                                                    <input type="text" style="width:300px;" class="form-control"  value="${list[0].huijizhanghao}"><font size="2">可留空,正确的格式如 2014-12-12 12:12:12</font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>审核状态：</td>
                                                    <td>
                                                        <input type="radio" name="chuzushzt" <c:if test="${list[0].huirenshensfz=='正常展示'}">checked</c:if>
                                                               value="正常展示" onclick="aas()">正常展示
                                                        <input type="radio" name="chuzushzt" checked  value="正在审核" onclick="aas()" <c:if test="${list[0].huirenshensfz=='正在审核'}">checked</c:if>>正在审核
                                                        <input type="radio"  name="chuzushzt" value="审核不通过" <c:if test="${list[0].huirenshensfz=='审核不通过'}">checked</c:if> onclick="aa()" >审核不通过
                                                    </td>
                                            </table>
                                            </tr>
                                            <button type="button" class="btn btn-primary btn-lg" onclick="updatechuzu()">保存修改</button>
                                        </form>
                                    </center>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>    <!-- /. FOOTER  -->
        <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
        <!-- JQUERY SCRIPTS -->
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
            $.ajaxSetup( {
                //设置ajax请求结束后的执行动作
                complete : function(XMLHttpRequest, textStatus) {
                    // 通过XMLHttpRequest取得响应头，REDIRECT
                    var redirect = XMLHttpRequest.getResponseHeader("REDIRECT");//若HEADER中含有REDIRECT说明后端想重定向
                    if (redirect == "REDIRECT") {
                        var win = window;
                        while (win != win.top){
                            win = win.top;
                        }
                        alert("你没有此权限")
                        //将后端重定向的地址取出来,使用win.location.href去实现重定向的要求
                        win.location.href= XMLHttpRequest.getResponseHeader("CONTEXTPATH");
                    }
                }
            });
        </script>
        <script>


            //获取数据
            function getTreeData(){
                var tree_data = "";
                var userid=$("[name='userid']").val();

                $.ajax({
                    url:"<%=request.getContextPath()%>/usercontroller/queryTree",
                    type:"post",
                    dataType:"json",
                    async:false,
                    success:function(data){
                        tree_data = data;
                    },
                    error:function(){
                        alert("查询出错");
                    }
                });
                return tree_data;
            }
            $(function(){
                // 			调用treeview方法
                $('#tree-div').treeview({
                    data:getTreeData(),
                    levels:function (){
                        Default:1
                    },
                    onNodeSelected:function(event,node){
                        if(node.url != null && node.url !=""){
                            addTabs(node.text,node.url);
                        }
                    }
                })
            })
            function addTabs(titleStr,urlStr){
                $.ajax({
                    url:"<%=request.getContextPath()%>"+urlStr,
                    success:function(info){
                        $.addtabs.add({
                            id:titleStr,
                            title:titleStr,
                            content:info,
                        })
                    }

                })
            }

            function aa() {
                $("#spanid").html("<br/>被拒原因: <input type='text' class='form-control' name='huirenshenyuan' >")
            }
            function aas() {
                $("#spanid").html("")
            }

            $('#dwimg5').fileinput({//初始化上传文件框
                showUpload : true,	//是否显示上传按钮
                showRemove : true,	//是否显示移除按钮
                uploadAsync: true,
                size:1000,
                uploadLabel: "上传",		//设置上传按钮的汉字
                uploadClass: "btn btn-primary",//设置上传按钮样式
                showCaption: true,		//是否显示标题
                language: "zh",			//配置语言
                uploadUrl: "<%=request.getContextPath()%>/gby/addPicture",
                dropZoneTitleClass:"5px",


                maxFileSize : 0,
                maxFileCount: 2,		//允许最大上传数，可以多个，当前设置单个
                enctype: 'multipart/form-data',
                //allowedPreviewTypes : ['image', 'html', 'text', 'video', 'audio', 'flash'],//预览类型
                //allowedFileTypes: ['image', 'video', 'flash'],	//文件类型
                allowedFileExtensions : ["jpg", "png","gif"],	//上传文件格式
                msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
                dropZoneTitle: "请通过拖拽图片文件放到这里",
                dropZoneClickTitle: "或者点击此区域添加图片",
                //uploadExtraData: {"id": id},//这个是外带数据
                uploadExtraData: function(previewId, index) {   //额外参数的关键点
                    var obj = {};
                    obj.base=$($('#'+previewId+' chuzuxgt')[index]).prop('src');
                    return obj;
                },
                showBrowse: false,
                browseOnZoneClick: true,
                slugCallback : function(filename) {
                    return filename.replace('(', '_').replace(']', '_');
                },

            });

            $('#dwimg5').on('fileerror', function(event, data) {
                alert("失败");
            });
            //上传文件成功，回调函数
            $('#dwimg5').on("fileuploaded", function(event, data, previewId, index) {
                var result = data.response; //后台返回的json
                //alert(result);
                $('#dwimg4').val(result.a);
            })

                $(function () {
                    gongjiao();
                    ditie();
                    wuye();
                    peitao();
                })
            //公交
            function gongjiao() {
                $.ajax({
                    url:"<%=request.getContextPath()%>/gby/querygongjiao",
                    type:"post",
                    dataType:"json",
                    async:false,
                    success:function (list){
                        var quan="";
                        var id ="";
                        var name="";
                        for (var i=0;i<list.length;i++){
                            id=list[i].id;
                            name=list[i].name;
                            quan+="<input type='checkbox' name='gongjiaoid' value='"+id+"'>"+name+"";
                        }
                        $("#gongjiao").html(quan);
                    },
                    error:function (){
                        alert("出错了");
                    }
                })
            }
            //地铁
            function ditie() {
                $.ajax({
                    url:"<%=request.getContextPath()%>/gby/queryditie",
                    type:"post",
                    dataType:"json",
                    async:false,
                    success:function (list){
                        var quan="";
                        var id ="";
                        var name="";
                        for (var i=0;i<list.length;i++){
                            id=list[i].id;
                            name=list[i].name;
                            quan+="<input type='checkbox' name='ditieid' value='"+id+"'>"+name+"";
                        }
                        $("#ditie").html(quan);
                    },
                    error:function (){
                        alert("出错了");
                    }
                })
            }
         //物业特色
            function wuye() {
                $.ajax({
                    url:"<%=request.getContextPath()%>/gby/querywuye",
                    type:"post",
                    dataType:"json",
                    async:false,
                    success:function (list){
                        var quan="";
                        var id ="";
                        var name="";
                        for (var i=0;i<list.length;i++){
                            id=list[i].id;
                            name=list[i].name;
                            quan+="<input type='checkbox' name='wytsid' value='"+id+"'>"+name+"";
                        }
                        $("#wuye").html(quan);
                    },
                    error:function (){
                        alert("出错了");
                    }
                })
            }
            //配套设施
            function peitao() {
                $.ajax({
                    url:"<%=request.getContextPath()%>/gby/querypeitao",
                    type:"post",
                    dataType:"json",
                    async:false,
                    success:function (list){
                        var quan="";
                        var id ="";
                        var name="";
                        for (var i=0;i<list.length;i++){
                            id=list[i].id;
                            name=list[i].name;
                            quan+="<input type='checkbox' name='pzssid' value='"+id+"'>"+name+"";
                        }
                        $("#peitao").html(quan);
                    },
                    error:function (){
                        alert("出错了");
                    }
                })
            }
            //行业类型
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/queryhangye",
                type:"post",
                dataType:"json",
                async:false,//关闭异步请求
                success:function (list){
                    var option = "";
                    $(list).each(function (){

                        option += "<option value='"+this.id+"'>"+this.name+"</option>";
                    })
                    $("[name='hangyelxid']").html(option);
                },
                error:function (){
                    alert(查询下拉出错);
                }
            })
            function updateren() {
                $.ajax({
                    url:"<%=request.getContextPath()%>/gby/updatezhuangxiu",
                    type:"post",
                    data:$("#renform").serialize(),
                    dataType:"text",
                    success:function () {
                        location.href="<%=request.getContextPath()%>/success.jsp"
                    },error:function () {
                        alert("失败")
                    }

                })
            }

       //区域二级联动下拉
                $.ajax({
                    url:"<%=request.getContextPath()%>/gby/queryquyu",
                    type:"post",
                    dataType:"json",
                    success:function (lipcolor){
                        var option = "<option value=''>--请选择--</option>";
                        $(lipcolor).each(function (){
                            option += "<option value='"+this.id+"'>"+this.name+"</option>";
                        })
                        $("[name='chuzuqypid']").html(option);
                    },
                    error:function (){
                        alert("1");
                    }
                })

                //第二个下拉框
                $("[name='chuzuqypid']").change(function (){
                    if( $("[name='chuzuqypid']").val()!=''){
                        $.ajax({
                            url:"<%=request.getContextPath()%>/gby/queryquyuid",
                            type:"post",
                            data:{"id":$("[name='chuzuqypid']").val()},
                            dataType:"json",
                            success:function (lipcolors){
                                var option = "<option value=''>--请选择--</option>";
                                $(lipcolors).each(function (){
                                    option += "<option value='"+this.id+"'>"+this.name+"</option>";
                                })
                                $("[name='areaid']").html(option);
                            },

                            error:function (){
                                alert("0.0");
                            }
                        })
                    }else {

                        var option = "<option value=''>--请选择--</option>";

                        $("[name='areaid']").html(option);
                    }
                })

            //商铺类型二级联动
            //区域二级联动下拉
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/querypumian",
                type:"post",
                dataType:"json",
                success:function (lipcolor){
                    var option = "<option value=''>--请选择--</option>";
                    $(lipcolor).each(function (){
                        option += "<option value='"+this.id+"'>"+this.name+"</option>";
                    })
                    $("[name='id']").html(option);
                },
                error:function (){
                    alert("1");
                }
            })

            //第二个下拉框
            $("[name='id']").change(function (){
                if( $("[name='id']").val()!=''){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/gby/querypumian1",
                        type:"post",
                        data:{"id":$("[name='id']").val()},
                        dataType:"json",
                        success:function (lipcolors){
                            var option = "<option value=''>--请选择--</option>";
                            $(lipcolors).each(function (){
                                option += "<option value='"+this.id+"'>"+this.name+"</option>";
                            })
                            $("[name='pumianid']").html(option);
                        },

                        error:function (){
                            alert("0.0");
                        }
                    })
                }else {

                    var option = "<option value=''>--请选择--</option>";

                    $("[name='areaid']").html(option);
                }
            })

             //装修情况
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/queryfangwu",
                type:"post",
                dataType:"json",
                async:false,//关闭异步请求
                success:function (list){
                    var option = "";
                    $(list).each(function (){

                        option += "<option value='"+this.id+"'>"+this.name+"</option>";
                    })
                    $("[name='fwqkid']").html(option);
                },
                error:function (){
                    alert(查询下拉出错);
                }
            })

            //朝向情况
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/querychaoxiang",
                type:"post",
                dataType:"json",
                async:false,//关闭异步请求
                success:function (list){
                    var option = "";
                    $(list).each(function (){

                        option += "<option value='"+this.id+"'>"+this.name+"</option>";
                    })
                    $("[name='chaoxiangid']").html(option);
                },
                error:function (){
                    alert(查询下拉出错);
                }
            })

            $.ajax({
                url:"<%=request.getContextPath()%>/viphy/queryMemb",
                type:"post",
                dataType:"json",
                async:false,//关闭异步请求
                success:function (list){
                    var option = "";
                    $(list).each(function (){

                        option += "<option value='"+this.id+"'>"+this.name+"</option>";
                    })
                    $("[name='huiguandengji']").html(option);
                },
                error:function (){
                    alert(查询下拉出错);
                }
            })
            var id=<%=request.getParameter("id")%>
              //回显下拉
                $.ajax({
                    url:"<%=request.getContextPath()%>/gby/queryByIdchuzu",
                    type:"post",
                    data:{"id":id},
                    dataType:"json",
                    success:function (dw){
                        $("#gongjiaoid").val(dw.gongjiaoid);
                        $("#ditieid").val(dw.ditieid);
                        $("#wytsid").val(dw.wytsid);
                        $("#pzssid").val(dw.pzssid);

                        var s = dw.gongjiaoid;//这里改你数据库读出的
                        s=','+s+',';//前后加限定符
                        var cb = document.getElementsByName('gongjiaoid');//这里改你checkbox的name值
                        for (var i = 0; i < cb.length; i++)
                            if (s.indexOf(',' + cb[i].value + ',') != -1) cb[i].checked = true;

                        /*回显复选框出租*/
                        var s1 = dw.ditieid;//这里改你数据库读出的
                        s1=','+s1+',';//前后加限定符
                        var cb1 = document.getElementsByName('ditieid');//这里改你checkbox的name值
                        for (var i = 0; i < cb1.length; i++)
                            if (s1.indexOf(',' + cb1[i].value + ',') != -1) cb1[i].checked = true;

                        /*回显复选框出租*/
                        var s2 = dw.wytsid;//这里改你数据库读出的
                        s2=','+s2+',';//前后加限定符
                        var cb2 = document.getElementsByName('wytsid');//这里改你checkbox的name值
                        for (var i = 0; i < cb2.length; i++)
                            if (s2.indexOf(',' + cb2[i].value + ',') != -1) cb2[i].checked = true;

                        /*回显复选框出租*/
                        var s3 = dw.pzssid;//这里改你数据库读出的
                        s3=','+s3+',';//前后加限定符
                        var cb3 = document.getElementsByName('pzssid');//这里改你checkbox的name值
                        for (var i = 0; i < cb3.length; i++)
                            if (s3.indexOf(',' + cb3[i].value + ',') != -1) cb3[i].checked = true;

                        $('#myModal1').modal({
                            keyboard:false,
                        })
                    }
                });


            function updatechuzu() {
                $.ajax({
                    url:"<%=request.getContextPath()%>/gby/updatechuzu",
                    type:"post",
                    data:$("#chuzuForm").serialize(),
                    dataType:"text",
                    success:function(f){
                        location.href="<%=request.getContextPath()%>/success.jsp"

                    },error:function () {
                        alert("一个修改")

                    }
                })
            }
        </script>

</body>
</html>
