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
                <button type="button" onclick="renzhengshenhejsp()" class="btn btn-default btn-lg ">基本资料</button>
                <button type="button" onclick="jibenziliao()" class="btn btn-default btn-lg ">认证审核</button>
                <button type="button" onclick="jinqianguanlijsp()" class="btn btn-default btn-lg ">金钱管理</button>
                <%-- <button type="button" class="btn btn-warning" onclick="daochu()">导出数据</button>
                 <button type="button" class="btn btn-primary" onclick="addkhgllxxrgl()">新增</button>--%>
            </h3>
        </div>
        <div class="panel-body">
            <div id="trtreeas">
                <form id="addhui">
                    <input type="hidden" name="huijiid">
                    <table>

                        <tr>
                            <td>会员账号:</td>
                            <td>
                                <div class="col-sm-8">
                                    <input type="text" name="nianprice" class="form-control" disabled="disabled">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>金钱数量:</td>
                            <td>
                                <div class="col-sm-8">
                                    <input type="text" name="" class="form-control" size="3px">+表示加多少 - 表示减少多少
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>说明:</td>
                            <td>
                                <div class="col-sm-8">
                                    <input type="text" name="" class="form-control">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>






                        <tr>
                            <td align="center"><h5>可用余额:</h5></td>
                            <td>
                                <div class="col-sm-4">
                                    <input type="text" name="huijinid" class="form-control" size="5px" disabled="disabled">
                                </div>
                            </td>
                            <td></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></br>
                                <button type="button" class="btn btn-default" onclick="fanhuisyhy()">返回</button>&nbsp;&nbsp;
                                <button type="button" class="btn btn-primary" onclick="updatesyhyxx()">保存修改</button>
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

    var a = <%=request.getParameter("huijinid")%>;

    $(function(){

        $("#bjyy").hide();
        $("#bbb").hide();

        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/updatehyrenzhengshenhe?id="+a,
            type:"post",
            dataType:"json",
            async:false,
            success:function (date){
                /*$("[name='huijiid']").val(date.huijiid);
                $("[name='huijizhanghao']").val(date.huijizhanghao);
                $("[name='huijipass']").val(date.huijipass);
                $("[name='huijilianxiren']").val(date.huijilianxiren);
                $("[name='huijiyouxiang']").val(date.huijiyouxiang);
                $("[name='huijishouji']").val(date.huijishouji);
                $("[name='huijidianhua']").val(date.huijidianhua);
                $("[name='huijiqq']").val(date.huijiqq);
                $("[name='huijitouxiang']").val(date.huijitouxiang);
                $("[name='nianprice']").val(date.nianprice);
                $("[name='huijinid']").val(date.huijinid);
                $("[name='huijinkymoney']").val(date.huijinkymoney);*/
            }
        });

        //查询等级
        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/queryshenhe",
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
        })
    })

    $("[name='danxuan']").click(function () {
        $("#bjyy").hide();
    })

    $("#danxuan").click(function(){
        $("#bjyy").show();
        /* $("#bjyy").hide();*/
    })



    //返回所有会员
    function fanhuisyhy() {
        location.href="<%=request.getContextPath()%>/LFQ/syhy.jsp";
    }

</script>
</body>
</html>
