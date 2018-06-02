<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/5/31
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="<%=request.getContextPath() %>/assets/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/style-responsive.css" rel="stylesheet">


    <!-- Bootstrap 插件 css -->
    <link href="<%=request.getContextPath()%>/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
    <link href="<%=request.getContextPath()%>/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap TreeView css -->
    <link href="<%=request.getContextPath()%>/js/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">
    <!-- Bootstrap addTabs css -->
    <link href="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">
    <!-- Bootstrap table css -->
    <link href="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">
</head>
<body>
<button type="button" class="btn btn-success" onclick="adduser()">新增</button>
<button type="button" class="btn btn-danger" onclick="deleteqvyv()">删除管理员</button>
<table id="aaa" class="table table-bordered"></table>
<script src="<%=request.getContextPath()%>/css/js/jquery-1.10.2.min.js"></script>
<script src="<%=request.getContextPath()%>/js/highcharts.js"></script>
<script src="<%=request.getContextPath()%>/js/exporting.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-fileinput/js/fileinput.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-fileinput/js/locales/zh.js"></script>
<script src="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/js/bootstrap-dialog.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/chart-master/Chart.js"></script>
<script src="<%=request.getContextPath()%>/css/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/css/js/modernizr.min.js"></script>
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
<script type="text/javascript">




    function  adduser() {
        location.href="<%=request.getContextPath()%>/yangsc/glAdd.jsp";
    }
    $(function(){
        serachSy();
    })

    function asa(){
        $("#aaa").bootstrapTable("refresh");
    }
    //-】===========================查询==================================
    function serachSy(){
        $("#aaa").bootstrapTable({
            url:"<%=request.getContextPath()%>/yangsc/queryguanList",
            /*    striped: true,//隔行变色*/
            showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
            showRefresh:true,//显示刷新按钮
            showToggle:true,//显示切换视图
            pagination: true,                   //是否显示分页（*）
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            silent: true,
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: 3,                     //每页的记录行数（*）
            pageList: [1, 2, 4, 5],        //可供选择的每页的行数（*）
            /* showColumns: true,                  //是否显示所有的列（选择显示的列）*/
            showRefresh: true,                  //是否显示刷新按钮
            clickToSelect: true,                //是否启用点击选中行
            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
            //sidePagination:"server",//
            pagination:true,//开启分页
            paginationLoop:true,//开启分页无限循环
            pageNumber:1,//当前页数
            pageSize:10,//每页条数
            pageList:[10,20,30], //如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
            method:'post',//发送请求的方式
            contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            /*   queryParams:function(param){
                   return {
                       'paytypeid':$("#pay").val(),
                       'customerid':$("#gs").val(),
                       'cdepid':$("#depid").val(),
                       'cempid':$("#empid").val(),
                       'starttime':$("#stdate").val(),
                       'endtime':$("#eddate").val(),
                       'receivenum':$("#num").val()
                   }
               },*/ /*private Integer id;
        private String ;
        private String pid;
        private String xuhao;
        private String ;
        private String shouzimu;
        private String zuobiao;
        private Integer hotstatus;*/
            columns:[
                {
                    checkbox:true,
                    value:"userid",
                },{
                    field:'username',
                    title:'管理员账号',
                    width:100
                },{
                    field:'name',
                    title:'称呼',
                    width:100
                },{
                    field:'aa',
                    title:'操作',
                    width:100,formatter: function(value,row,index){
                        var d='<a href="javascript:updateqx('+row.userid+')">编辑</a>';

                            return d;

                    }
                }]
        })
    }


    function deleteqvyv() {
        var a = $('#aaa').bootstrapTable('getSelections');

        if (a!=null &&a!=""){
        var idsp = "";
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].userid;
        }
        var id = idsp.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/yangsc/deleteGl",
            data:{ids:id},
            dataType:"text",
            success:function (data) {
                location.reload();

            },
            error:function () {
            }
        })
        }else{
            alert("最少选择一条数据")
        }
    }
    function updateqx(userid){

        location.href="<%=request.getContextPath()%>/yangsc/updateQx.jsp?userid="+userid;
    }
</script>

</body>
</html>
