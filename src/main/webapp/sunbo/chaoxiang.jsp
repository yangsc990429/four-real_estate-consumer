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

<!-- 模态框（Modal） -->
<div class="modal fade" id="modelete1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title">
                    新增
                </h4>
            </div>
            <div class="modal-body" align="center">
                <form id="addtitieform1">
                    <table>
                        <tr>
                            <td align="center"><h3>房屋朝向:</h3></td>
                            <td  width="280px"><input type="text" name="name" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td align="center"><h3>排序:</h3></td>
                            <td><input type="text" name="xuhao" class="form-control" placeholder="必填" size="5px">
                            </td>
                            <td><font color="#a52a2a">序号越小，越靠前</font></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-default" onclick="addesuccess()" data-dismiss="modal">确定</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<!-- 模态修改框（Modal） -->
<div class="modal fade" id="moupdate" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title">
                    修改
                </h4>
            </div>
            <div class="modal-body" align="center">
                <form id="updatetitieform"method="post">
                    <input type="hidden" name="id">
                    <table>
                        <tr>
                            <td align="center"><h3>房屋朝向:</h3></td>
                            <td  width="280px"><input type="text" name="name" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>

                        <tr>
                            <td align="center"><h3>排序:</h3></td>
                            <td><input type="text" name="xuhao" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a">序号越小，越靠前</font></td>
                        </tr>
                    </table>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-default" onclick="updatessgai()" data-dismiss="modal">修改</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>


    <table class="table table-bordered" id="ditirtit" align="center">
        <caption><button type="button" class="btn btn-primary" onclick="addkhgllxxrgl2()">新增</button>
            <button type='button' onclick='deletekhglssssids()' class='btn btn-danger'>删除</button>
        </caption>
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
            $("#ditirtit").bootstrapTable({
                url:"<%=request.getContextPath()%>/SunController/queryOrientation",
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

                columns:[
                    {checkbox:true},
                    {field:'name',title:'房屋朝向列表',width:230},
                    {field:'xuhao',title:'序号',width:230},
                    {field:'createdate',title:'编辑时间',width:230},
                    {field:'act',title:'操作',width:300,
                        formatter: function(value,row,index){
                            return "<button type='button'  class='btn btn-success' href='#updateyhtck' class='btn cye-lm-tag' data-toggle='modal' onclick='updatechaoxiang("+row.id+")'>修改</button>&nbsp;&nbsp;<button type='button' onclick='deletekhglss1("+row.id+")' class='btn btn-danger'>删除</button>";
                        }
                    }]
            })
        })
        //查询序列号
        function addkhgllxxrgl2(){
            $('#modelete1').modal({
                keyboard:false,
            })
            $.ajax({
                url:"<%=request.getContextPath()%>/SunController/queryxuhao",
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
                url:"<%=request.getContextPath()%>/SunController/addchaoxiangSS",
                type:"post",
                data:$("#addtitieform1").serialize(),
                dataType:"text",
                async:false,
                success:function (xu){
                    alert(xu);
                    alert("新增成功");
                    location.reload();
                }
            })
        }
        //删除
        function deletekhglss1(id){
            $.ajax({
                url:'<%=request.getContextPath()%>/SunController/deleteditie1?id='+id,
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
        //批量删除
        function deletekhglssssids() {
            var a = $('#ditirtit').bootstrapTable('getSelections');
            var idsp = "";
            for (var i = 0; i < a.length; i++) {
                idsp+=","+a[i].id;
            }
            var id = idsp.substring(1);
            alert(id);
            $.ajax({
                url:"<%=request.getContextPath()%>/SunController/deleteidspishan",
                type:"post",
                data:{"id":id},
                dataType:"text",
                async:false,
                success:function (date){
                    $("#ditirtit").bootstrapTable('refresh')
                }
            });
        }
        function updatechaoxiang(id) {
            $('#moupdate').modal({
                keyboard:false,
            })
            $.ajax({
                url:"<%=request.getContextPath()%>/SunController/updatechaoxianghui",
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
            alert(11)
            $.ajax({
                url:"<%=request.getContextPath()%>/SunController/updatechaoxianggai",
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
    </script>

</body>
</html>
