<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-23
  Time: 下午 04:52
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

<table class="table table-bordered" id="syhytitle" align="center">
<%--    <caption>
        <button type="button" class="btn btn-primary" onclick="addkhgllouceng()">新增楼层</button>
        <button type='button' onclick='deletekhgfwcxpishan()' class='btn btn-danger'>删除</button>
    </caption>--%>
</table>

<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- js placed at the end of the document so the pages load faster -->
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.backstretch.min.js"></script>
<script type="text/javascript">

    $(function(){
        $("#syhytitle").bootstrapTable({
            url:"<%=request.getContextPath()%>/lfq/queryHuiji",
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: true,                     //是否启用排序
            showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
            sidePagination:"",   //
            sortOrder: "asc",                   //排序方式
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: 5,                     //每页的记录行数（*）
            pageList: [5, 10, 15, 20],        //可供选择的每页的行数（*）
            search: false,                      //是否显示表格搜索
            strictSearch: true,
            showColumns: false,                  //是否显示所有的列（选择显示的列）
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 3,             //最少允许的列数
            clickToSelect: false,                //是否启用点击选中行
            sheight: 500,                      //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
            showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,
            method:'post',
            contentType:"application/x-www-form-urlencoded",
            /*queryParams:function(param){
                return {
                    'crm.c_customerid':$("#gong").val(),
                    'crm.c_name':$("#lian").val(),
                    'crm.c_qq':$("#qq").val(),
                    'crm.startdate':$("#kai").val(),
                    'crm.enddate':$("#jie").val(),
                    'crm.c_mob':$("#shou").val(),

                }
            },*/
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
                {field:'huijindate',title:'时间',width:230},
                {field:'huijinip',title:'IP',width:230},
                {field:'act',title:'操作',width:300,
                    formatter: function(value,row,index){
                        return "<button type='button'  class='btn btn-success' href='#updateyhtck' class='btn cye-lm-tag' data-toggle='modal' onclick='updatehybianjiym("+row.huijiid+")'>编辑</button>&nbsp;&nbsp;<button type='button' onclick='hyrenzhengbt("+row.huijiid+")' class='btn btn-warning'>认证</button>";
                    }
                }]
        })
    })



    function dianjizhanghao(id) {

        location.href="<%=request.getContextPath()%>/LFQ/addsyhy.jsp?id="+id;

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
                alert(del)
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
                alert(date);
                location.reload();
            }
        });
    }
    
    //认证页面
    function hyrenzhengbt(id) {
   location.href="<%=request.getContextPath()%>/LFQ/rzshhy.jsp?id="+id;
    }

    //编辑页面
    function updatehybianjiym(id) {
        location.href="<%=request.getContextPath()%>/LFQ/addsyhy.jsp?id="+id;
    }


</script>

</body>
</html>
