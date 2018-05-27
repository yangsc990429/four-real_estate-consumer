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

<form id="addzi">
    <table>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font color="red">*</font><font size="4"><strong>分组&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px">
                <select name="zid" class="form-control">
                    <option value="-1">--请选择--</option>
                </select></td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font color="red">*</font><font size="4"><strong>标题&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px" colspan="2"><input type="text" name="name" class="form-control"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>是否加粗&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px">
                <select name="jiacu" class="form-control">
                    <option value="-1">--请选择--</option>
                    <option value="1">是</option>
                    <option value="2">否</option>
                </select>
            </td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>标题颜色&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px">
                <select name="color" class="form-control">
                    <option value="-1" style="background-color:yellow">--请选择--</option>
                    <option value="#ff3300" style="background-color:#ff3300">#ff3300</option>
                    <option value="#ff3300" style="background-color:#669966">#669966</option>
                    <option value="#ff3300" style="background-color:#33cc33">#33cc33</option>
                    <option value="#ff3300" style="background-color:#0033ff">#0033ff</option>
                </select>
            </td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>作者&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="text" name="author" class="form-control"></td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>来源&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="text" name="laiyuan" class="form-control">&nbsp;&nbsp;&nbsp;</td>
            <td width="220px" align="right"><font size="4"><strong>来源网址&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="text" name="wangzhi" class="form-control">&nbsp;&nbsp;&nbsp;</td>
            <td width="220px"></td>
        </tr>
    </table>
    <br>
    <hr>
    <br>
    <table>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>效果图&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px" colspan="2">
                <input type="hidden" name="photoimg" id="photo1">
                <input id="file-pic2" name="file" type="file" multiple data-min-file-count="1">
            </td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>详细描述&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px" colspan="4">
                <textarea name="description" rows="10" cols="50"></textarea>
                <%--<div><script id="content" name="description" type="text/plain" style="width:100%;height:95%;"></script></div>--%>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>SEO关键词:</strong></font>&nbsp;</td>
            <td width="220px" colspan="3"><input type="text" name="seozi" class="form-control"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>SEO关键词:</strong></font>&nbsp;</td>
            <td width="220px" colspan="4">
                <textarea name="seodescription" rows="10" cols="50"></textarea>
            </td>
        </tr>
    </table>
    <br>
    <hr>
    <br>
    <table>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>更新时间&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="text" id="date" name="createdate" class="form-control"></td>
            <td width="220px" colspan="2"><font color="red">&nbsp;&nbsp;正确的时间格式如：2012-12-12 12:12:12</font></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>点击率&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="text" name="dianlu" class="form-control"></td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>发布会员&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="hidden" name="fanuhuiyuan"><input type="text" name="fanuhuiyuan" disabled class="form-control"></td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>今日头条&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px">
                <input type="radio" name="toutiao" value="1">&nbsp;<strong>今日头条</strong>&nbsp;
                <input type="radio" name="toutiao" value="2">&nbsp;<strong>普通</strong>
            </td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>推荐到首页:</strong></font>&nbsp;</td>
            <td width="220px">
                <input type="radio" name="shouye" value="1">&nbsp;<strong>推荐</strong>&nbsp;
                <input type="radio" name="shouye" value="2">&nbsp;<strong>普通</strong>
            </td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr>
            <td width="150px" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td width="150px" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td width="150px" colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td width="150px" colspan="5" align="center">
                <button type="button" class="btn btn-success" onclick="insertZixun()">保存添加</button>
                <button type="button" class="btn btn-default" onclick="fan()">返回列表</button>
            </td>
        </tr>
    </table>
</form>

<div class="modal fade" id="myModalxcbzx" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
                <h4 class="modal-title" id="myModaaa">最新消息</h4>
            </div>
            <div class="modal-body" align="center" style="height:80px"><font size="5px">👌新增成功,返回列表查看</font></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="shu()">确定</button>
            </div>
        </div>
    </div>
</div>

<script src="<%=request.getContextPath()%>/js/jquery-3.2.1.js"></script><script src="<%=request.getContextPath()%>/js/exporting.js"></script>
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
<script src="<%=request.getContextPath()%>/js/highcharts.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/ueditor/ueditor.all.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/ueditor/zh-cn.js"></script>
<script type="text/javascript">
        var cons;
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectConsultall",
            type:"post",
            async:false,
            dataType:"json",
            success:function (consult){
                alert(consult);
                cons = consult;
            }
        })
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectAdvall",
            type:"post",
            async:false,
            dataType:"json",
            success:function (advis){
                var option = "";
                $(advis).each(function (){
                    var id = this.id;
                    option+="<option style='background-color:#99cc99'>"+this.name+"</option>";
                    $(cons).each(function (){
                        if (this.pid == id){
                            option+="<option value="+this.id+">—"+this.name+"</option>";
                        }
                    })
                })
                alert(option)
                $("[name='zid']").html(option);
            }
        })
</script>
<script type="text/javascript">
    var date = new Date();
    var seperator1 = "-";
    var seperator2 = ":";
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
        + " " + date.getHours() + seperator2 + date.getMinutes()
        + seperator2 + date.getSeconds();
    $("[name='createdate']").val(currentdate);
</script>
<script type="text/javascript">
    $("[name='createdate']").datetimepicker({
        format : 'yyyy-mm-dd hh:mm:ss',
        weekStart : 1,
        todayBtn : 1,
        autoclose : 1,
        todayHighlight : 1,
        startView : 2,
        forceParse : 0,
        showMeridian : 1,
        language: 'zh-CN',//汉化
        minView: "month" //选择日期后，不会再跳转去选择时分秒
    });
</script>
<script type="text/javascript">
    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
    var ue = UE.getEditor('content');
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
        uploadUrl: "<%=request.getContextPath()%>/zxh/insertPicture",
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

    function fan(){
        location.href="<%=request.getContextPath()%>/zxh/zixunlist.jsp";
    }

    function insertZixun(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/insertZixun",
            type:"post",
            data:$("#addzi").serialize(),
            dataType:"text",
            success:function (data){
                if(data == "success"){
                    $("#myModalxcbzx").modal({
                        keyboard:false,
                        backdrop:false,
                    })
                }
            }
        })
    }

    function shu(){
        location.href="<%=request.getContextPath()%>/zxh/zixunlist.jsp";
    }

</script>
</body>
</html>
