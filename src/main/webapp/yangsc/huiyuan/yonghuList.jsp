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
<div id="DivIdTo" >
    <table id="GenRenYs"></table>
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

<script>
    $("#DivId").hide()
    $(function(){
        $("#GenRenYs").bootstrapTable({
            url:"<%=request.getContextPath()%>/wddcontroller/querygerenys",
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
            queryParams:function(){
            },
            columns:[{
                field:'huijizhanghao',
                title:'会员账号',
                idField:true,
                width:10

            },{
                field:'huizcxzname',
                title:'注册性质',
                width:10
            },{
                field:'huijinicheng',
                title:'会员昵称',
                width:10
            },{
                field:'huijinkymoney',
                title:'余额',
                width:10
            },{
                field:'huijidate',
                title:'时间',
                width:10
            },{
                field:'huijiip',
                title:'ip地址',
                width:10
            },{
                field:'aa',
                title:'操作',
                width:10,
                formatter: function(value,row,index){
                    return '<button type="button" class="btn btn-link btn-sm"  href="#modal-container-1510881" data-toggle="modal"  onclick="tiaoren('+row.huijiid+')"><font color="black">认证</font></button>|'
                        +'<button type="button" class="btn btn-link btn-sm" onclick="deletelou('+row.id+')"><font color="black">删除</font></button>';
                }
            }]

        })
    })




    function tiaoren(huijiid) {
        location.href="<%=request.getContextPath()%>/wddcontroller/queryrenzheng?id="+huijiid;
        //      location.href="<%=request.getContextPath()%>/successTo.jsp";
        /*  $("#DivId").show();
          $("#DivIdTo").hide();
          $("#tab_tab_个人用户").hide()*/
    }
</script>

</body>
</html>
