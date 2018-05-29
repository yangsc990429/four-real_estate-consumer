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

                <%-- <button type="button" class="btn btn-warning" onclick="daochu()">导出数据</button>
                 <button type="button" class="btn btn-primary" onclick="addkhgllxxrgl()">新增</button>--%>
            </h3>
        </div>
        <div class="panel-body">
            <div id="trtreeas">
                <form id="updatechu">
                    <input type="hidden" name="huijiid">
                    <input type="hidden" name="huiquanxian">
                    <input type="hidden" name="huijinid">
                    <input type="hidden" name="huijizhanghao">
                    <table>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>会员账号:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" name="huijizhanghao" class="form-control" disabled>
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>会员密码:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" name="huijipass" class="form-control">
                            </td>
                            <td width="240px">&nbsp;&nbsp;</td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>联系人:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" name="huijilianxiren" class="form-control">
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>邮箱地址:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" name="huijiyouxiang" class="form-control">
                            </td>
                            <td width="240px">&nbsp;&nbsp;<input type="checkbox" name="huijishifoubyx" value="1">绑定邮箱</td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>手机号码:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" name="huijishouji" class="form-control">
                            </td>
                            <td width="240px">&nbsp;&nbsp;<input type="checkbox" name="huijishifoubsj" value="1">绑定手机</td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>联系电话:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" name="huijidianhua" class="form-control">
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>QQ号码:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" name="huijiqq" class="form-control">
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>所在区域:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <select name="huijiquyu" class="form-control" class="form-control" onchange="asd()">
                                </select>
                            </td>
                            <td width="240px">
                                <span id="hedden">
                                    <select name="huijiquyudf" class="form-control"></select>
                                </span>
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>公司地址:</strong>&nbsp;</font></td>
                            <td width="240px" colspan="2">
                                <input type="text" name="huizhi" class="form-control">
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>公司名称:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" name="huisicheng" class="form-control">
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>公司形象图:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="hidden" name="huijitouxiang" id="photo1">
                                <input id="file-pic2" name="file" type="file" multiple data-min-file-count="1">
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>公司简介:</strong>&nbsp;</font></td>
                            <td width="240px" colspan="4">
                                <textarea name="huisidis" rows="10" cols="80" class="form-control"></textarea>
                            </td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>店铺关键字:</strong>&nbsp;</font></td>
                            <td width="240px" colspan="2">
                                <input type="text" name="dpguanjianc" class="form-control">
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>店铺描述:</strong>&nbsp;</font></td>
                            <td width="240px" colspan="4">
                                <textarea name="dpmiaoshu" rows="10" class="form-control" cols="60"></textarea>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <hr>
                    <br>
                    <table>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>权限:</strong>&nbsp;</font></td>
                            <td width="240px" colspan="4" id="quan"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>推广排序:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" class="form-control" name="huiguantuipai">
                            </td>
                            <td width="240px" colspan="2">&nbsp;&nbsp;0表示普通，反之按从小到大排序</td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>点击率:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" class="form-control" name="huiguandian">
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>剩余刷新量:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" class="form-control" name="huisysxl">
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>会员等级:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <select name="huidengid" class="form-control"></select>
                            </td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>到期时间:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" class="form-control" name="huidjdqdate">
                            </td>
                            <td width="240px" colspan="2">&nbsp;&nbsp;正确格式：2018-05-29 09:25:13</td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>可用余额:</strong>&nbsp;</font></td>
                            <td width="240px">
                                <input type="text" class="form-control" name="huijinkymoney" disabled>
                            </td>
                            <td width="240px">&nbsp;&nbsp;[<a href="">改变金额</a>]</td>
                            <td width="240px"></td>
                            <td width="240px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="center" colspan="5">
                                <button type="button" class="btn btn-success" onclick="insertZhu()">保存修改</button>
                                <button type="button" class="btn btn-default" onclick="fan()">返回列表</button>
                            </td>
                        </tr>
                    </table>
                </form>
                <form id="updateren">
                    <input type="hidden" name="huirenshenid">
                    <input type="hidden" name="huijiid">
                    <table>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>认证状态:</strong></font>&nbsp;</td>
                            <td width="220px">
                                <input type="hidden" name="huirenshenstruts"/>
                                <div>
                                    <input type="text" style="border:0" id="bkb" readonly>
                                </div>
                            </td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>会员账号:</strong></font>&nbsp;</td>
                            <td width="220px"><input type="text" name="huijizhanghao" class="form-control" disabled></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>身份证审核:</strong></font>&nbsp;</td>
                            <td width="220px" colspan="3">
                                <input type="radio" name="huirenshensfz" value="1">等待审核&nbsp;
                                <input type="radio" name="huirenshensfz" value="2">通过认证&nbsp;
                                <input type="radio" name="huirenshensfz" id="huirenshensfz" value="3">认证不通过&nbsp;
                                <input type="radio" name="huirenshensfz" value="4">未提交认证&nbsp;
                            </td>
                            <td width="220px"></td>
                        </tr>
                    </table>
                    <table id="bjyy">
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>被拒原因:</strong></font>&nbsp;</td>
                            <td width="220px" colspan="2"><input type="text" name="huibeiju" class="form-control"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                    </table>
                    <table>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>真实姓名:</strong></font>&nbsp;</td>
                            <td width="220px"><input type="text" name="huirenshenname" class="form-control"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>身份证号:</strong></font>&nbsp;</td>
                            <td width="220px"><input type="text" name="huirenshensfzh" class="form-control"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>身份证正面:</strong></font>&nbsp;</td>
                            <td width="220px">
                                <input type="hidden" name="huirenshenimgzhng" id="photo2">
                                <input id="file-pic3" name="file" type="file" multiple data-min-file-count="1">
                            </td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>身份证反面:</strong></font>&nbsp;</td>
                            <td width="220px">
                                <input type="hidden" name="huirenshenimgfan" id="photo3">
                                <input id="file-pic4" name="file" type="file" multiple data-min-file-count="1">
                            </td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="center" colspan="5">
                                <button type="button" class="btn btn-success" onclick="insertUpRen()">保存修改</button>
                                <button type="button" class="btn btn-default" onclick="fan()">返回列表</button>
                            </td>
                        </tr>
                    </table>
                </form>
                <form id="updateyin">
                    <input type="hidden" name="huirenshenid">
                    <table>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="180px" align="right"><font size="4"><strong>营业执照认证:</strong></font>&nbsp;</td>
                            <td width="220px">
                                <input type="hidden" name="huirenying" class="form-control">
                                <input type="text" style="border:0" id="asd" readonly/>
                            </td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font size="4"><strong>营业执照审核:</strong></font>&nbsp;</td>
                            <td width="220px" colspan="3">
                                <input type="radio" name="huirenshen" value="1">等待审核&nbsp;
                                <input type="radio" name="huirenshen" value="2">通过认证&nbsp;
                                <input type="radio" name="huirenshen" id="huirenshen" value="3">认证不通过&nbsp;
                                <input type="radio" name="huirenshen" value="4">未提交认证&nbsp;
                            </td>
                            <td width="220px"></td>
                        </tr>
                    </table>
                    <table id="yingye">
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>被拒原因:</strong></font>&nbsp;</td>
                            <td width="220px" colspan="2"><input type="text" name="huirenjjyy" class="form-control"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                    </table>
                    <table>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>公司名称:</strong></font>&nbsp;</td>
                            <td width="220px"><input type="text" name="huirenming" class="form-control"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong>营业执照号码:</strong></font>&nbsp;</td>
                            <td width="220px"><input type="text" name="huirennumber" class="form-control"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                            <td width="220px"></td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="right"><font color="red">*</font><font size="4"><strong> 营业执照:</strong></font>&nbsp;</td>
                            <td width="220px">
                                <input type="hidden" name="huirenphoto" id="photo4">
                                <input id="file-pic5" name="file" type="file" multiple data-min-file-count="1">
                            </td>
                        </tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr><td colspan="5">&nbsp;</td></tr>
                        <tr>
                            <td width="150px" align="center" colspan="5">
                                <button type="button" class="btn btn-success" onclick="insertUpRenQian()">保存修改</button>
                                <button type="button" class="btn btn-default" onclick="fan()">返回列表</button>
                            </td>
                        </tr>
                    </table>
                </form>
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
                                <button type="button" class="btn btn-success" onclick="insertUpJine()">保存修改</button>
                                <button type="button" class="btn btn-default" onclick="fan()">返回列表</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="mymodalchu" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" style="width:352px;height:100px">
        <div class="modal-content">
            <div class="modal-header" style="width:350px;height: 50px">
                <h4 class="modal-title" id="myModaaa">最新消息</h4>
            </div>
            <div class="modal-body" align="center" style="height:80px"><font size="5px">保存成功,返回列表</font></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal" onclick="shu()">确定</button>
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
    var aaa;
    $(function (){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectQuan",
            type:"post",
            async:false,
            dataType:"json",
            success:function (date){
                aaa=date;
                var option = "<label><input type='checkbox' id='q4' onclick='xuan()'>全选&nbsp;&nbsp;&nbsp;</label>";
                $(date).each(function (){
                    option+="<label><input type='checkbox' name='huiguanid' value="+this.huiquanid+">"+this.huiquanname+"&nbsp;&nbsp;&nbsp;</label>";
                })
                $("#quan").html(option);
            }
        })
    })
</script>
<script type="text/javascript">
    var id = <%=request.getParameter("id")%>
    var flag = <%=request.getParameter("flag")%>
    if(flag == 1 && flag != null){
        $("#updatechu").show();
        $("#updateren").hide();
        $("#updateyin").hide();
        $("#updatejin").hide();
    }else{
        $("#updatechu").hide();
        $("#updateren").show();
        $("#updateyin").show();
        $("#updatejin").hide();
    }

    $(function (){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectXiuId",
            type:"post",
            async:false,
            data:{"id":id},
            dataType:"json",
            success:function (date){
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
                        url:"<%=request.getContextPath()%>/lfq/querydreadifangid",
                        type:"post",
                        data:{"id":ids},
                        dataType:"json",
                        async:false,
                        success:function (da){
                            console.info(da)
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
                        var option = "<option value='-1'>不限制</option>";
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
                $("[name='huijipass']").val(date.huijipass);
                $("[name='huijizhanghao']").val(date.huijizhanghao);
                $("[name='huijilianxiren']").val(date.huijilianxiren);
                $("[name='huijiyouxiang']").val(date.huijiyouxiang);
                $("[name='huijishifoubyx']").val(date.huijishifoubyx)
                if(date.huijishifoubyx == "1"){
                    $("[name='huijishifoubyx']").attr("checked",true);
                }
                $("[name='huijishouji']").val(date.huijishouji);
                $("[name='huijishifoubsj']").val(date.huijishifoubsj)
                if(date.huijishifoubsj == "1"){
                    $("[name='huijishifoubsj']").attr("checked",true);
                }
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

        if ($("[name='huijiquyu']").val()==-1){
            $("#hedden").hide();
        }

        var xian = $("[name='huiquanxian']").val();
        var a = $("[name='huiguanid']");
        var arr = xian.split(",");
        for (var i=0;i<arr.length;i++){
            $(a).each(function (){
                if(arr[i]  == $(this).val()){
                    $(this).attr("checked",true)
                }
            })
        }

        $(function (){
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/selectQueRen",
                type:"post",
                async:false,
                data:{"id":id},
                dataType:"json",
                success:function (date){
                    $("[name='huirenshenid']").val(date.huirenshenid);
                    $("[name='huirenshensfz']").val([date.huirenshensfz]);
                    $("#bkb").val(date.huirenshensfz);
                    if(date.huirenshensfz != "3"){
                        $("#bjyy").hide()
                    }
                    if (date.huirenshensfz==1){
                        $("#bkb").val("等待审核");
                    }else if (date.huirenshensfz==2){
                        $("#bkb").val("通过审核");
                    }else if(date.huirenshensfz==3){
                        $("#bjyy").show();
                        $("#bkb").val("认证不通过");
                    }else {
                        $("#bkb").val("未提交认证");
                    }
                    $("[name='huirenshenname']").val(date.huirenshenname);
                    $("[name='huirenshensfzh']").val(date.huirenshensfzh);
                    $("[name='huirenshenimgzhng']").val(date.huirenshenimgzhng);
                    $("#imgId2").attr("src",date.huirenshenimgzhng);
                    $("[name='huirenshenimgfan']").val(date.huirenshenimgfan);
                    $("#imgId3").attr("src",date.huirenshenimgfan);
                    $("[name='huibeiju']").val(date.huibeiju)
                    //营业执照
                    $("[name='huirenshen']").val([date.huirenshen])
                    $("#asd").val(date.huirenshen);
                    if(date.huirenshen != "3"){
                        $("#yingye").hide()
                    }
                    if (date.huirenshen==1){
                        $("#asd").val("等待审核");
                    }else if (date.huirenshen==2){
                        $("#asd").val("通过审核");
                    }else if(date.huirenshen==3){
                        $("#yingye").show();
                        $("#asd").val("认证不通过");
                    }else {
                        $("#asd").val("未提交认证");
                    }
                    $("[name='huirenming']").val(date.huirenming);
                    $("[name='huirennumber']").val(date.huirennumber);
                    $("[name='huirenphoto']").val(date.huirenphoto);
                    $("#imgId4").attr("src",date.huirenphoto);
                    $("[name='huirenjjyy']").val(date.huirenjjyy);
                }
            })
        });

        $("[name='huirenshensfz']").click(function () {
            $("#bjyy").hide();
        })
        $("#huirenshensfz").click(function(){
            $("#bjyy").show();
        })

        $("[name='huirenshen']").click(function () {
            $("#yingye").hide();
        })
        $("#huirenshen").click(function(){
            $("#yingye").show();
        })

    })

    function fan(){
        location.href="<%=request.getContextPath()%>/zxh/zhuanglist.jsp";
    }

</script>
<script type="text/javascript">
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

    function xuan(){
        var q4 =document.getElementById("q4");
        var check =document.getElementsByName("huiguanid");
        for(var i=0;i<check.length;i++){
            check[i].checked=q4.checked;
        }
    }

    function insertZhu(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/updateZhuYuanId",
            type:"post",
            data:$("#updatechu").serialize(),
            dataType:"text",
            success:function (data){
                if(data == "success"){
                    $("#mymodalchu").modal({
                        keyboard:false,
                        backdrop:false,
                    })
                }
            }
        })
    }

    function insertUpRen(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/updateRenZhenId",
            type:"post",
            data:$("#updateren").serialize(),
            dataType:"text",
            success:function (date){
                if(date == "success"){
                    $("#mymodalchu").modal({
                        keyboard:false,
                        backdrop:false,
                    })
                }
            }
        })
    }

    function insertUpRenQian(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/updateRenQuanId",
            type:"post",
            data:$("#updateyin").serialize(),
            dataType:"text",
            success:function (date){
                if(date == "success"){
                    $("#mymodalchu").modal({
                        keyboard:false,
                        backdrop:false,
                    })
                }
            }
        })
    }

    function insertUpJine(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/updateJineId",
            type:"post",
            data:$("#updatejin").serialize(),
            dataType:"text",
            success:function (date){
                if(date == "success"){
                    $("#mymodalchu").modal({
                        keyboard:false,
                        backdrop:false,
                    })
                }
            }
        })
    }

    function shu(){
        location.href="<%=request.getContextPath()%>/zxh/zhuanglist.jsp";
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
<script type="text/javascript">
    $('#file-pic4').fileinput({//初始化上传文件框
        showUpload : true,	//是否显示上传按钮
        showRemove : true,	//是否显示移除按钮
        uploadAsync: true,
        uploadLabel: "上传",		//设置上传按钮的汉字
        uploadClass: "btn btn-primary",//设置上传按钮样式
        showCaption: true,		//是否显示标题
        language: "zh",			//配置语言
        uploadUrl: "<%=request.getContextPath()%>/lfq/insertPicture",
        initialPreview: [
            "<img class='kv-preview-data file-preview-image' id='imgId3' width='150px' height='250px'>",
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
    $('#file-pic4').on('fileerror', function(event, data) {
        alert("失败");
    });
    //上传文件成功，回调函数
    $('#file-pic4').on("fileuploaded", function(event, data, previewId, index) {
        var result = data.response; //后台返回的json
        //alert(result);
        $('#photo3').val(result.a);
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
        uploadUrl: "<%=request.getContextPath()%>/lfq/insertPicture",
        initialPreview: [
            "<img class='kv-preview-data file-preview-image' id='imgId2' width='150px' height='250px'>",
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
<script type="text/javascript">
    $('#file-pic5').fileinput({//初始化上传文件框
        showUpload : true,	//是否显示上传按钮
        showRemove : true,	//是否显示移除按钮
        uploadAsync: true,
        uploadLabel: "上传",		//设置上传按钮的汉字
        uploadClass: "btn btn-primary",//设置上传按钮样式
        showCaption: true,		//是否显示标题
        language: "zh",			//配置语言
        uploadUrl: "<%=request.getContextPath()%>/lfq/insertPicture",
        initialPreview: [
            "<img class='kv-preview-data file-preview-image' id='imgId4' width='150px' height='250px'>",
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
    $('#file-pic5').on('fileerror', function(event, data) {
        alert("失败");
    });
    //上传文件成功，回调函数
    $('#file-pic5').on("fileuploaded", function(event, data, previewId, index) {
        var result = data.response; //后台返回的json
        //alert(result);
        $('#photo4').val(result.a);
    })
</script>
<script type="text/javascript">
    function jibenziliao(){
        $("#updatechu").show();
        $("#updateren").hide();
        $("#updateyin").hide();
        $("#updatejin").hide();
    }

    function renzhengshenhejsp(){
        $("#updatechu").hide();
        $("#updateren").show();
        $("#updateyin").show();
        $("#updatejin").hide();
    }

    function jinqianguanlijsp(){
        $("#updatechu").hide();
        $("#updateren").hide();
        $("#updateyin").hide();
        $("#updatejin").show();
    }
</script>
</body>
</html>
