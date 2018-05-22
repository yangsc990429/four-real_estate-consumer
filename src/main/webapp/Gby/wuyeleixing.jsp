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
    <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">新建➕</button>&nbsp;&nbsp;
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
                    物业名称：<input  type='text'  name='yuanname'/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;排序：<input type='text' id="paixu" name='xuhao' /><font size="1">序号越小，越靠前</font><br/>
                    所在小组：<input type="checkbox" name="xiaozu" value="1">出售<input type="checkbox" name="xiaozu" value="2">出租
                    <input type="checkbox" name="xiaozu" value="3">求购<input type="checkbox" name="xiaozu" value="4">求租
                    <input type="checkbox" name="xiaozu" value="5">楼盘<input type="checkbox" name="xiaozu" value="6">转让<br/>
                    是否启用：<input type="radio" checked name="statusup" value="启用">启用  <input type="radio" name="statusup" value="禁用"><font color="red">禁用</font><br/>
                    形象图标：  <input type="hidden" name="photoimg" id="photo1"><br>

                    <input id="file-pic2" name="file" type="file" multiple data-min-file-count="1"><br>
                    <%-- 形象图标:<input  type='text'  name='photoimg'/>--%>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button"  data-dismiss="modal" class="btn btn-primary" onclick="addwuyeleixing()">
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
                <h4 class="modal-title" id="myModalLabel" onclick="up()">
                    修改
                </h4>
            </div>
            <div class="modal-body">
                <form id="upForm">
                    <input type="hidden" name='id' id="id1" >
                    原始名称：<input  type='text'  name='yuanname' id="yuanname"/><br/>
                    展示名称：<input  type='text'  name='zhanname' id="zhanname"/><br/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;排序：<input type='text'  name='xuhao' id="xuhao"/><font size="1">序号越小，越靠前</font><br/>
                    所在小组：<input type="checkbox" name="xiaozu" value="出售">出售<input type="checkbox" name="xiaozu" value="出租">出租
                    <input type="checkbox" name="xiaozu" value="求购">求购<input type="checkbox" name="xiaozu" value="求租">求租
                    <input type="checkbox" name="xiaozu" value="5">楼盘<input type="checkbox" name="xiaozu" value="6">转让<br/>
                    是否启用：<input type="radio" checked name="statusup" value="启用">启用  <input type="radio" name="statusup" value="禁用"><font color="red">禁用</font><br/>
                    形象图标：  <input type="hidden" name="photoimg" id="photo2"><br>

                    <input id="file-pic3" name="file" type="file" multiple data-min-file-count="1"><br>

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
<table class="table" id="wuyeleixing" border="1"></table>




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
        $("#wuyeleixing").bootstrapTable({
            url:"<%=request.getContextPath()%>/gby/queryApartment",
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
                field:'yuanname', title:'类型原始名称', idField:true, width:10},
                {field:'zhanname', title:'展示名称', width:10},
                {field:'xuhao', title:'序号', width:10},
                {field:'statusup', title:'是否启用', width:10},
                {field:'cz',title:'操作',width:100,
                    formatter: function(value,row,index){
                        return '<button class="btn btn-primary" data-toggle="modal" data-target="#myModal1" onclick="updatewuyeleixing('+row.id+')">编辑</button><button type="button" class="btn btn-danger" onclick="deletewuyeleixing('+row.id+')" >删除</button>';
                    }
                }

            ]
        })
    })

    $(function () {
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/querycount",
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
    function addwuyeleixing(){
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/addApartment",
            type:"post",
            data:$("#addForm").serialize(),
            dateType:"text",
            success:function (addFlag){
                    $("#wuyeleixing").bootstrapTable('refresh');
            },
            error:function(){
                alert("新增出错");
            }
        })
    }

    function deletewuyeleixing(id){

        if(confirm("确认删除吗?")){
            $.ajax({
                url:"<%=request.getContextPath()%>/gby/deleteApartment",
                type:"post",
                data:{"id":id},
                dataType:"text",
                success:function (delFlag){
                    $("#wuyeleixing").bootstrapTable('refresh');
                },
                error:function (){
                    alert("删除失败");
                    location.reload();
                }
            })
        }
    }
    function updatewuyeleixing(id){
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/queryById",
            type:"post",
            data:{"id":id},
            dataType:"json",
            success:function (ss){
                $("#id1").val(ss.id);
                $("#yuanname").val(ss.yuanname);
                $("#zhanname").val(ss.zhanname);
                $("#xuhao").val(ss.xuhao);
                $("#xiaozu").val(ss.xiaozu);
                $("#statusup").val(ss.statusup);
                $("#photoimg").val(ss.photoimg);
                $("#imgId").attr("src",ss.photoimg)

                var s = ss.xiaozu;//这里改你数据库读出的
                s=','+s+',';//前后加限定符
                var cb = document.getElementsByName('xiaozu');//这里改你checkbox的name值
                for (var i = 0; i < cb.length; i++)
                    if (s.indexOf(',' + cb[i].value + ',') != -1) cb[i].checked = true;
                $('#myModal1').modal({
                    keyboard:false,
                })
            }
        });
    }
    function up(){
        $.ajax({
            url:"<%=request.getContextPath()%>/gby/updateApartment",
            type:"post",
            data:$("#upForm").serialize(),
            dataType:"text",
            success:function (updateFlag){
                $("#wuyeleixing").bootstrapTable('refresh');
            },
            error:function (){
                alert("修改错误");
            }

        })

    }
</script>
<script type="text/javascript">
    $('#file-pic2').fileinput({//初始化上传文件框
        showUpload : true,	//是否显示上传按钮
        showRemove : true,	//是否显示移除按钮
        uploadAsync: true,
        uploadLabel: "上传",		//设置上传按钮的汉字
        uploadClass: "btn btn-primary",//设置上传按钮样式
        showCaption: true,		//是否显示标题
        language: "zh",			//配置语言
        uploadUrl: "<%=request.getContextPath()%>/gby/addPicture",
        maxFileSize : 0,
        maxFileCount: 2,		//允许最大上传数，可以多个，当前设置单个
        enctype: 'multipart/form-data',
        //allowedPreviewTypes : ['image', 'html', 'text', 'video', 'audio', 'flash'],//预览类型
        //allowedFileTypes: ['image', 'video', 'flash'],	//文件类型
        allowedFileExtensions : ["jpg", "png","gif"],	//上传文件格式
        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
        dropZoneTitle: "请通过拖拽图片文件放到这里",
        dropZoneClickTitle: "或者点击此区域添加图片",
        //uploadExtraData: {"id": id},//这个是外带数据
        uploadExtraData: function(previewId, index) {   //额外参数的关键点
            var obj = {};
            obj.base=$($('#'+previewId+' photoimg')[index]).prop('src');
            return obj;
        },
        showBrowse: false,
        browseOnZoneClick: true,
        slugCallback : function(filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
    });

    $('#file-pic2').on('fileerror', function(event, data) {
        alert("失败");
    });
    //上传文件成功，回调函数
    $('#file-pic2').on("fileuploaded", function(event, data, previewId, index) {
        var result = data.response; //后台返回的json
        //alert(result);
        $('#photo1').val(result.a);
    })
</script>
<script type="text/javascript">
    $('#file-pic3').fileinput({//初始化上传文件框
        showUpload : true,	//是否显示上传按钮
        showRemove : true,	//是否显示移除按钮
        uploadAsync: true,
        uploadLabel: "上传",		//设置上传按钮的汉字
        uploadClass: "btn btn-primary",//设置上传按钮样式
        showCaption: true,		//是否显示标题
        language: "zh",			//配置语言
        uploadUrl: "<%=request.getContextPath()%>/gby/addPicture",
        initialPreview: [

            "<img class='kv-preview-data file-preview-image' id='imgId' width='150px' height='250px'>",

        ],
        maxFileSize : 0,
        maxFileCount: 2,		//允许最大上传数，可以多个，当前设置单个
        enctype: 'multipart/form-data',
        //allowedPreviewTypes : ['image', 'html', 'text', 'video', 'audio', 'flash'],//预览类型
        //allowedFileTypes: ['image', 'video', 'flash'],	//文件类型
        allowedFileExtensions : ["jpg", "png","gif"],	//上传文件格式
        msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
        dropZoneTitle: "请通过拖拽图片文件放到这里",
        dropZoneClickTitle: "或者点击此区域添加图片",
        //uploadExtraData: {"id": id},//这个是外带数据
        uploadExtraData: function(previewId, index) {   //额外参数的关键点
            var obj = {};
            obj.base=$($('#'+previewId+' photoimg')[index]).prop('src');
            return obj;
        },
        showBrowse: false,
        browseOnZoneClick: true,
        slugCallback : function(filename) {
            return filename.replace('(', '_').replace(']', '_');
        }
    });

    $('#file-pic3').on('fileerror', function(event, data) {
        alert("失败");
    });
    //上传文件成功，回调函数
    $('#file-pic3').on("fileuploaded", function(event, data, previewId, index) {
        var result = data.response; //后台返回的json
        //alert(result);
        $('#photo2').val(result.a);
    })

</script>
</body>
</html>