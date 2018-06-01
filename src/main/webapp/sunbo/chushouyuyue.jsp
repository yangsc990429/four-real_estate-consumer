<%--
  Created by IntelliJ IDEA.
  User: jack
  Date: 2018/6/1
  Time: 20:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
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
<body>
<button type="button" class="btn btn-danger" onclick="deleteyChuShou()" >批量删除</button>
<table id="ChuShouys"></table>
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


<script charset="utf-8" src="<%=request.getContextPath()%>/kindeditor/kindeditor-all.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/kindeditor/lang/zh-CN.js"></script>
<script charset="utf-8" src="<%=request.getContextPath()%>/kindeditor/plugins/code/prettify.js"></script>

<script>
    var tt="";
    $("#ChuShouys").bootstrapTable({
        url:"<%=request.getContextPath()%>/gby/queryChuShou",
        striped: true,//隔行变色
        showPaginationSwitch:true,//是否显示 数据条数选择框
        minimumCountColumns:1,//最小留下一个
        showRefresh:true,//显示刷新按钮
        showToggle:true,//显示切换视图
        search:true,//是否显示搜索框
        searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
        sidePagination:"client",
        pagination:true,//开启分页
        paginationLoop:true,//开启分页无限循环
        pageNumber:1,//当前页数
        pageSize:3,//每页条数
        pageList:[0,3,6],  //如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
        method:'post',//发送请求的方式
        contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
        /* queryParams:function(param){
             return {
                 jindis:$("[name='jindis']").val(),
                 jinnumber:$("[name='jinnumber']").val(),

             }
         },*/
        columns:[{
            field:'ce',
            width:1,
            checkbox:true

        },{
            field:'yuyuexinxi',
            title:'预约信息',
            idField:true,
            width:10,


        },{
            field:'BB',
            title:'性质',
            width:10,
            formatter: function (value, row, index) {
                if (row.yuyuexingzhi == 1) {
                    tt = "<font color=\"blue\">出售</font>";
                } else {
                    tt = "<font color=\"red\">出租</font>"
                }


                return '<font color="#ff7f50">' + tt + '</font> ';

            }
        },{
            field:'yuyuedianhua',
            title:'联系电话',
            width:10
        },{
            field:'yuyuedate',
            title:'发布时间',
            width:10
        },{
            field:'yuyueip',
            title:'IP地址',
            width:10
        }]

    })


    function deleteyChuShou() {
        //获取所有被选中的记录
        var rows = $("#ChuShouys").bootstrapTable('getSelections');
        if (rows.length== 0) {
            alert("请先选择要删除的记录!");
            return;
        }
        var ids = '';
        for (var i = 0; i < rows.length; i++) {
            ids += rows[i]['yuyueid'] + ",";
        }
        ids = ids.substring(0, ids.length - 1);
        if(confirm("确认删除吗?")){
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/deleteyChuShou",
                type:"post",
                data:{"id":ids},
                dataType:"text",
                success:function (delFlag){
                    $("#ChuShouys").bootstrapTable('refresh');

                },
                error:function (){
                    alert("删除失败");
                    location.reload();
                }
            })
        }

    }
</script>
</body>
</html>
