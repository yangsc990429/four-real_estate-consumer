<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-06-01
  Time: 下午 02:06
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


<%--
<button href=""   data-toggle="modal" type="button" class="btn btn-success" onclick="deleteZF('+row.zhaofangid+')" >删除</button>
--%>


<input type="button" href="#modal-container-508750" data-toggle='modal' class="btn btn-info" onclick="deleteZF()" value="批量处理"/>


<table id="wtzfwt"></table>


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
        $('#wtzfwt').bootstrapTable({
            url:'<%=request.getContextPath()%>/lfq/queryWTZF',
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
                {field:'che',width:10,checkbox:true,},
                {field:'b',title:'委托信息',width: 300,
                    formatter: function (value,row,index){
                        var a ='<span><a href="#">'+row.mianjiyaoqiu+'<span/>,</a>';
                        return a;
                    }
                },
                {field:'weituotype',title:'类型',width:300},
                {field:'xiwangquyu',title:'希望区域',width:300},
                {field:'phone',title:'电话',width:300},
                {field:'fabutime',title:'发布时间',width:300,}
            ]]
        })
    })




   function deleteZF() {
        var a = $('#wtzfwt').bootstrapTable('getSelections');
       alert(a)
        var idsp = "";
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].zhaofangid;
        }

        var idse = idsp.substring(1);
        alert(idse)
        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/deleteZF",
            type:"post",
            data:{"idse":idse},
            dataType:"text",
            async:false,
            success:function (date){
                $("#wtzfwt").bootstrapTable('refresh')
            }
        });

    }
    /*function deleteZF(zhaofangid) {
        if(confirm("确认删除吗?")){
            $.ajax({

                url:"<%=request.getContextPath()%>/lfq/deleteZF",
                type:"post",
                data:{"idse":zhaofangid},
                dataType:"text",
                success:function(json){

                    location.href=location;//刷新页面
                },
                error:function (){
                    alert("删除失败");
                }
            })
        }

    }

*/

</script>
</body>
</html>
