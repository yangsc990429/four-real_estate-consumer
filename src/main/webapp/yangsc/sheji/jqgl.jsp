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
                <form id="updatejin">
                    <input type="hidden" name="huijinid"/>
                    <table>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>会员帐号:</strong></font>&nbsp;</td>
                            <td width="220px"><input type="text" name="huijizhanghao" class="form-control" disabled></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>可用余额:</strong></font>&nbsp;</td>
                            <td width="220px">
                                <input type="hidden" name="huijinkymoney"/>
                                <input type="text" name="huijinkymoney" class="form-control" disabled>
                            </td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>金钱数量:</strong></font>&nbsp;</td>
                            <td width="220px">
                                <input type="text" name="huijinmoneysl" class="form-control">
                            </td>
                            <td width="220px" colspan="3">
                                <font size="2">
                                    &nbsp;&nbsp;正数表示增加，负数表示减少，如：100、+100表示加上100金钱，-100表示减去100金钱
                                </font>
                            </td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>说明:</strong></font>&nbsp;</td>
                            <td width="220px" colspan="2"><input type="text" name="huijinshuiming" class="form-control"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="center" colspan="5">
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

    var id = <%=request.getParameter("id")%>;

/*
    $(function(){

        $("#bjyy").hide();
        $("#bbb").hide();

        $.ajax({
            url:"/lfq/updatehyrenzhengshenhe?id="+id,
            type:"post",
            dataType:"json",
            async:false,
            success:function (date){
                /!*$("[name='huijiid']").val(date.huijiid);
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
                $("[name='huijinkymoney']").val(date.huijinkymoney);*!/
            }
        });

        //查询等级
        $.ajax({
            url:"/lfq/queryshenhe",
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
*/
    $(function (){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectXiuId",
            type:"post",
            async:false,
            data:{"id":id},
            dataType:"json",
            success:function (date){
                console.info(date);
                var diquv = date.huijiquyu
                var difang = date.huijiquyudf
                var dengji = date.huidengid
              /*  $.ajax({
                    url:"/lfq/querydrea",
                    type:"post",
                    dataType:"json",
                    async:false,
                    success:function (kpid){

                    }
                })*/
                //二级回显
                $("[name='huijinid']").val(date.huijinid);
                $("[name='huijiid']").val(date.huijiid);
                $("[name='huijipass']").val(date.huijipass);
                $("[name='huijizhanghao']").val(date.huijizhanghao);
                $("[name='huijilianxiren']").val(date.huijilianxiren);
                $("[name='huijiyouxiang']").val(date.huijiyouxiang);
                $("[name='huijidianhua']").val(date.huijidianhua);
                $("[name='huijiqq']").val(date.huijiqq);
                $("[name='huizhi']").val(date.huizhi);
                $("[name='huisicheng']").val(date.huisicheng);
                $("[name='huisidis']").val(date.huisidis);
                $("[name='dpguanjianc']").val(date.dpguanjianc);
                $("[name='dpmiaoshu']").val(date.dpmiaoshu);
                $("[name='huiguantuipai']").val(date.huiguantuipai);
                $("[name='huiguandian']").val(date.huiguandian);
                //图片
                $("[name='huijitouxiang']").val(date.huijitouxiang);
                $("#imgId").attr("src",date.huijitouxiang);

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
                //金额管理
                $("[name='huijinkymoney']").val(date.huijinkymoney);
            }
        })

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
    function updatesyhyxx(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/updateJineId",
            type:"post",
            data:$("#updatejin").serialize(),
            dataType:"text",
            success:function (date){
                location.href="<%=request.getContextPath()%>/yangsc/sheji/shejiList.jsp";
            }
        })
    }

</script>
</body>
</html>
