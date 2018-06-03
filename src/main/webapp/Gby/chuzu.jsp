<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/23 0023
  Time: 10:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>


    <title>Title</title>
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
<body>
<table>
    <tr>
        <td ><button type="button"class="btn btn-primary"  data-toggle="modal"  onclick="qxchutuidw()"  ><font color="black">取消橱窗推荐</font></button></td>
        <td ><button type="button"class="btn btn-primary"  data-toggle="modal" onclick="chutuidw()"  ><font color="black">橱窗推荐</font></button></td>
        <td ><button type="button"class="btn btn-primary"  href="#modal-container-151088111" data-toggle="modal"   ><font color="black">变更审核</font></button></td>
        <td ><button type="button" class="btn btn-primary" onclick="deletes()" ><font color="black">删除</font></button></td>
        <td><button type="button" class="btn btn-primary"  onclick="shangxia()"><font color="black">上架/下架</font></button></td>
        <td>信息标题</td>
        <td><input type="text" name="chuzuname"  class="form-control"style="width:100px" ></td>
        <td>物业类型:</td>
        <td style="width:100px" >
            <select class="form-control" name="wuyeid" >
            </select>
        </td>
        <td >
            <button type="button" class="btn btn-primary"    onclick="serach2()"><font color="black">搜索</font></button>
        </td>

    </tr>
</table>
<%--<h1 align="right">
</button><button type="button" class="btn btn-danger" onclick="deletezhuangxiu('+row.id+')" >删除</button>
</h1>--%>
<div id="DivIdTo" >
    <table id="chuzu"></table>
</div>

<div class="modal fade" id="modal-container-151088111" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #ccffcc">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel1">
                    变更审核
                </h4>
            </div>
            <div class="modal-body">
                <form id="updateFormys" method="post">
                    <div class="container">
                        <div class="row clearfix">
                            <div class="col-md-12 column">
                                <div class="tabbable" id="tabs-3235301">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="panel-9538331">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <input type="hidden" id="ids" name="ids">
                                                    </td>
                                                    <td>
                                                        正常展示:
                                                        <input type="radio" name="zt" value="1" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>

                                                    </td>
                                                    <td>
                                                        正在审核   <input type="radio" name="zt" value="2" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>

                                                    </td>
                                                    <td>
                                                        审核不通过  <input type="radio" name="zt" value="3" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="tab-pane" id="panel-1917081">

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button> <button type="button" class="btn btn-primary"  data-dismiss="modal" onclick="bainliang()">确认</button>
                    </div>
                </form>
            </div>
        </div>

    </div>

</div>

<div id="DivId" >
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="tabbable" id="tabs-233291">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#panel-590035" data-toggle="tab">Section 1</a>
                        </li>
                        <li>
                            <a href="#panel-216974" data-toggle="tab">Section 2</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="panel-590035">
                            <p>
                                I'm in Section 1.
                            </p>
                        </div>
                        <div class="tab-pane" id="panel-216974">
                            <p>
                                Howdy, I'm in Section 2.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</div>
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

    $("#DivId").hide()
    $(function() {
        serach3();
    })
    function serach3() {
        $("#chuzu").bootstrapTable("destroy");
        $("#chuzu").bootstrapTable({
            url: "<%=request.getContextPath()%>/gby/querychuzu",
            striped: true,//隔行变色
            showPaginationSwitch: true,//是否显示 数据条数选择框
            minimumCountColumns: 1,//最小留下一个
            showRefresh: true,//显示刷新按钮
            showToggle: true,//显示切换视图
            search: true,//是否显示搜索框
            searchOnEnterKey: true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
            sidePagination: "client",
            pagination: true,//开启分页
            paginationLoop: true,//开启分页无限循环
            pageNumber: 1,//当前页数
            pageSize: 3,//每页条数
            pageList: [0, 3, 6],  //如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
            method: 'post',//发送请求的方式
            contentType: "application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            queryParams: function () {
                return {
                    wuyeid:$("[name='wuyeid']").val(),
                    chuzuname:$("[name='chuzuname']").val(),

                }
            },
            columns: [{
                field: 'che', width: 1, checkbox: true
            },
                {
                    field: 'name', title: '房源信息', idField: true, formatter: function (value, row, index) {
                    var d = '<span>[' + row.name + '</span>]';
                    var c = '<span>' + row.chuzuname + '</span>';
                    var b = row.chuzusxj;
                    var e = row.fyshid;
                    var f = row.chuzucctj;
                    if (b == 1) {
                        b = '<font color="blue">上架</font>';
                    } else {
                        b = '<font color="blue">下架</font>';
                    }
                    if (e == 1) {
                        e = '|<font color="#ff7f50">正常展示</font>'
                    } else if (e == 2) {
                        e = '|<font color="#ff7f50">正在审核</font>'
                    } else if (e == 3) {
                        e = '|<font color="#ff7f50">审核不通过</font>'
                    }
                    if (f == 0) {
                        f = '|<font color="#ff7f50">橱窗推荐</font>'
                    } else {
                        f = ''
                    }


                    return '<image src=\'+row.photo+\' width="20px"><span>[' + row.name + '</span>]<span>' + row.chuzuname + '</span><br/>' + b + e + f;
                }, width: 10
                },
                {field: 'chuzuzujin', title: '租金', width: 10},
                {field: 'chuzugzd', title: '关注度', width: 10},
                {field: 'chuzutgzt', title: '推广状态', width: 10},
                {
                    field: 'aa', title: '操作', width: 10,
                    formatter: function (value, row, index) {
                        return '<button type="button" class="btn btn-link btn-sm"  href="#modal-container-1510881" data-toggle="modal"  onclick="tiaoren(' + row.huijiid + ')"><font color="black">浏览</font></button>|&nbsp;&nbsp;&nbsp;' +
                            '&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-link btn-sm"  href="#modal-container-1510881" data-toggle="modal"  onclick="tiaoren(' + row.chuzuid + ')"><font color="black">修改</font></button>'
                            ;
                    }
                }]

        })
    }

    function deletes() {
        //获取所有被选中的记录
        var rows = $("#chuzu").bootstrapTable('getSelections');
        if (rows.length== 0) {
            alert("请先选择要删除的记录!");
            return;
        }
        var ids = '';
        for (var i = 0; i < rows.length; i++) {
            ids += rows[i]['chuzuid'] + ",";
        }
        ids = ids.substring(0, ids.length - 1);
        if(confirm("确认删除吗?")){
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/deleteschuzu",
                type:"post",
                data:{"ids":ids},
                dataType:"text",
                success:function (delFlag){
                    if (delFlag=='updatesuccess'){
                    $("#chuzu").bootstrapTable('refresh');
                    }
                },
                error:function (){
                    alert("删除失败");
                    location.reload();
                }
            })
        }
    }
    //变更审核
    function  bainliang(){
        var rows = $("#chuzu").bootstrapTable('getSelections');
        if (rows.length== 0) {
            alert("请先选择要变更的记录!");
            return;
        }
        var ids = '';
        for (var i = 0; i < rows.length; i++) {
            ids += rows[i]['chuzuid'] + ",";
        }
        ids = ids.substring(0, ids.length - 1);
        $("#ids").val(ids)
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/updateBinG1",
            type:"post",
            data:$("#updateFormys").serialize(),
            dataType:"text",
            success:function (delFlag){
                $("#chuzu").bootstrapTable('refresh');0

            },
            error:function (){
                alert("一个删除");
                location.reload();
            }
        })

    }
//上架下架
    function  shangxia(){
        var rows = $("#chuzu").bootstrapTable('getSelections');
        if (rows.length== 0) {
            alert("请先选择要改变的记录!");
            return;
        }
        var ids = '';
        for (var i = 0; i < rows.length; i++) {
            ids += rows[i]['chuzuid'] + ",";
        }
        ids = ids.substring(0, ids.length - 1);
        $("#ids").val(ids)
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/updateShangX",
            type:"post",
            data:{"id":ids},
            dataType:"text",
            success:function (delFlag){
                $("#chuzu").bootstrapTable('refresh');

            },
            error:function (){
                alert("一个删除");
                location.reload();
            }
        })
    }

    //橱窗推荐
    function chutuidw() {
        //获取所有被选中的记录
        var rows = $("#chuzu").bootstrapTable('getSelections');
        if (rows.length== 0) {
            alert("请先选择要推荐的产品!");
            return;
        }
        var ids = '';
        for (var i = 0; i < rows.length; i++) {
            ids += rows[i]['chuzuid'] + ",";
        }
        ids = ids.substring(0, ids.length - 1);
        if(confirm("确认推荐吗?")){
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/updatechutuidw",
                type:"post",
                data:{"ids":ids},
                dataType:"text",
                success:function (flag){
                    if (flag=='updatesuccess'){
                        $("#chuzu").bootstrapTable('refresh');
                    }
                },
                error:function (){
                    alert("修改失败");
                }
            })
        }
    }
    function qxchutuidw() {
        //获取所有被选中的记录
        var rows = $("#chuzu").bootstrapTable('getSelections');
        if (rows.length== 0) {
            alert("请先选择要推荐的产品!");
            return;
        }
        var ids = '';
        for (var i = 0; i < rows.length; i++) {
            ids += rows[i]['chuzuid'] + ",";
        }
        ids = ids.substring(0, ids.length - 1);
        if(confirm("确认推荐吗?")){
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/updateqxchutuidw",
                type:"post",
                data:{"ids":ids},
                dataType:"text",
                success:function (flag){
                    if (flag=='updatesuccess'){
                        $("#chuzu").bootstrapTable('refresh');
                    }
                },
                error:function (){
                    alert("修改失败");
                }
            })
        }
    }

    function tiaoren(chuzuid) {
        location.href="<%=request.getContextPath()%>/Gby/chuzuxx.jsp?id="+chuzuid;
        //      location.href="<%=request.getContextPath()%>/successTo.jsp";
        /*  $("#DivId").show();
          $("#DivIdTo").hide();
          $("#tab_tab_个人用户").hide()*/

    }

    function serach2() {
        serach3();
    }
     //查询物业
    $.ajax({
        url:"<%=request.getContextPath()%>/gby/querywuyeleixing",
        type:"post",
        dataType:"json",
        success:function (citi){
            var option = "<option value=''>==不限==</option>";
            $(citi).each(function (){
                option += "<option value='"+this.id+"'>"+this.yuanname+"</option>";
            })
            $("[name='wuyeid']").html(option);
        },
        error:function (){
            alert(0);
        }
    })
</script>
</body>
</html>
