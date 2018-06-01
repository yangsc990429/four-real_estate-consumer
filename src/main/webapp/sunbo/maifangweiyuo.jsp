<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-31
  Time: 下午 08:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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

<input type="button" href="#modal-container-508750" data-toggle='modal' class="btn btn-info" onclick="delallMZ()" value="批量处理"/>
<table id="wtzm"></table>




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
<script>

    $(function(){
        $('#wtzm').bootstrapTable({
            url:'<%=request.getContextPath()%>/lfq/queryWTMZ',
            striped: true,//隔行变色
            showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
            showRefresh:true,//显示刷新按钮
            showToggle:true,//显示切换视图
//            search:true,//是否显示搜索框
            searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方
            //bootstrap默认是客户端分页client 若写服务端则出不来结果server
            sidePagination:"",//
            pagination:true,//开启分页
            paginationLoop:true,//开启分页无限循环
            pageNumber:1,//当前页数
            pageSize:3,//每页条数
            pageList:[1,3,5],//如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
            method:'post',//发送请求的方式
            contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            columns:[[
                {checkbox:true,},
                {field:'dcba',title:'委托信息',width:220,
                    formatter: function(value,row,index){
                        var a ='<span><a href="javascript:;" onclick="edit('+ row.id +')">'+row.fymianji+'<span/>平米,</a>';
                        var b ='<span><a href="#">'+row.fangyuandz+'<span/>,</a>';
                        /*var c ='<span><a href="#">'+row.yuanname+'<span/>,</a>';*/
                       var d ='<span><a href="#">'+row.weituotype+'</a><span/>';
                        return  d+b+a;
                    }
                },
                {field:'lianxiren',title:'联系人',width:220},
                {field:'phone',title:'联系电话',width:220},
                {field:'fabutime',title:'发布时间',width:220},
                {field:'a',title:'心理价格',width:220,

                    formatter: function(value,row,index){
                        if (row.weituotype=="出租"){
                            var a ='<span>'+row.qwjiage+'<span/>元/月';
                            return a;
                        }else{

                            var a ='<span>'+row.qwjiage+'<span/>万';
                            return a;
                        }}},
            ]]
        })
    })
    function delallMZ() {

        var a = $('#wtzm').bootstrapTable('getSelections');
        var idsp = "";
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].weituoid;
        }

        var ids = idsp.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/deleteMZ",
            type:"post",
            data:{"ids":ids},
            dataType:"text",
            async:false,
            success:function (date){
                $("#wtzm").bootstrapTable('refresh')
            }
        });

    }
</script>
</body>
</html>
