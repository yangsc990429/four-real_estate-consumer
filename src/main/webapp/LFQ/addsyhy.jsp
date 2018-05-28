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
<%--style="width:800px;height:600px"--%>
<div class="col-md-4 column" style="width: 100%;height: 100%">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                <button type="button" onclick="jibenziliao()" class="btn btn-default btn-lg ">基本资料</button>
                <button type="button" onclick="renzhengshenhejsp()" class="btn btn-default btn-lg ">认证审核</button>
                <button type="button" onclick="jinqianguanlijsp()" class="btn btn-default btn-lg ">金钱管理</button>

               <%-- <button type="button" class="btn btn-warning" onclick="daochu()">导出数据</button>
                <button type="button" class="btn btn-primary" onclick="addkhgllxxrgl()">新增</button>--%>
            </h3>
        </div>
        <div class="panel-body">
            <div id="trtreeas">
                <form id="addsyhyform">
                    <input type="hidden" name="huijiid">
                    <input type="hidden" name="huiquanxian">
                    <input type="hidden" name="huijinid">

                    <table>
                        <tr>
                            <td align="center"><h4>会员账号:</h4></td>
                            <td  width="280px"><input type="text" name="huijizhanghao" class="form-control" size="5px" disabled="disabled"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center"><h4>会员密码:</h4></td>
                            <td><input type="text" name="huijipass" class="form-control" size="5px"></td>
                            <td><font color="#a5z42a2a">留空表示不修改</font></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center"><h4>联系人:</h4></td>
                            <td><input type="text" name="huijilianxiren" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a"></font></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center"><h4>邮箱地址:</h4></td>
                            <td><input type="text" name="huijiyouxiang" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a"></font></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center"><h4>手机号码:</h4></td>
                            <td><input type="text" id="pai" name="huijishouji" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center"><h4>联系电话:</h4></td>
                            <td><input type="text"  name="huijidianhua" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="3">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center"><h4>QQ号码:</h4></td>
                            <td><input type="text"  name="huijiqq" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center"><h4>所在区域:</h4></td>
                            <td>
                                <div>
                                <div class="col-sm-6">
                                    <select name="huijiquyu" class="form-control" onchange="asd()">
                                    </select>
                                </div>
                                </div>
                                <span id="hedden">
                                <div>
                                <div class="col-sm-7">
                                    <select name="huijiquyudf" class="form-control">
                                    </select>
                                </div>
                                </div>
                                </span>
                            </td>
                            <td>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
        <%--                <tr>
                            <td align="center"><h4>个人头像:</h4></td>
                            <td><input type="file" name="huijitouxiang"></td>
                            <td></td>
                        </tr>--%>
                        <tr>
                            <td align="center"><h4>个人头像:</h4></td>
                            <td width="220px">
                                <input type="hidden" name="huijitouxiang" id="photo1">
                                <input id="file-pic2" name="file" type="file" multiple data-min-file-count="1">
                            </td>
                            <%--<td width="220px" colspan="2" align="center"><font color="red">最佳尺寸：295*370</font></td>--%>
                            <td width="220px"></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <%--<tr>
                            <td></td>
                            <td><img src="" width="60px" height="60px"></td>
                            <td></td>
                        </tr>--%>
                    </table>
                    <br>
                    <h3 align="left">管理员操作</h3>
                    <hr>
                    <br>
                    <table>
                        <tr>
                            <td align="center"><h4>权限:</h4></td>
                            <td>
                                <label><input type="checkbox" id="q4" onclick="xuan()" /> 全选</label>
                                <label><input name="check" id="a" type="checkbox" value="1"/> 管理出租</label>
                                <label><input name="check" id="b" type="checkbox" value="2"/> 管理出售</label>
                                <label><input name="check" id="c" type="checkbox" value="3"/> 管理求购</label>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>剩余刷新量:</h4></td>
                            <td>
                                <div class="col-sm-4">
                                <input type="text" name="huisysxl" class="form-control">
                                </div>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>会员等级:</h4></td>
                            <td>
                                <div class="col-sm-6">
                                <select name="huidengid" class="form-control">
                            </select>
                                </div>
                            </td>
                            <td><font color="#a52a2a"></font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>等级到期:</h4></td>
                            <td>
                                <%--<div class="col-sm-8 ">--%>
                                <input type="text" name="huidjdqdate" class="form-control">
                               <%-- </div>--%>
                            </td>
                            <td><font color="#a52a2a">正确格式：0000-00-00 00:00:00</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>可用余额:</h4></td>
                            <td>
                                <div class="col-sm-4">
                                <input type="text" class="form-control" name="huijinkymoney" size="5px" disabled="disabled">
                                </div>
                            </td>
                            <td></td>
                        </tr>
                        </br>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <button type="button" class="btn btn-default" onclick="fanhuisyhy()">返回</button>&nbsp;&nbsp;
                                <button type="button" class="btn btn-primary" onclick="updatesyhysiugai()">保存修改</button></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>




<%--<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="tabbable" id="tabs-296837">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-657554" data-toggle="tab">Section 1</a>
                    </li>
                    <li>
                        <a href="#panel-738553" data-toggle="tab">Section 2</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane " id="panel-657554">
                        <p>
                            I'm in Section 1.
                        </p>
                    </div>
                    <div class="tab-pane active" id="panel-738553">
                        <p>
                            Howdy, I'm in Section 2.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>--%>



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
<script type="text/javascript" src="<%=request.getContextPath()%>/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/ueditor/ueditor.all.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/ueditor/zh-cn.js"></script>
<script type="text/javascript">

    var id = <%=request.getParameter("id")%>;
<<<<<<< HEAD
=======

>>>>>>> origin/master
    $(function(){

            $.ajax({
                url:"<%=request.getContextPath()%>/lfq/updatesyhyhuicha?id="+id,
                type:"post",
                dataType:"json",
                async:false,
                success:function (date){
                    console.info(date)
                    var diquv = date.huijiquyu
                    var difang = date.huijiquyudf
                    var dengji = date.huidengid
                    $.ajax({
                        url:"<%=request.getContextPath()%>/lfq/querydrea",
                        type:"post",
                        dataType:"json",
                        async:false,
                        success:function (kpid){
                            var option = "<option value='-1'>不限制</option>";
                            $(kpid).each(function(){
                                var b = this.name;
                                var c = this.shouzimu;
                                var d =" - ";
                                if(diquv == this.id){
                                    option+="<option  value='"+this.id+"' selected>"+c+d+b+"</option>";
                                }else {
                                    option+="<option  value='"+this.id+"' >"+c+d+b+"</option>";
                                }
                            })
                            $("[name='huijiquyu']").html(option);
                        }
                    })

                    //二级回显
                    var ids = $("[name='huijiquyu']").val();
                    if ($("[name='huijiquyu']").val()!=-1){
                        $("#hedden").show();
                        $.ajax({
                            url:"<%=request.getContextPath()%>/lfq/querydreadifangid?id="+ids,
                            type:"post",
                            dataType:"json",
                            async:false,
                            success:function (da){
                                var option = "";
                                $(da).each(function(){
                                    var b = this.name;
                                    var c = this.shouzimu;
                                    var d =" - ";
                                    if(this.id == difang){

                                        option+="<option  value='"+this.id+"' selected>"+c+d+b+"</option>";
                                    }else {
                                       option+="<option  value='"+this.id+"' >"+c+d+b+"</option>";
                                    }
                                })
                                $("[name='huijiquyudf']").html(option);
                            }
                        })
                    }else {
                        $("#hedden").hide();
                    }
                    //等级选中
                    $.ajax({
                        url:"<%=request.getContextPath()%>/lfq/queryhydj",
                        type:"post",
                        dataType:"json",
                        async:false,
                        success:function (da){
                            var option = "";
                            $(da).each(function(){
                                if(dengji == this.huidengid){
                                    option+="<option value='"+this.huidengid+"' selected>"+this.huidengname+"</option>";
                                }else {
                                    option+="<option value='"+this.huidengid+"'>"+this.huidengname+"</option>";
                                }
                            })
                            $("[name='huidengid']").html(option);
                        }
                    })


                    $("[name='huijiid']").val(date.huijiid);
                    $("[name='huijizhanghao']").val(date.huijizhanghao);
                    $("[name='huijipass']").val(date.huijipass);
                    $("[name='huijilianxiren']").val(date.huijilianxiren);
                    $("[name='huijiyouxiang']").val(date.huijiyouxiang);
                    $("[name='huijishouji']").val(date.huijishouji);
                    $("[name='huijidianhua']").val(date.huijidianhua);
                    $("[name='huijiqq']").val(date.huijiqq);

                    //图片

                    $("[name='huijitouxiang']").val(date.huijitouxiang);
                    $("#imgId").attr("src",date.huijitouxiang);

                    $("[name='nianprice']").val(date.nianprice);
                    $("[name='huijinid']").val(date.huijinid);
                    $("[name='huijinkymoney']").val(date.huijinkymoney);
                    $("[name='huisysxl']").val(date.huisysxl);
                    //等级

                    $("[name='huidengid']").val(date.huidengid);
                    $("[name='huidjdqdate']").val(date.huidjdqdate);
                    //地区
                    $("[name='huijiquyu']").val(date.huijiquyu);
                    $("[name='huijiquyudf']").val(date.huijiquyudf);
                    //权限
                    $("[name='huiquanxian']").val(date.huiquanxian);


                }
            });

    /*         //查询等级
            $.ajax({
                type:"post",
                dataType:"json",
                async:false,
                success:function (da){
                   var option = "";
                   $(da).each(function(){
                       option+="<option value='"+this.huidengid+"'>"+this.huidengname+"</option>";
                   })
                    $("[name='huidengid']").html(option);
                }
            })*/

               //判断地区隐藏
        if ($("[name='huijiquyu']").val()==-1){
            $("#hedden").hide();
        }


        //回显权限
      var qx = $("[name='huiquanxian']").val();
       var check =document.getElementsByName("check");
        for(var i=0; i< qx.length; i++){
            for(var j=0; j< check.length; j++) {
                if (check[j].value == qx[i].split(",")) {
                    check[j].checked = true;
                }

            }
        }
    })

    //查询地区
    $.ajax({
        url:"<%=request.getContextPath()%>/lfq/querydrea",
        type:"post",
        dataType:"json",
        async:false,
        success:function (da){
            var option = "<option value='-1'>不限制</option>";
            $(da).each(function(){
                var b = this.name;
                var c = this.shouzimu;
                var d =" - ";
                option+="<option  value='"+this.id+"'>"+c+d+b+"</option>";
            })
            $("[name='huijiquyu']").html(option);
        }
    })

    //二级联动
    function asd(){

        var ids = $("[name='huijiquyu']").val();

        if ($("[name='huijiquyu']").val()!=-1){
            $("#hedden").show();
            $.ajax({
                url:"<%=request.getContextPath()%>/lfq/querydreadifangid?id="+ids,
                type:"post",
                dataType:"json",
                async:false,
                success:function (da){
                    var option = "";
                    $(da).each(function(){
                        var b = this.name;
                        var c = this.shouzimu;
                        var d =" - ";
                        option+="<option  value='"+this.id+"'>"+c+d+b+"</option>";
                    })
                    $("[name='huijiquyudf']").html(option);
                }
            })
        }else {
            $("#hedden").hide();
        }

    }

  //全选
  function xuan(){

      var q4 =document.getElementById("q4");
      var check =document.getElementsByName("check");
      for(var i=0;i<check.length;i++){
          check[i].checked=q4.checked;
      }

  }



  // 修改
  function updatesyhysiugai() {
     var check =document.getElementsByName("check");
      var s= '';
      for(var i=0; i<check.length; i++){
          if(check[i].checked)
              s+=check[i].value+','; //如果选中，将value添加到变量s中
      }
      $("[name='huiquanxian']").val(s);
//那么现在来检测s的值就知道选中的复选框的值了
         $.ajax({
              url:"<%=request.getContextPath()%>/lfq/updatesyhysyhygai",
              type:"post",
              data:$("#addsyhyform").serialize(),
              dataType:"text",
              async:false,
              success:function (ss) {
                location.href="<%=request.getContextPath()%>/LFQ/syhy.jsp";
              }
          })

  }

  //返回所有会员
  function fanhuisyhy() {
        location.href="<%=request.getContextPath()%>/LFQ/syhy.jsp";
  }
//认证审核
  function renzhengshenhejsp() {
     location.href="<%=request.getContextPath()%>/LFQ/rzshhy.jsp?id="+id;
  }
//基本资料
  function jibenziliao() {
     location.href="<%=request.getContextPath()%>/LFQ/addsyhy.jsp?id="+id;
  }
//金钱管理
  function jinqianguanlijsp() {
     location.href="<%=request.getContextPath()%>/LFQ/jqgl.jsp?id="+id;
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
        uploadUrl: "<%=request.getContextPath()%>/lfq/insertPicture",
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

</body>
</html>
