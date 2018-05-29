<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="<%=request.getContextPath() %>/assets/css/bootstrap.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/style-responsive.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/js/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">
</head>
<body>

<button type="button" class="btn btn-warning btn-sm" onclick="pi()">删除</button>
<div align="center">
    <table class="table table-bordered" id="zhuanglist" align="center"></table>
</div>

<div class="modal fade" id="myModaldelsucc" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
                <h4 class="modal-title">最新消息</h4>
            </div>
            <div class="modal-body" align="center" style="height:80px"><font size="5px">删除成功</font></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="quedelete" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.backstretch.min.js"></script>
<script type="text/javascript">
    $(function(){
        $("#zhuanglist").bootstrapTable({
            url:"<%=request.getContextPath()%>/zxh/queryZhuang",
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
                {field:'huidjdqdate',title:'时间',width:230},
                {field:'huijinip',title:'IP',width:230},
                {field:'act',title:'操作',width:300,
                    formatter: function(value,row,index){
                        return "<button type='button' onclick='hyrenzhengbt(1,"+row.huijiid+")' class='btn btn-warning'>认证</button>&nbsp;&nbsp;<button type='button'  class='btn btn-success' href='#updateyhtck' class='btn cye-lm-tag' data-toggle='modal' onclick='hyrenzhengbt(2,"+row.huijiid+")'>编辑</button>";
                    }
                }]
        })
    })

    function pi(){
        var a = $('#shanglist').bootstrapTable('getSelections');
        var idsp = "";
        var count = 0;
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].id;
            ++count;
        }
        var id = idsp.substring(1);
        if(confirm("确定要删除这 "+count+" 条数据吗？")){
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/deleteZhuangIdAll",
                type:"post",
                data:{"ids":id},
                dataType:"text",
                success:function (data){
                    if(data == "success"){
                        $("#myModaldelsucc").modal({
                            keyboard:false,
                            backdrop:false,
                        })
                    }
                }
            })
        }
    }

    function hyrenzhengbt(flag,id){
        if(flag == 1){
            location.href="<%=request.getContextPath()%>/zxh/updatezhuang.jsp?flag=2&id="+id;
        }else{
            location.href="<%=request.getContextPath()%>/zxh/updatezhuang.jsp?flag=1&id="+id;
        }

    }

</script>
</body>
</html>
