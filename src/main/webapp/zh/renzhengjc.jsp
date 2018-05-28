
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
                    <input type="hidden" name="huirenshenid">
                    <table>
                        <tr>
                            <td>认证状态:</td>
                            <td>
                                <div class="col-sm-8">
                                    <input type="text" name="huirenshenstruts" class="form-control">
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
                                <label><input type="radio" name="huirenshensfz" value="1">等待审核</label>
                                <label><input type="radio" name="huirenshensfz" value="2">通过审核</label>
                                <label><input type="radio" name="huirenshensfz" id="danxuan" value="3">认证不通过</label>
                                <label><input type="radio" name="huirenshensfz" value="4">未提交认证</label>
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
                                    <input type="text" name="huirenshensfz" class="form-control">
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
                                    <input type="text" name="huirenshenname" class="form-control">
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
                                    <input type="text" name="huirenshensfzh" class="form-control">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>身份证正面:</td>
                            <td><input type="file" name="huirenshenimgzhng"></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>身份证反面:</td>
                            <td><input type="file" name="huirenshenimgfan"></td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></br>
                                <button type="button" class="btn btn-default" onclick="fanhuisyhy()">返回</button>&nbsp;&nbsp;
                                <button type="button" class="btn btn-primary" onclick="updatesyhyxx()">保存修改</button>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <h3 align="left">管理员操作</h3>
                    <hr>
                    <br>
                    <table>
                        <tr>
                            <td>营业执照认证:</td>
                            <td>
                                <div class="col-sm-8">
                                    <input type="text" name="huiyyzzrzzt" class="form-control">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td>营业执照审核:</td>
                            <td>
                                <label><input type="radio" name="huiyyzzzzsh" value="1">等待审核</label>
                                <label><input type="radio" name="huiyyzzzzsh" value="2">通过审核</label>
                                <label><input type="radio" name="huiyyzzzzsh" id="zz" value="3">认证不通过</label>
                                <label><input type="radio" name="huiyyzzzzsh" value="4">未提交认证</label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                    </table>
                    <table id="bbb">
                        <tr>
                            <td>被拒原因:</td>
                            <td>

                                <div class="col-sm-12">
                                    <input type="text" name="nianprice" class="form-control">
                                </div>

                            </td>
                        </tr>


                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>

                    </table>
                    <table>
                        <tr>
                            <td>认证状态:</td>
                            <td>
                                <div class="col-sm-8">
                                    <input type="text" name="huiyygzsmc" class="form-control">
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>

                    </table>
                    <table>
                    <tr>
                        <td>营业执照:</td>
                        <td><input type="file" name=""></td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
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

    var a = <%=request.getParameter("huijinid")%>;
    alert(a)

    $(function(){

        $("#bjyy").hide();
        $("#bbb").hide();

        $.ajax({
            url:"<%=request.getContextPath()%>/zh/renzhengByIdjc?huirenshenid="+a,
            type:"post",
            dataType:"json",
            async:false,
            success:function (ren){

                $("[name='huirenshenid']").val(ren.huijinid);
                $("[name='huirenshenstruts']").val(ren.huirenshenstruts);
                $("[name='huijizhanghao']").val(ren.huijizhanghao);
                $("[name='huirenshensfz']").val(ren.huirenshensfz);
                $("[name='huirenshenname']").val(ren.huirenshenname);
                $("[name='huirenshensfzh']").val(ren.huirenshensfzh);
                $("[name='huirenshenimgzhng']").val(ren.huirenshenimgzhng);
                $("[name='huirenshenimgfan']").val(ren.huirenshenimgfan);
            }
        });


    $("[name='huirenshensfz']").click(function () {
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
