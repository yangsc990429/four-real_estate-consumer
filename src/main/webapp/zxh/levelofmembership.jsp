<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>会员等级</title>
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

<button type="button" class="btn btn-info btn-sm" onclick="xin()">新增等级</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-warning btn-sm" onclick="pi()">删除</button>
<div align="center">
    <table id="huiyuan" align="center"></table>
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    新增会员信息
                </h4>
            </div>
            <div class="modal-body" align="center">
                <form id="addhui">
                    <table>
                        <tr>
                            <td align="center"><h3>等级名称:</h3></td>
                            <td  width="280px"><input type="text" name="name" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h3>年费:</h3></td>
                            <td><input type="text" name="nianprice" class="form-control" size="5px"></td>
                            <td><font color="#a5z42a2a">元/年</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h3>房源刷新:</h3></td>
                            <td><input type="text" name="shuacount" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a">每日房源刷新量</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h3>房源发布:</h3></td>
                            <td><input type="text" name="facount" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a">每日房源发布量</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h3>排序:</h3></td>
                            <td><input type="text" id="pai" name="paixu" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a">序号越小，越靠前</font></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" onclick="zeng()">保存新增</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div class="modal fade" id="myModalxcbzx" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
                <h4 class="modal-title" id="myModaaa">最新消息</h4>
            </div>
            <div class="modal-body" align="center" style="height:80px"><font size="5px">👌新增成功</font></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="shu()">确定</button>
            </div>
        </div>
    </div>
</div>

<!-- 模态框（Modal） -->
<div class="modal fade" id="myModalupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalupl">
                    修改会员信息
                </h4>
            </div>
            <div class="modal-body" align="center">
                <form id="updatehui">
                    <input type="hidden" name="id"/>
                    <table>
                        <tr>
                            <td align="center"><h3>等级名称:</h3></td>
                            <td  width="280px"><input type="text" name="name" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h3>年费:</h3></td>
                            <td><input type="text" name="nianprice" class="form-control" size="5px"></td>
                            <td><font color="#a5z42a2a">元/年</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h3>房源刷新:</h3></td>
                            <td><input type="text" name="shuacount" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a">每日房源刷新量</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h3>房源发布:</h3></td>
                            <td><input type="text" name="facount" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a">每日房源发布量</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h3>排序:</h3></td>
                            <td><input type="text" name="paixu" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a">序号越小，越靠前</font></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" onclick="update()">保存修改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<div class="modal fade" id="myModalas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
                <h4 class="modal-title">最新消息</h4>
            </div>
            <div class="modal-body" align="center" style="height:80px"><font size="5px">👌修改成功</font></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="shua()">确定</button>
            </div>
        </div>
    </div>
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

    $(function(){
        $("#huiyuan").bootstrapTable({
            url:"<%=request.getContextPath()%>/zxh/selectHui",
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
                {field:'name',title:'会员等级'},
                {field:'paixu',title:'序号'},
                {field:'createdate',title:'创建时间'},
                {field:'cao',title:'操作',
                    formatter:function (value,row,index){

                        return "<button type='button' class='btn btn-link' onclick='updateHui("+row.id+")'>修改信息</button>&nbsp;&nbsp;|&nbsp;&nbsp;<button type='button' class='btn btn-link' onclick='deleteHui("+row.id+")'>删除</button>";
                    }
                }
            ]
        })
    })

    function xin(){
        $("[name='name']").val("");
        $("[name='nianprice']").val("");
        $("[name='shuacount']").val("");
        $("[name='facount']").val("");
        $("[name='paixu']").val("");
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectMaxXu",
            type:"post",
            dataType:"json",
            success:function (maxpai){
                $("#pai").val(maxpai+1);
            }
        })
        $("#myModaladd").modal({
            keyboard:false,
            backdrop:false,
        })
    }

    function zeng(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/insertMem",
            type:"post",
            data:$("#addhui").serialize(),
            dataType:"text",
            success:function (data){
                if(data == "success"){
                    $("#myModaladd").hide();
                    $("#myModalxcbzx").modal({
                        keyboard:false,
                        backdrop:false,
                    })
                }else{
                    alert("失败");
                }
            }
        })
    }

    function shu(){
        location.reload();
    }

    function updateHui(id){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectMemId",
            type:"post",
            data:{"id":id},
            dataType:"json",
            success:function (member){
                $("[name='id']").val(member.id);
                $("[name='name']").val(member.name);
                $("[name='nianprice']").val(member.nianprice);
                $("[name='shuacount']").val(member.shuacount);
                $("[name='facount']").val(member.facount);
                $("[name='paixu']").val(member.paixu);
                $("#myModalupdate").modal({
                    keyboard:false,
                    backdrop:false,
                })
            }
        })
    }

    function update(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/updateHuiId",
            type:"post",
            data:$("#updatehui").serialize(),
            dataType:"text",
            success:function (data){
                if(data == "success"){
                    $("#myModalupdate").hide();
                    $("#myModalas").modal({
                        keyboard:false,
                        backdrop:false,
                    })
                }else{
                    alert("失败");
                }
            }
        })
    }

    function shua(){
        location.reload();
    }

    var ids;
    function deleteHui(id){
        ids=id
        $("#modeletemem").modal({
            keyboard:false,
            backdrop:false,
        })
    }

    function deletesuccess(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/deleteMemId",
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

    $("#quedelete").click(function (){
        location.reload();
    })

    function pi(){
        var a = $('#huiyuan').bootstrapTable('getSelections');
        var idsp = "";
        var count = 0;
        for (var i = 0; i < a.length; i++) {
            idsp+=","+a[i].id;
            ++count;
        }
        var id = idsp.substring(1);
        if(count >= 1){
            if(confirm("确定要删除这 "+count+"</font> 条数据吗?")){
                $.ajax({
                    url:"<%=request.getContextPath()%>/zxh/deleteAllIds",
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
        }else{
            alert("请至少选择一条数据");
        }
    }

</script>

</body>
</html>
