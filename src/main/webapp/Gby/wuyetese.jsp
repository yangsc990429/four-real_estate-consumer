<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>


    <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <!-- Bootstrap 核心css -->
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
<h1 align="right">
    <button type="button" class="btn btn-danger" onclick="deletes()" >批量删除</button>
    <button class="btn btn-primary btn-lg" data-toggle="modal" onclick="gby()" data-target="#myModal">新建➕</button>&nbsp;&nbsp;
</h1>
<!-- <button  class="btn btn-success" data-toggle="modal" data-target="#myModal">新增</button>
 --><div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel" >
                    <font size="#000000">物业类型</font>
                </h4>
            </div>
            <div class="modal-body">
                <form id="addForm">
                    <!-- <input type="text" name="productcategory" class="form-control" placeholder="类别名" > -->
                    特色名称：<input  type='text'  name='name'/><br/>
                    出售栏目：<input type="checkbox" id="parent" >全选<span id="chushou"></span><br/>
                    出租栏目：<input type="checkbox" id="parent1" >全选<span id="chuzu"></span><br/>
                    楼盘栏目：<input type="checkbox" name="programa" value="1">楼盘<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;排序：<input type='text' id="paixu" name='xuhao' /><font size="1">序号越小，越靠前</font><br/>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button"  data-dismiss="modal" class="btn btn-primary" onclick="addFeature()">
                    提交
                </button>
            </div>
        </div>
    </div>
</div>



<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" onclick="up()">
                    修改
                </h4>
            </div>
            <div class="modal-body">
                <form id="upForm">
                    <input type="hidden" name='id' id="id1" >
                    特色名称：<input  type='text'  name='name' id="name"/><br/>
                    出售栏目：<input type="checkbox" id="parent3">全选<span id="chushou1"></span><br/>
                    出租栏目：<input type="checkbox" id="parent2" >全选<span id="chuzu1"></span><br/>
                    楼盘栏目：<input type="checkbox" name="programa" value="1">楼盘<br>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;排序：<input type='text'  name='xuhao' id="xuhao"/><font size="1">序号越小，越靠前</font><br/>

                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="up()">
                    提交更改
                </button>
            </div>
        </div>
    </div>
</div>
<table class="table" id="wuyetese" border="1"></table>




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

<script type="text/javascript">

    $(function(){
        $("#wuyetese").bootstrapTable({
            url:"<%=request.getContextPath()%>/gby/queryFeature",
            striped: true,//隔行变色
            showPaginationSwitch:true,//是否显示 数据条数选择框
            minimumCountColumns:1,//最小留下一个
            showRefresh:true,//显示刷新按钮
            showToggle:true,//显示切换视图
            search:true,//是否显示搜索框
            searchOnEnterKey:true,//设置为 true时，按回车触发搜索方法，否则自动触发搜索方法
            // sidePagination:"server",//
            /*     pagination:true,//开启分页
               paginationLoop:true,//开启分页无限循环
               pageNumber:1,//当前页数
               pageSize:3,//每页条数
               pageList:[0,3,6], */ //如果设置了分页，设置可供选择的页面数据条数。设置为All 则显示所有记录。
            method:'post',//发送请求的方式
            contentType:"application/x-www-form-urlencoded",//必须的否则条件查询时会乱码
            queryParams:function(){
            },
            columns:[{
                field:'che', width:1, checkbox:true},
                {field:'name', title:'物业特色列表', idField:true, width:10},
                {field:'xuhao', title:'序号', width:10},
                {field:'createdate', title:'编辑时间', width:10},
                {field:'cz',title:'操作',width:100,
                    formatter: function(value,row,index){
                        return '<button class="btn btn-primary" data-toggle="modal" data-target="#myModal1" onclick="updatewuyetese('+row.id+')">编辑</button><button type="button" class="btn btn-danger" onclick="deletewuyetese('+row.id+')" >删除</button>';
                    }
                }

            ]
        })
    })

    $(function () {
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/querycount1",
            type:"post",
            //data:{"id":id},
            dataType:"json",
            success:function (paixu){
                $("#paixu").val(paixu+1);
            },
            error:function (){
                alert("排序");
                //location.reload();
            }
        });

    })

    //全选反选
    $("#parent1").on("click",function(){
        var parent =$(this).prop("checked");
        $("[name='rendout']").each(function(){
            $(this).prop("checked",parent);
        });
    });
    $("#parent").on("click",function(){
        var parent1 =$(this).prop("checked");
        $("[name='sell']").each(function(){
            $(this).prop("checked",parent1);
        });
    });

    ("#parent2").on("click",function(){
        var parent =$(this).prop("checked");
        $("[name='rendout']").each(function(){
            $(this).prop("checked",parent);
        });
    });
    $("#parent3").on("click",function(){
        var parent1 =$(this).prop("checked");
        $("[name='sell']").each(function(){
            $(this).prop("checked",parent1);
        });
    });

    function gby() {
        chuzu();
        chushou();
    }
    //出租栏目多选
    function chuzu(){
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/queryApartment2",
            type:"post",
            dataType:"json",
            async:false,
            success:function (list){
                var check="";
                var aid ="";
                var yn="";
                for (var i=0;i<list.length;i++){
                    aid=list[i].id;
                    yn=list[i].yuanname;
                    check+="<input type='checkbox'  name='rendout' value='"+aid+"'>"+yn+"";
                }
                $("#chuzu").html(check);
                $("#chuzu1").html(check);
            },
            error:function (){
                alert("出错了");
            }
        })
    }

    //出售栏目多选
    function chushou() {
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/queryApartment1",
            type:"post",
            dataType:"json",
            async:false,
            success:function (list){
                var check1="";
                var zid ="";
                var yuanname="";
                for (var i=0;i<list.length;i++){
                    zid=list[i].id;
                    yuanname=list[i].yuanname;
                    check1+="<input type='checkbox' name='sell' value='"+zid+"'>"+yuanname+"";
                }
                $("#chushou").html(check1);
                $("#chushou1").html(check1);
            },
            error:function (){
                alert("出错了");
            }
        })
    }

    function addFeature(){
        $("#name").val("");
        $("[name='programa']").val("");
        $("#xuhao").val("");

        $.ajax({
            url:"<%=request.getContextPath()%>/gby/addFeature",
            type:"post",
            data:$("#addForm").serialize(),
            dateType:"text",
            success:function (addFlag){
                location.reload();
            },
            error:function(){
                alert("新增出错");
            }
        })
    }

    function deletewuyetese(id){

        if(confirm("确认删除吗?")){
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/deleteFeature",
                type:"post",
                data:{"id":id},
                dataType:"text",
                success:function (delFlag){
                    $("#wuyetese").bootstrapTable('refresh');
                },
                error:function (){
                    alert("删除失败");
                    location.reload();
                }
            })
        }
    }
    //批量删除
    function deletes() {
        //获取所有被选中的记录
        var rows = $("#wuyetese").bootstrapTable('getSelections');
        if (rows.length== 0) {
            alert("请先选择要删除的记录!");
            return;
        }
        var ids = '';
        for (var i = 0; i < rows.length; i++) {
            ids += rows[i]['id'] + ",";
        }
        ids = ids.substring(0, ids.length - 1);
        if(confirm("确认删除吗?")){
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/deleteswuyetese",
                type:"post",
                data:{"ids":ids},
                dataType:"text",
                success:function (delFlag){
                    $("#wuyetese").bootstrapTable('refresh');

                },
                error:function (){
                    alert("删除失败");
                    location.reload();
                }
            })
        }

    }
    function updatewuyetese(id) {
        updatewuye(id);
        chuzu();
        chushou();
    }

    function updatewuye(id){
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/queryByIdwuyetese",
            type:"post",
            data:{"id":id},
            dataType:"json",
            success:function (gg){
                $("#id1").val(gg.id);
                $("#name").val(gg.name);
                $("[name='programa']").val(gg.programa);
                if(gg.programa == "1"){
                    $("[name='programa']").attr("checked",true)
                }
                $("#xuhao").val(gg.xuhao);

                var s = gg.sell;//这里改你数据库读出的
                s=','+s+',';//前后加限定符
                var cb = document.getElementsByName('sell');//这里改你checkbox的name值
                for (var i = 0; i < cb.length; i++)
                    if (s.indexOf(',' + cb[i].value + ',') != -1) cb[i].checked = true;

                /*回显复选框出租*/
                var s1 = gg.rendout;//这里改你数据库读出的
                s1=','+s1+',';//前后加限定符
                var cb1 = document.getElementsByName('rendout');//这里改你checkbox的name值
                for (var i = 0; i < cb1.length; i++)
                    if (s1.indexOf(',' + cb1[i].value + ',') != -1) cb1[i].checked = true;

                $('#myModal1').modal({
                    keyboard:false,
                })
            }
        });
    }

    function up(){
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/updatewuyetese",
            type:"post",
            data:$("#upForm").serialize(),
            dataType:"text",
            success:function (updateFlag){
                $("#wuyetese").bootstrapTable('refresh');
            },
            error:function (){
                alert("修改错误");
            }

        })

    }
</script>

</body>
</html>