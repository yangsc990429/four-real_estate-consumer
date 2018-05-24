<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="<%=request.getContextPath()%>/css/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/css/css/style-responsive.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">
</head>
<body>

<button type="button" class="btn btn-info btn-sm" onclick="xin()">新增商圈</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-warning btn-sm" onclick="pi()">删除</button>
<div align="center">
    <table id="shanglist" align="center"></table>
</div>

<div class="modal fade" id="modeletemem" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
                <h4 class="modal-title">最新消息</h4>
            </div>
            <div class="modal-body" align="center" style="height:80px"><font size="5px">你确定删除此条信息吗?</font></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-default" onclick="deletesuccess()" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
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

<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script>
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

    $(function(){
        $("#shanglist").bootstrapTable({
            url:"<%=request.getContextPath()%>/zxh/selectShang",
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: true,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber: 1,                      //初始化加载第一页，默认第一页,并记录
            pageSize: 7,                     //每页的记录行数（*）
            pageList: [5,7,10],        //可供选择的每页的行数（*）
            //strictSearch: true,
            //showColumns: true,                //是否显示所有的列（选择显示的列）
            //showRefresh: true,                  //是否显示刷新按钮
            //minimumCountColumns: 3,             //最少允许的列数
            //clickToSelect: true,                //是否启用点击选中行
            //sheight: 500,                       //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "ID",                     //每一行的唯一标识，一般为主键列
            //showToggle: true,                   //是否显示详细视图和列表视图的切换按钮
            //cardView: false,                    //是否显示详细视图
            //detailView: false,
            columns:[
                {checkbox:true},
                {field:'asd',title:'商圈名称',
                    formatter:function (value,row,index) {
                        var na = row.name;
                        var area = row.areaname;
                        return na+"["+area+"]";
                    }
                },
                {field:'guancount',title:'关注度'},
                {field:'createdate',title:'更新时间'},
                {field:'cao',title:'操作',
                    formatter:function (value,row,index){
                        return "<button type='button' class='btn btn-link' onclick='updateShang("+row.id+")'>修改信息</button>&nbsp;&nbsp;|&nbsp;&nbsp;<button type='button' class='btn btn-link' onclick='deleteShang("+row.id+")'>删除</button>";
                    }
                }
            ]
        })
    })

    function xin(){
        location.href="<%=request.getContextPath()%>/zxh/addshangquan.jsp";
    }

    var ids;
    function deleteShang(id){
        ids=id
        $("#modeletemem").modal({
            keyboard:false,
            backdrop:false,
        })
    }

    function deletesuccess(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/deleteShangId",
            type:"post",
            data:{"id":ids},
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
                url:"<%=request.getContextPath()%>/zxh/deleteBusall",
                type:"post",
                data:{"ids":id},
                dataType:"text",
                success:function (data){
                    if(data){
                        $("#myModaldelsucc").modal({
                            keyboard:false,
                            backdrop:false,
                        })
                    }
                }
            })
        }
    }

    $("#quedelete").click(function (){
        location.reload();
    })

    function updateShang(id){
        location.href="<%=request.getContextPath()%>/zxh/updateshang.jsp?id="+id;
    }

</script>
</body>
</html>
