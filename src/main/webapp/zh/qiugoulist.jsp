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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="upyuan(4)">删除</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="upyuan(1)">橱窗推荐</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="upyuan(2)">取消橱窗推荐</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="upyuan(3)">变更审核</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-info btn-sm" onclick="upyuan(5)">上架/下架</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<div align="center">
    <table id="queryQuizu" align="center"></table>
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
<script>


    var tt="";
    var ttt="";
    var aa="";
    $(function() {
        serach3();
    })
    function serach3() {
        $("#queryQuizu").bootstrapTable("destroy");
        $("#queryQuizu").bootstrapTable({
            url: "<%=request.getContextPath()%>/zh/queryQuiGou",
            striped: true,//隔行变色
            showPaginationSwitch: true,//是否显示 数据条数选择框
            minimumCountColumns: 1,//最小留下一个
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
            method: 'post',//发送请求的方式
            contentType: "application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            queryParams:function(param){

                return {
                    wuyeid:$("[name='wuyeid']").val(),
                    biaoti:$("[name='biaoti']").val(),

                }
            },
            columns: [{


                field: 'ce', width: 1, checkbox: true},
                {field: 'bb', title: '房源信息',
                    formatter: function (value, row, index) {

                        if (row.shangxiajia == 1) {
                            tt = "<font color=\"blue\">上架</font>";
                        } else {
                            tt = "<font color=\"blue\">下架</font>"
                        }
                        if (row.fyshid == 1) {
                            ttt = "<font color=\"#40e0d0\">正在审核</font>";
                        } else if (row.fyshid== 2) {
                            ttt = "<font color=\"blue\">已通过审核</font>"
                        } else {
                            ttt = "<font color=\"red\">未通过审核</font>"
                        }if(row.tuijian == 2){
                            aa=" ";
                        }else{
                            aa="&nbsp;&nbsp;|&nbsp;&nbsp;<font color='red'>橱窗推荐</font>";
                        }

                        return '<span onclick="queryQiuId(' + row.qiugouid + ')">&nbsp;&nbsp;<font color="black">[' + row.yuanname + ']' + row.biaoti + '</font></span></br>&nbsp;&nbsp;' + tt + '&nbsp;&nbsp;|&nbsp;&nbsp;' + ttt+ ''+aa+' ';
                    }

                },

                {field: 'bbb', title: '租金预算',
                    formatter: function (value, row, index) {
                        return '<font color="#ff7f50">' + row.feiyongyusuans + '</font>';

                    }
                },
                {field: 'qiugougzd', title: '关注度',},
                {field: 'qiugoudate', title: '时间',},
                {field: 'aa', title: '操作',
                    formatter: function (value, row, index) {
                        return '<span  onclick="tiaoren(' + row.qiugouid + ')"><a>预览</a></span>&nbsp;&nbsp;|&nbsp;&nbsp;<span  onclick="queryQiuId(' + row.qiugouid + ')"><a>修改</a></span>';

                    }
                }]

        })

    }

    //按钮状态

    function upyuan(flag){
        var a = $('#queryQuizu').bootstrapTable('getSelections');
        var idsp = "";
        var count = 0;
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].qiugouid;
            ++count;
        }
        var id = idsp.substring(1);

        if(count >= 1){
            if (flag == 4){
                if(confirm("确定要删除这 "+count+" 条数据吗?")){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/zh/deletechuzuAll?qiugouid="+id,
                        type:"post",
                        data:{"qiugouid":id},
                        dataType:"text",
                        success:function (delsuccess){

                            $("#myModaldelsucc").modal({
                                keyboard:false,
                                backdrop:false,
                            })

                        }
                    })
                }
            }else if(flag == 1){
                if(confirm("确定要把这 "+count+" 条加到橱窗推荐吗?")){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/zh/updateChuZuChuId",
                        type:"post",
                        data:{"qiugouid":id},
                        dataType:"text",
                        success:function (success){

                            $("#myModalupsucc").modal({
                                keyboard:false,
                                backdrop:false,
                            })
                        }
                    })
                }
            }else if(flag == 2){
                if(confirm("确定要把这 "+count+" 条从橱窗推荐撤下来吗?")){
                    $.ajax({
                        url:"<%=request.getContextPath()%>/zh/updateDownChuId",
                        type:"post",
                        data:{"qiugouid":id},
                        dataType:"text",
                        success:function (success){
                            $("#myModalupsucc").modal({
                                keyboard:false,
                                backdrop:false,
                            })
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
        var a = $('#queryQuizu').bootstrapTable('getSelections');
        var idsp = "";
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].qiugouid;
        }
        var id = idsp.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/zh/updatechuJiaIds",
            type:"post",
            data:{"flag":flag,"ids":id},
            dataType:"text",
            success:function (success){
                $("#myModalxia").hide();
                $("#myModalupsucc").modal({
                    keyboard:false,
                    backdrop:false,
                })
            }
        })
    }

    function updateShenId(flag){
        var a = $('#queryQuizu').bootstrapTable('getSelections');
        var idsp = "";
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].qiugouid;
        }
        var id = idsp.substring(1);
        $.ajax({
            url:"<%=request.getContextPath()%>/zh/updateShenHeChuIds",
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

    //删除
    $("#quedelete").click(function (){
        location.reload();
    })
    //更改橱窗
    $("#quedel").click(function () {
        location.reload();
    })



    //修改
    function queryQiuId(qiugouid){
        location.href="<%=request.getContextPath()%>/zh/updateQiuGou?qiugouid="+qiugouid;
    }





</script>



</body>
</html>
