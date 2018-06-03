<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-24
  Time: 下午 04:22
  To change this template use File | Settings | File Templates.
--%>
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


<div class="col-md-4 column" style="width: 100%;height: 100%">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                <button type="button" onclick="jibenziliao()" class="btn btn-default btn-lg ">基本资料</button>
                <button type="button" onclick="renzhengshenhejsp()" class="btn btn-default btn-lg ">认证审核</button>
                <button type="button" onclick="jinqianguanlijsp()" class="btn btn-default btn-lg ">金钱管理</button>

            </h3>
        </div>
        <div class="panel-body">
            <div id="trtreeas">
                <form id="rzform">

                    <input type="hidden" name="huirenid">
                    <!--状态-->
                    <input type="hidden" name="huirenztai">
                    <!--审核-->
                    <%--<input type="hidden" name="huishenid">--%>
                    <table>
                        <tr>
                            <td>认证状态:</td>
                            <td>
                                <div class="col-sm-8">
                                <input type="text" style="border:0" id="bkb" readonly>
                                </div>

                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>会员账号:</td>
                            <td>
                                <div class="col-sm-8">
                                    <input type="text" name="huijizhanghao" class="form-control" disabled="disabled">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>身份证审核:</td>
                            <td>
                                <label><input type="radio" name="danxuan" value="1">等待审核</label>
                                <label><input type="radio" name="danxuan" value="2">通过审核</label>
                                <label><input type="radio" name="danxuan" id="danxuan" value="3">认证不通过</label>
                                <label><input type="radio" name="danxuan" value="4">未提交认证</label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        </table>
                        <table id="bjyy">
                            <tr>
                                <td>被拒原因:</td>
                                <td>

                                    <div class="col-sm-12">
                                        <input type="text" name="huirenjjyy" class="form-control">
                                    </div>

                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                        </table>

                    <table>
                        <tr>
                            <td>真实姓名:</td>
                            <td>
                                <div class="col-sm-8">
                                    <input type="text" name="huirenzsxm" class="form-control">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>身份证号:</td>
                            <td>
                                <div class="col-sm-8">
                                    <input type="text" name="huirensfzh" class="form-control">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>身份证正面:</td>
                            <td><input type="file" name="huirensfzzm"></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>身份证反面:</td>
                            <td><input type="file" name="huirensfzfm"></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></br>
                                <button type="button" class="btn btn-default" onclick="fanhuisyhy()">返回</button>&nbsp;&nbsp;
                                <button type="button" class="btn btn-primary" onclick="updaterenzheng()">保存修改</button>
                            </td>
                        </tr>
                    </table>
                </form>
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
<script type="text/javascript" src="<%=request.getContextPath()%>/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/ueditor/ueditor.all.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/ueditor/zh-cn.js"></script>
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

    var id = <%=request.getParameter("id")%>;
alert(id)
    $(function(){

        $("#bjyy").hide();

        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/queryhuiyuanrenzhneg?id="+id,
            type:"post",
            dataType:"json",
            async:false,
            success:function (date){
                console.info(date);
                $("[name='huirenid']").val(date.huirenid);
                $("[name='huijizhanghao']").val(date.huijizhanghao);
                $("[name='huirenjjyy']").val(date.huirenjjyy);
                $("[name='huirenzsxm']").val(date.huirenzsxm);
                $("[name='huirenztai']").val(date.huirenztai);
                $("#bkb").val(date.huirenztai);
                $("[name='huirensfzh']").val(date.huirensfzh);
                $("[name='huirensfzzm']").val(date.huirensfzzm);
                $("[name='huirensfzfm']").val(date.huirensfzfm);
            }
        });


        if ($("#bkb").val()==1){

            $("#bkb").val("等待审核");

        }else if ($("#bkb").val()==2){

            $("#bkb").val("通过审核");

        }else if($("#bkb").val()==3){

            $("#bjyy").show();
            $("#bkb").val("认证不通过");

        }else {
            $("#bkb").val("未提交认证");
        }




    var check =document.getElementsByName("danxuan");
        for(var j=0; j< check.length; j++) {
             if(check[j].value == $("[name='huirenztai']").val()){
                 check[j].checked = true;
               /*  if(check[j].checked = true){
                     alert(check[j].value+"--这是指");
                     /!*$("[name='huirenztai']").val(check[j].value);*!/
                 }*/
             }
             }

    /*if (check[j].value == qx[i].split(",")) {
        check[j].checked = true;
    }*/



    })


    //修改认证
    function updaterenzheng() {


        var check =document.getElementsByName("danxuan");
        for(var j=0; j< check.length; j++) {
                if(check[j].checked == true){
                    $("[name='huirenztai']").val(check[j].value);
                    if($("[name='huirenztai']").val()!=3){
                        $("[name='huirenjjyy']").val("");
                    }
                }
        }


        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/updatexiugairz",
            type:"post",
            data:$("#rzform").serialize(),
            dataType:"text",
            async:false,
            success:function (da){
                location.href="<%=request.getContextPath()%>/yangsc/sheji/shejiList.jsp";
            }
        })
    }




    $("[name='danxuan']").click(function () {
            $("#bjyy").hide();
    })

    $("#danxuan").click(function(){
            $("#bjyy").show();
    })


    //认证审核
    function renzhengshenhejsp() {
        location.href="<%=request.getContextPath()%>/yangsc/sheji/rzshhy.jsp?id="+id;
    }
    //基本资料
    function jibenziliao() {
        location.href="<%=request.getContextPath()%>/yangsc/sheji/addsyhy.jsp?id="+id;
    }
    //金钱管理
    function jinqianguanlijsp() {
        location.href="<%=request.getContextPath()%>/yangsc/sheji/jqgl.jsp?id="+id;
    }
    //返回所有会员
    function fanhuisyhy() {
        location.href="<%=request.getContextPath()%>/yangsc/sheji/shejiList.jsp";
    }
</script>
</body>
</html>
