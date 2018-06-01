<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/5/29
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap/css/bootstrap.min.css">
    <!-- Bootstrap addTabs css -->
    <link href="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">
    <!-- Bootstrap table css -->
    <link href="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/bootstrap/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script><script src="<%=request.getContextPath()%>/bootstrap/bootstrap/js/bootstrap.min.js"></script>
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
</head>
<body>
<%--
<input type="hidden" class="form-control" id="zhanhao" placeholder="会员账号">
--%>

<div style="padding: 50px 50px 5px;background:#C0C0C0;">
    <form class="bs-example bs-example-form" role="form">
        <table>
            <tr>
                <td>
        <div class="input-group input-group-lg">
            <input type="text" class="form-control" id="zhanhao" placeholder="会员账号">
        </div></td>
                   <td>&nbsp;&nbsp;&nbsp;<button type="button" class="btn btn-primary btn-lg" onclick="asa()"> <span class="glyphicon glyphicon-search"></span>搜索</button></td>
            </tr>
        </table>

    </form>
</div>
<button type="button" class="btn btn-warning btn-sm" onclick="pi()">删除</button>

<table id="queryshejiList"></table>

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
                //将后端重定向的地址取出来,使用win.location.href去实现重定向的要求
                /* win.location.href= XMLHttpRequest.getResponseHeader("CONTEXTPATH");*/
                alert("你没有此权限")
            }
        }
    });
    $(function(){
        serachSy();
    })
    function asa(){
        $("#queryshejiList").bootstrapTable("refresh");
    }
    function serachSy(){
        $("#queryshejiList").bootstrapTable({
            url:"<%=request.getContextPath()%>/yangsc/queryjiList",
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
            pageSize:1,//每页条数
            pageList:[1,2,3], //如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
            method:'post',//发送请求的方式
            contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            queryParams:function(param){
                   return {
                       'zhanghao':$("#zhanhao").val(),
                   }
               },
            columns:[
                {checkbox:true},
                {field:'huijizhanghao',title:'会员账号',width:230,
                    formatter:function(volue,row,index){
                        return "<a href='javascript:dianjizhanghao("+row.huijiid+")'>"+row.huijizhanghao+"</a>";
                    }
                },
                {field:'huizcxzname',title:'注册性质',width:230},
                {field:'huijilianxiren',title:'会员昵称',width:230},
                {field:'huijinkymoney',title:'余额',width:230},
                {field:'huidjdqdate',title:'时间',width:230},
                {field:'huijinip',title:'IP',width:230},
                {field:'act',title:'操作',width:300,
                    formatter: function(value,row,index){
                        return "<input type='hidden' id='jinid' value='"+row.huijinid+"'/><button type='button'  class='btn btn-success' href='#updateyhtck' class='btn cye-lm-tag' data-toggle='modal' onclick='updatehybianjiym("+row.huijiid+")'>编辑</button>&nbsp;&nbsp;<button type='button' onclick='hyrenzhengbt("+row.huijiid+")' class='btn btn-warning'>认证</button>";
                    }
                }]
        })
    }

    function dianjizhanghao(id) {

        location.href="<%=request.getContextPath()%>/yangsc/sheji/addsyhy.jsp?id="+id;

    }



    function addkhgllouceng(){

        $('#modelete').modal({
            keyboard:false,
        })

        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/queryfwlcxuhao",
            type:"post",
            dataType:"text",
            async:false,
            success:function (xu){
                $("[name='xuhao']").val(xu);
            }
        })
    }



    function addesuccess() {
        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/adddfanglcsz",
            type:"post",
            data:$("#addtitieform").serialize(),
            dataType:"text",
            async:false,
            success:function (xu){
                alert("新增成功");
                location.reload();
            }
        })
    }

    function deletekhglss(id){
        $.ajax({
            url:'<%=request.getContextPath()%>/lfq/deletefwcxsz?id='+id,
            type:"post",
            dataType:"text",
            async:false,
            success:function(del){
                if(del == "delsuccess"){
                    location.reload();
                }
            }
        })
    }

    function deletekhgfwcxpishan() {
        var a = $('#fwlcsztit').bootstrapTable('getSelections');
        var idsp = "";
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].id;
        }
        var id = idsp.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/deletefwcxpishan",
            type:"post",
            data:{"id":id},
            dataType:"text",
            async:false,
            success:function (date){
                $("#fwlcsztit").bootstrapTable('refresh')
            }
        });
    }

    function updateditie(id) {
        $('#moupdate').modal({
            keyboard:false,
        })
        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/updatefwcxhui",
            type:"post",
            data:{"id":id},
            dataType:"json",
            async:false,
            success:function (date){
                $("[name='id']").val(date.id);
                $("[name='name']").val(date.name);
                $("[name='xuhao']").val(date.xuhao);
            }
        });
    }
    function updatessgai() {
        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/updatefwcxszgai",
            type:"post",
            data:$("#updatetitieform").serialize(),
            dataType:"text",
            async:false,
            success:function (date){
                location.reload();
            }
        });
    }
    //认证页面
    function hyrenzhengbt(id) {
        location.href="<%=request.getContextPath()%>/yangsc/sheji/rzshhy.jsp?id="+id;
    }
    //编辑页面
    function updatehybianjiym(id) {
        location.href="<%=request.getContextPath()%>/yangsc/sheji/addsyhy.jsp?id="+id;
    }
    function pi(){
        var a = $('#queryshejiList').bootstrapTable('getSelections');
        var idsp = "";
        var count = 0;
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].huijiid;
            ++count;
        }
        var id = idsp.substring(1);
        if(confirm("确定要删除这 "+count+" 条数据吗？")){
           $.ajax({
                url:"<%=request.getContextPath()%>/yangsc/deleteZhuangIdAll",
                type:"post",
                data:{"ids":id},
                dataType:"text",
                success:function (data){
                    location.reload();
                }
            })
        }
    }
</script>
</body>

</html>
