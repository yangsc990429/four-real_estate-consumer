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

<button type="button" class="btn btn-info btn-sm" onclick="upyuan(1)">橱窗推荐</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="upyuan(2)">取消橱窗推荐</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="upyuan(3)">变更审核</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="upyuan(4)">删除</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="upyuan(5)">上架/下架</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="tiaoselect()">需要审核</button>
<input type="hidden" name="auditstatus"/>
<div align="center">
    <table id="yuanlist" align="center"></table>
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

<div class="modal fade" id="myModalupsucc" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
                <h4 class="modal-title">最新消息</h4>
            </div>
            <div class="modal-body" align="center" style="height:80px"><font size="5px">更改成功</font></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="quedel" data-dismiss="modal">确定</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModaldelsuccbian" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px" align="center">
                <font size="5px" color="#a52a2a">选择要审核的状态</font>
            </div>
            <div class="modal-footer"style="width:350px">
                <div style="width: 33%;float: left;">
                    <button type="button" class="btn btn-success" onclick="updateShenId(1)">设置为通过</button>
                </div>
                <div style="width: 33%;float: left;" align="center">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
                <div style="width: 33%;float: left;">
                    <button type="button" class="btn btn-warning" onclick="updateShenId(3)">设置为不通过</button>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModalxia" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px" align="center">
                <font size="5px" color="#a52a2a">选择要审核的状态</font>
            </div>
            <div class="modal-footer"style="width:350px">
                <div style="width: 33%;float: left;">
                    <button type="button" class="btn btn-success" onclick="updateJiaId(1)">设置为上架</button>
                </div>
                <div style="width: 33%;float: left;" align="center">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                </div>
                <div style="width: 33%;float: left;">
                    <button type="button" class="btn btn-warning" onclick="updateJiaId(2)">设置为下架</button>
                </div>
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

    $(function (){
        chaxun();
    })

    function chaxun(){
        $("#yuanlist").bootstrapTable("destroy");
        $("#yuanlist").bootstrapTable({
            url:"<%=request.getContextPath()%>/zxh/selectFangyuan",
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
            queryParams:function(param){
                return {
                    auditstatus:$("[name='auditstatus']").val(),
                }
            },
            columns:[
                {checkbox:true},
                {field:'name',title:'房源信息',width:300,
                    formatter:function (value,row,index){
                        var aa = "";
                        if(row.putaway == 1){
                            aa+="<font color='blue'>上架</font>";
                        }else{
                            aa+="<font color='red'>下架</font>";
                        }
                        if(row.auditstatus == 1){
                            aa+="&nbsp;|&nbsp;<font color='blue'>已通过审核</font>";
                        }else if(row.auditstatus == 2){
                            aa+="&nbsp;|&nbsp;<font color='red'>正在审核</font>";
                        }else{
                            aa+="&nbsp;|&nbsp;<font color='#d2691e'>未通过审核</font>";
                        }
                        if(row.recommended == 1){
                            aa+="&nbsp;|&nbsp;<font color='red'>橱窗推荐</font>";
                        }else{
                            aa+="";
                        }
                        return "<div style='height:70px;width:300px'>" +
                                    "<div style='width:23%;height:93%;float:left'>" +
                                        "<img src="+row.photo+" width='100%' height='100%'/>" +
                                    "</div>" +
                                    "<div style='height:92%;width:98%'>" +
                                        "&nbsp;&nbsp;["+row.zhanname+"]"+row.name+"<br/>&nbsp;&nbsp;"+aa+
                                    "</div>" +
                                "</div>";
                    }
                },
                {field:'fangprice',title:'售价',
                    formatter:function (value,row,index){
                        return "<center><font color='red'>"+row.fangprice+"</font></center>";
                    }
                },
                {field:'chuzugzd',title:'关注度',
                    formatter:function (value,row,index){
                        return "<center>"+row.chuzugzd+"</center>";
                    }
                },
                {field:'cxz',title:'推广状态',
                    formatter:function (value,row,index){
                        if(row.sticknumber != 0){
                            return "<center><strong>置顶</strong></center>"
                        }else{
                            return "";
                        }
                    }
                },
                {field:'cao',title:'操作',
                    formatter:function (value,row,index){
                        return "<button type='button' class='btn btn-link' onclick='selectKanYuan(\"+row.id+\")'>预览</button>&nbsp;|&nbsp;<button type='button' class='btn btn-link' onclick='updateYuan("+row.id+")'>修改信息</button>";
                    }
                }
            ]
        })
    }

    function upyuan(flag){
        var a = $('#yuanlist').bootstrapTable('getSelections');
        var idsp = "";
        var count = 0;
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].id;
            ++count;
        }
        var id = idsp.substring(1);
        if(count >= 1){
            if (flag == 4){
                if(confirm("确定要删除这 "+count+" 条数据吗?")){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/zxh/deleteIdAll",
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
            }else if(flag == 1){
                if(confirm("确定要把这 "+count+" 条加到橱窗推荐吗?")){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/zxh/updateYuanChuId",
                        type:"post",
                        data:{"ids":id},
                        dataType:"text",
                        success:function (data){
                            if(data == "success"){
                                $("#myModalupsucc").modal({
                                    keyboard:false,
                                    backdrop:false,
                                })
                            }
                        }
                    })
                }
            }else if(flag == 2){
                if(confirm("确定要把这 "+count+" 条从橱窗推荐撤下来吗?")){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/zxh/updateDownChuId",
                        type:"post",
                        data:{"ids":id},
                        dataType:"text",
                        success:function (data){
                            if(data == "success"){
                                $("#myModalupsucc").modal({
                                    keyboard:false,
                                    backdrop:false,
                                })
                            }
                        }
                    })
                }
            }else if(flag == 3){
                $("#myModaldelsuccbian").modal({
                    keyboard:false,
                    backdrop:false,
                })
            }else if(flag == 5){
                $("#myModalxia").modal({
                    keyboard:false,
                    backdrop:false,
                })
            }
        }else{
            alert("请至少选择一条数据");
        }
    }

    function updateJiaId(flag){
        var a = $('#yuanlist').bootstrapTable('getSelections');
        var idsp = "";
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].id;
        }
        var id = idsp.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/updateFangJiaIds",
            type:"post",
            data:{"flag":flag,"ids":id},
            dataType:"text",
            success:function (data){
                if(data == "success"){
                    $("#myModalxia").hide();
                    $("#myModalupsucc").modal({
                        keyboard:false,
                        backdrop:false,
                    })
                }
            }
        })
    }

    function updateShenId(flag){
        var a = $('#yuanlist').bootstrapTable('getSelections');
        var idsp = "";
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].id;
        }
        var id = idsp.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/updateFangListIds",
            type:"post",
            data:{"flag":flag,"ids":id},
            dataType:"text",
            success:function (data){
                if(data == "success"){
                    $("#myModaldelsuccbian").hide();
                    $("#myModalupsucc").modal({
                        keyboard:false,
                        backdrop:false,
                    })
                }
            }
        })
    }

    function tiaoselect(){
        $("[name='auditstatus']").val(2);
        chaxun();
    }

    $("#quedelete").click(function (){
        location.reload();
    })

    $("#quedel").click(function () {
        location.reload();
    })

</script>
</body>
</html>
