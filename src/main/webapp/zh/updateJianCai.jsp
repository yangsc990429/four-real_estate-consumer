<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

    <!-- Bootstrap core CSS -->
    <link href="<%=request.getContextPath() %>/assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="<%=request.getContextPath() %>/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/assets/lineicons/style.css">
    <!-- Custom styles for this template -->
    <link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/assets/css/style-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bootstrap-treeview/dist/bootstrap-treeview.min.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/bootstrap/bTabs-master/b.tabs.css" type="text/css"/>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.css">
    <style type="text/css">
        .btn-group > .btn, .btn-group-vertical > .btn {
            position: relative;
            float: left;
            width: 50.9px;
        height: 34px;
        }
    </style>
</head>
<body>
<div class="col-md-4 column" style="width: 100%;height: 100%">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">
                <button type="button" onclick="renzhengshenhejsp()" class="btn btn-default btn-lg ">基本资料</button>
                <button type="button" onclick="jibenziliao()" class="btn btn-default btn-lg ">认证审核</button>
                <button type="button" onclick="jinJC()" class="btn btn-default btn-lg ">金钱管理</button>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <%-- <button type="button" class="btn btn-warning" onclick="daochu()">导出数据</button>
                 <button type="button" class="btn btn-primary" onclick="addkhgllxxrgl()">新增</button>--%>
            </h3>
        </div>
        <div class="panel-body">
            <div id="trtreeas">
                <form id="addsyhyform">
                    <input type="hidden" name="huijiid">
                    <table>
                        <tr>
                            <td align="center"><h4>会员账号:</h4></td>
                            <td  width="280px"><input type="text" name="huijizhanghao" class="form-control" size="5px" disabled="disabled"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>会员密码:</h4></td>
                            <td><input type="text" name="huijipass" class="form-control" size="5px"></td>
                            <td><font color="#a5z42a2a">留空表示不修改</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>联系人:</h4></td>
                            <td><input type="text" name="huijilianxiren" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a"></font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>邮箱地址:</h4></td>
                            <td><input type="text" name="huijiyouxiang" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a"></font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>手机号码:</h4></td>
                            <td><input type="text" id="pai" name="huijishouji" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>联系电话:</h4></td>
                            <td><input type="text"  name="huijidianhua" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>QQ号码:</h4></td>
                            <td><input type="text"  name="huijiqq" class="form-control" size="5px"></td>
                            <td></td>
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
                            <td align="center"><h4>公司地址:</h4></td>
                            <td><input type="text"  name="huijimendiandz" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>公司名称:</h4></td>
                            <td><input type="text"  name="" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>公司图片:</h4></td>
                            <td width="220px">
                                <input type="hidden" name="huijitouxiang" id="photo1">
                                <input id="file-pic2" name="file" type="file" multiple data-min-file-count="1">
                            </td>
                            <%--<td width="220px" colspan="2" align="center"><font color="red">最佳尺寸：295*370</font></td>--%>
                            <td width="220px"></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>地图坐标:</h4></td>
                            <td><input type="text"  name="huijiqq" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>


                        <tr>
                            <td align="center"><h4>公司简介:</h4></td>
                            <td><input type="text"  name="huijidpgjc" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>



                        <tr>
                            <td align="center"><h4>店铺关键词</h4></td>
                            <td><input type="text"  name="huijiqq" class="form-control" size="5px"></td>
                            <td></td>
                        </tr> <tr>
                        <td align="center"><h4>店铺描述:</h4></td>
                        <td><textarea name="" rows="3" cols="40" ></textarea></td>
                        <td></td>
                    </tr>


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
                            <td align="center"><h4>推广排序:</h4></td>
                            <td>
                                <div class="col-sm-4">
                                    <input type="text" name="huiguantuipai" class="form-control">
                                </div>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>点击率:</h4></td>
                            <td>
                                <div class="col-sm-4">
                                    <input type="text" name="huiguandian" class="form-control">
                                </div>
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
                                    <input type="text" name="huijinid" class="form-control" size="5px" disabled="disabled">
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



<script src="<%=request.getContextPath() %>/assets/js/jquery.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<%--<script src="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>--%>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- js placed at the end of the document so the pages load faster -->
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.backstretch.min.js"></script>

<script type="text/javascript">

    //回显
        $(function() {
            var hxid = <%=request.getParameter("huijinid")%>;
            $.ajax({
                url: "<%=request.getContextPath()%>/zh/updateJChuicha",
                type: "post",
                data: {"id": hxid},
                dataType: "json",
                async: false,
                success: function (date) {

                    $("[name='huijiid']").val(date.huijiid);
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
                    $("[name='huijinkymoney']").val(date.huijinkymoney);
    }
    });

    })




    function jinJC(){

            location.href="<%=request.getContextPath()%>/zh/keyongyue.jsp";
    }

</script>

</body>
</html>