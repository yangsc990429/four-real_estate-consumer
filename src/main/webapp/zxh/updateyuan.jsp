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

<input type="hidden" name="huijiid"/>
<form id="chebox">
    <table>
        <tr>
            <td width="150px" align="right"><font size="4"><strong>发布出售:</strong></font>&nbsp;</td>
            <td width="880px" colspan="4">
                <div style="width:100%;height:300px" id="tu"></div>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="150px" align="right"><font size="4"><strong>选择会员:</strong></font>&nbsp;</td>
            <td width="220px"><input type="text" name="hui" class="form-control"></td>
            <td width="220px">
                <select name="renming" class="form-control" onchange="bian()"></select>
            </td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td align="center" colspan="5">
                <button type="button" class="btn btn-success" onclick="insertBus()">下一步</button>
            </td>
        </tr>
    </table>
</form>

<form id="updatechuzu">
    <input type="hidden" name="id"/>
    <input type="hidden" name="release"/>
    <input type="hidden" name="wuid"/>
    <input type="hidden" name="chuzugzd"/>
    <table id="asd">
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>出售类型:</strong>&nbsp;</font></td>
            <td width="240px"><span id="min"></span>&nbsp;[<a href="#" onclick="asd()">修改类型</a>]</td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>标题:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <input type="text" name="name" class="form-control">
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>自定义编号:</strong>&nbsp;</font></td>
            <td width="240px" align="left">
                <div class="col-sm-10">
                    <input type="text" name="bian" class="form-control">
                </div>
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>面积:</strong>&nbsp;</font></td>
            <td width="240px" align="left">
                <div class="col-sm-10">
                    <input type="text" name="acreage" class="form-control">
                </div>&nbsp;平米
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>售价:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <div class="col-lg-5">
                    <input type="text" name="fangprice" class="form-control">
                </div>
                &nbsp;万<font size="2px" color="#999966">&nbsp;&nbsp;(小提示:不填表示面议)</font>
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>所在小区:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <input type="text" name="residential" class="form-control">
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
    </table>
    <table id="sdf">
        <tr><td width="160px" colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>户号:</strong>&nbsp;</font></td>
            <td width="240px">
                <div class="col-sm-8">
                    <input type="text" class="form-control" name="building"><span
                        class="input-group-addon">号楼</span>
                </div>
                <%--  <td></td>--%>
            <td>
                <div class="col-sm-8">
                    <input type="text" class="form-control" name="element">
                    <span
                            class="input-group-addon">单元</span>
                </div>
            </td>
            <td>
                <div class="col-sm-8">
                    <input type="text" class="form-control" name="chamber"><span
                        class="input-group-addon">室</span>
                </div>
            </td>
            </td>
            <td width="240px"></td>
        </tr>
    </table>
    <table id="dfg">
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr align="left">
            <td width="160px" align="right"><font size="4"><strong>楼层:</strong>&nbsp;</font></td>
            <td colspan="3">
                <span class="fd" style="margin-left:0;margin-right:10px;">第</span><input name="whichlayer"  class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">层，共</span><input name="countlayer" class="inp" style="width:26px;" type="text" /><span class="fd">&nbsp;层</span>
                <font size="2px" color="#999966">&nbsp;&nbsp;(小提示:如不清楚总共几层，可以不用填写楼层总数)</font>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right">
                <font size="4"><strong>所在区域:</strong>&nbsp;</font>
            </td>
            <td width="240px" colspan="2">
                <div class="col-sm-5" style="float: left;">
                    <select  name="areaid" class="form-control" id="gai">
                    </select>
                </div>
                <div class="col-sm-5">
                    <span id="mn">
                        <select name="districtid" class="form-control"></select>
                    </span>
                </div>
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td width="160px">&nbsp;</td><td width="240px"></td><td width="240px"></td><td width="240px"></td><td width="240px"></td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>具体位置:</strong>&nbsp;</font></td>
            <td width="240px" colspan="3">
                <input type="text" name="position" class="form-control">
            </td>
            <td width="240px"></td>
        </tr>
    </table>
    <br>
    <hr>
    <br>
    <table id="fgh">
        <tr>
            <td width="160px" align="right"><font size="4"><strong>效果图:</strong></font>&nbsp;</td>
            <td width="240px">
                <input type="hidden" name="photo" id="photo1" class="form-control">
                <input id="file-pic2" name="file" type="file" multiple data-min-file-count="1">
            </td>
            <td width="240px" colspan="2" align="center"><font color="red">最佳尺寸：295*370</font></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>公交线路:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4" id="bus"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>地铁线路:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4" id="medro"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>选择学校:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4" id="schoo"></td>
        </tr>
        <tr>
            <td width="160px" align="right">&nbsp;</td>
            <td width="240px" colspan="4" id="school"></td>
        </tr>
    </table>
    <table id="ghj">
        <tr><td colspan="3">&nbsp;</td><td width="240px"></td><td width="240px"></td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>行业类型:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <div class="col-sm-5">
                    <select name="tradetypeid" class="form-control" id="geng"></select>
                </div>
                <div class="col-sm-5">
                    <span id="de">
                        <select name="tradeid" class="form-control"></select>
                    </span>
                </div>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>商铺类型:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <div class="col-sm-5">
                    <select name="storeid" class="form-control"></select>
                </div>
                <div class="col-sm-5">
                    <select name="facingid" class="form-control"></select>
                </div>
            </td>
        </tr>
    </table>
    <table id="jkl">
        <input type="hidden" name="familystructure"/>
        <tr><td colspan="2" width="240px">&nbsp;</td><td width="240px"></td><td width="240px"></td><td width="240px"></td></tr>
        <tr>
        <tr align="left">
            <td width="160px" align="right"><font size="4"><strong>户型结构:</strong></font>&nbsp;</td>
            <td colspan="3">
                <input name="tlc2" id="c1" class="inp" style="width:26px;" type="text" />
                <span class="fd"  style="margin-right:10px;">室</span>
                <input name="tlc2" id="c2" class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">厅</span>
                <input name="tlc2" id="c3" class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">卫</span>
                <input name="tlc2" id="c4" class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">厨</span>
                <input name="tlc2" id="c5" class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">阳台</span>

                <font size="2px" color="#999966">&nbsp;&nbsp;(小提示:如不清楚总共几层，可以不用填写楼层总数)</font>
            </td>
            <td width="240px">&nbsp;</td>
        </tr>
    </table>
    <table id="zxc">
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>物业费:</strong></font>&nbsp;</td>
            <td width="240px" colspan="3">
                <input type="text" name="propertyfee" class="form-control">
                <font size="2px" color="#999966">&nbsp;&nbsp;(小提示:如不清楚或没有物业费，可以留空)</font>
            </td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>房屋装修情况:</strong></font>&nbsp;</td>
            <td width="240px" colspan="3">
                <div class="col-sm-3">
                    <select name="decorateid" class="form-control"></select>&nbsp;&nbsp;
                </div>
                <div class="col-sm-3">
                    <select name="orientationid" class="form-control"></select>&nbsp;&nbsp;
                </div>
                <div class="col-sm-3">
                    <select name="time" class="form-control"></select>
                </div>
            </td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>产权:</strong></font>&nbsp;</td>
            <td width="240px">
                <input type="text" name="equity" class="form-control">
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
    </table>
    <table id="xcv">
        <tr>
            <td width="160px" align="right"><font size="4"><strong>物业特色:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4" id="te"></td>
        </tr>
        <tr><td colspan="2">&nbsp;</td><td width="240px"></td><td width="240px"></td><td width="240px"></td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>配套设施:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4" id="shi"></td>
        </tr>
    </table>
    <table id="cvb">
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>街景代码:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <textarea name="viewcode" rows="10" cols="65"></textarea>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>视频地址:</strong></font>&nbsp;</td>
            <td width="240px" colspan="3">
                <input type="text" name="videoaddress" class="form-control">
                <font size="2px" color="#999966">&nbsp;&nbsp;支持腾讯视频和优酷视频，复制播放地址即可</font>
            </td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>VR视频链接:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="vrlink" class="form-control">
                <font size="2px" color="#999966">&nbsp;&nbsp;支持腾讯视频和优酷视频，复制播放地址即可</font>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>详细描述:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <textarea name="introduction" rows="10" cols="65"></textarea>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>上架/下架:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                &nbsp;<label><input type="radio" name="putaway" value="1">上架</label>&nbsp;&nbsp;
                <label><input type="radio" name="putaway" value="2">下架</label>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>橱窗推荐:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                &nbsp;<label><input type="radio" name="recommended" value="1">推荐</label>&nbsp;&nbsp;
                <label><input type="radio" name="recommended" value="2">普通</label>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>联系人:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="linkman">
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>联系号码:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="contactnumber" class="form-control">
            </td>
        </tr>
    </table>
    <table id="vbn">
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>房东姓名:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="landlordname" class="form-control">
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>房东号码:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="landlordnumber" class="form-control">
            </td>
        </tr>
    </table>
    <br>
    <hr>
    <br>
    <table id="bnm">
        <input type="hidden" name="release">
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>发布会员:</strong></font>&nbsp;</td>
            <td width="240px">
                <input type="text" name="ming" disabled class="form-control">
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>推荐排序:</strong></font>&nbsp;</td>
            <td width="240px" colspan="3">
                <input name="serialnumber" class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">
                    <font size="2px" color="#999966">&nbsp;&nbsp;0表示不推荐，反之按从小到大推荐</font>
                </span>
                <%--<input type="text" name="" class="form-control">&nbsp;0表示不推荐，反之按从小到大推荐--%>
            </td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>置顶序号:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input name="sticknumber" class="fd" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">到期时间</span>
                <input name="expirationtime" class="fd" style="width:200px;" type="text" />
                <span class="fd" style="margin-right:10px;">
                    <font size="2px" color="#999966">&nbsp;&nbsp;可留空,正确的格式如 2014-12-12 12:12:12</font>
                </span>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>审核状态:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                &nbsp;<input type="radio" name="auditstatus" value="1">正常展示&nbsp;&nbsp;
                <input type="radio" name="auditstatus" value="2">正在审核&nbsp;&nbsp;
                <input type="radio" name="auditstatus" value="3">审核不通过
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="center" colspan="5">
                <button type="button" class="btn btn-success" onclick="updateFangChu()">保存修改</button>
                <button type="button" class="btn btn-success" onclick="fanlie()">返回列表</button>
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
            <div class="modal-body" align="center" style="height:80px"><font size="5px">修改成功</font></div>
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
    $("#chebox").hide();
    $(function (){
        insertBus()
    })

    function insertBus(){
        $("#chebox").hide();
        $("#updatechuzu").show();
        if($("[name='lei']:checked").val()!=null){
            $("[name='wuid']").val($("[name='lei']:checked").val());
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/selectTypeLeid",
                type:"post",
                data:{"id":$("[name='lei']:checked").val()},
                dataType:"json",
                success:function (wu){
                    $("#min").html("<strong>"+wu.zhanname+"</strong>")
                }
            })
        }
        wuye()
        //配套设施
        sheshi()
        if($("[name='wuid']").val() == 1){
            $("#asd").show();$("#sdf").show();$("#dfg").show();$("#fgh").show();$("#ghj").hide();
            $("#jkl").show();$("#zxc").show();$("#xcv").hide();$("#cvb").show();$("#vbn").hide();
        }else if($("[name='wuid']").val() == 2){
            $("#asd").show();$("#sdf").show();$("#dfg").show();$("#fgh").show();$("#ghj").hide();
            $("#jkl").show();$("#zxc").show();$("#xcv").hide();$("#cvb").show();$("#vbn").show();
        }else if($("[name='wuid']").val() == 5){
            $("#asd").show();$("#sdf").hide();$("#dfg").show();$("#fgh").show();$("#ghj").show();
            $("#jkl").hide();$("#zxc").show();$("#xcv").show();$("#cvb").show();$("#vbn").hide();
        }
    }

    function asd(){
        $("#chebox").show();
        $("#updatechuzu").hide();
        $("[name='lei']").each(function(){
            if($(this).val() == $("[name='wuid']").val()){
                $(this).prop( "checked", true );
            }
        });
    }
</script>
<script type="text/javascript">
    $(function (){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/queryApart",
            type:"post",
            dataType:"json",
            async:false,
            success:function (apart){
                var option = "";
                $(apart).each(function (){
                    option+="<div style='width:15%;height:45%;float:left;margin-left: 6px;margin-top: 6px'>" +
                        "       <label><div style='width:100%;height:76%'>" +
                        "           <img src='"+this.photoimg+"' width='100%' height='100%'/>" +
                        "       </div>" +
                        "       <div align='center'><input type='radio' name='lei' value='"+this.id+"'/>"+this.zhanname+"</div></label>" +
                        "    </div>";
                })
                $("#tu").html(option);
            }
        })

        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/queryHuijiDate",
            type:"post",
            async:false,
            dataType:"json",
            success:function (date){
                var option = "<option value='-1'>最近使用</option>";
                $(date).each(function (){
                    option+="<option value="+this.huijiid+">"+this.huijizhanghao+"</option>";
                })
                $("[name='renming']").html(option);
            }
        })
        //公交
        $.ajax({
            url:"<%=request.getContextPath()%>/zh/queryBus",
            type:"post",
            async:false,
            dataType:"json",
            success:function (bus){
                var check = "";
                $(bus).each(function (){
                    check+="&nbsp;&nbsp;&nbsp;<label><input type='checkbox' name='busrouteid' class='che' value='"+this.id+"'>"+this.name+"</label>";
                })
                $("#bus").html(check);
            }
        })
        //地铁
        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/queryMetro",
            type:"post",
            async:false,
            dataType:"json",
            success:function (medro){
                var ch = "";
                $(medro).each(function (){
                    ch+="&nbsp;&nbsp;&nbsp;<label><input type='checkbox' name='metrolineid' value='"+this.id+"'>"+this.name+"</label>";
                })
                $("#medro").html(ch);
            }
        })
        //学校性质
        var schoo;
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectSchoolPid",
            type:"post",
            async:false,
            dataType:"json",
            success:function (sc){
                schoo=sc;
                var rad = "";
                $(sc).each(function (){
                    rad+="&nbsp;&nbsp;&nbsp;<label><input type='radio' name='schootypeid' value='"+this.id+"'>"+this.name+"</label>";
                })
                $("#schoo").html(rad);
            }
        })

        $("[name='schootypeid']").click(function (){

            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/selectSchoolTypeCount",
                type:"post",
                data:{"pid":$("[name='schootypeid']:checked").val()},
                dataType:"json",
                success:function (school){
                    var che = "";
                    $(school).each(function (){
                        che+="&nbsp;&nbsp;&nbsp;<label><input type='checkbox' name='schooid' value='"+this.id+"'/>"+this.name+"</label>";
                    })
                    $("#school").html(che);
                }
            })
        })

        $("#geng").change(function (){
            var id = $("[name='tradetypeid']").val()
            if ($("[name='tradetypeid']").val()!=-1){
                $("#de").show();
                $.ajax({
                    url:"<%=request.getContextPath()%>/zxh/queryReadPidsid?id="+id,
                    type:"post",
                    dataType:"json",
                    async:false,
                    success:function (da){
                        var option = "";
                        $(da).each(function(){
                            var b = this.name;
                            var d =" - ";
                            option+="<option  value='"+this.id+"'>"+d+b+"</option>";
                        })
                        $("[name='tradeid']").html(option);
                    }
                })
            }else {
                $("#de").hide();
            }
        })

        if ($("[name='areaid']").val()==-1){
            $("#mn").hide();
        }

        if($("[name='tradetypeid']").val()==-1){
            $("#de").hide();
        }

        $("#gai").change(function (){
            var ids = $("[name='areaid']").val();
            if ($("[name='areaid']").val()!=-1){
                $("#mn").show();
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
                        $("[name='districtid']").html(option);
                    }
                })
            }else {
                $("#mn").hide();
            }
        })
    })

    function fanlie(){
        location.href="<%=request.getContextPath()%>/zxh/yuanlist.jsp";
    }
</script>
<script type="text/javascript">
    var id = <%=request.getParameter("id")%>
    var aa = "";
    var bb = "";
    var cc = "";
    var dd = "";
    var ee = "";
    var ff = "";
    $.ajax({
        url:"<%=request.getContextPath()%>/zxh/selectChuFangYuanId",
        type:"post",
        async:false,
        data:{"id":id},
        dataType:"json",
        success:function (data){
            var areaid = data.areaid;
            var districtid = data.districtid;
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
                        if(areaid == this.id){
                            option+="<option  value='"+this.id+"' selected>"+c+d+b+"</option>";
                        }else {
                            option+="<option  value='"+this.id+"' >"+c+d+b+"</option>";
                        }
                    })
                    $("[name='areaid']").html(option);
                }
            })
            //二级回显
            var ids = $("[name='areaid']").val();
            if ($("[name='areaid']").val()!=-1){
                $("#mn").show();
                $.ajax({
                    url:"<%=request.getContextPath()%>/lfq/querydreadifangid",
                    type:"post",
                    data:{"id":ids},
                    dataType:"json",
                    async:false,
                    success:function (da){
                        var option = "";
                        $(da).each(function(){
                            var b = this.name;
                            var c = this.shouzimu;
                            var d =" - ";
                            if(this.id == districtid){
                                option+="<option  value='"+this.id+"' selected>"+c+d+b+"</option>";
                            }else {
                                option+="<option  value='"+this.id+"' >"+c+d+b+"</option>";
                            }
                        })
                        $("[name='districtid']").html(option);
                    }
                })
            }else {
                $("#mn").hide();
            }
            $("[name='id']").val(data.id);
            $("[name='wuid']").val(data.wuid);
            $("[name='name']").val(data.name);
            $("[name='bian']").val(data.bian);
            $("[name='acreage']").val(data.acreage);
            $("[name='fangprice']").val(data.fangprice);
            $("[name='residential']").val(data.residential);
            $("[name='whichlayer']").val(data.whichlayer);
            $("[name='countlayer']").val(data.countlayer);
            $("[name='position']").val(data.position);
            $("[name='photo']").val(data.photo);
            $("#imgId").attr("src",data.photo);
            $("[name='busrouteid']").val(data.busrouteid);
            aa = data.busrouteid;
            $("[name='metrolineid']").val(data.metrolineid);
            bb = data.metrolineid;
            $("[name='schootypeid']").val(data.schootypeid);
            cc = data.schootypeid;
            $("[name='schooid']").val(data.schooid);
            dd = data.schooid;
            var tradetypeid = data.tradetypeid;
            var tradeid = data.tradeid;
            //选择行业
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/selectRetaPid",
                type:"post",
                async:false,
                dataType:"json",
                success:function (reta){
                    var option = "<option value='-1'>选择行业</option>";
                    $(reta).each(function (){
                        if(this.id == tradetypeid){
                            option+="<option value='"+this.id+"' selected>"+this.name+"</option>";
                        }else{
                            option+="<option value='"+this.id+"'>"+this.name+"</option>";
                        }
                    })
                    $("[name='tradetypeid']").html(option);
                }
            })
            var id = $("[name='tradetypeid']").val()
            if ($("[name='tradetypeid']").val()!=-1){
                $("#de").show();
                $.ajax({
                    url:"<%=request.getContextPath()%>/zxh/queryReadPidsid?id="+id,
                    type:"post",
                    dataType:"json",
                    async:false,
                    success:function (da){
                        var option = "";
                        $(da).each(function(){
                            var b = this.name;
                            var d =" - ";
                            if(this.id == tradeid){
                                option+="<option  value='"+this.id+"' selected>"+d+b+"</option>";
                            }else{
                                option+="<option  value='"+this.id+"'>"+d+b+"</option>";
                            }
                        })
                        $("[name='tradeid']").html(option);
                    }
                })
            }else {
                $("#de").hide();
            }
            var storeid = data.storeid;
            var facingid = data.facingid;
            //选择类型
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/selectShangType",
                type:"post",
                async:false,
                dataType:"json",
                success:function (reta){
                    var option = "<option value='-1'>选择类型</option>";
                    $(reta).each(function (){
                        if(this.id == storeid){
                            option+="<option value='"+this.id+"' selected>"+this.name+"</option>";
                        }else{
                            option+="<option value='"+this.id+"'>"+this.name+"</option>";
                        }
                    })
                    $("[name='storeid']").html(option);
                }
            })
            //选择铺面类型
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/selectPaveTypeAll",
                type:"post",
                async:false,
                dataType:"json",
                success:function (pave){
                    var option = "<option value='-1'>选择铺面类型</option>";
                    $(pave).each(function (){
                        if(this.id == facingid){
                            option+="<option value='"+this.id+"' selected>"+this.name+"</option>";
                        }else{
                            option+="<option value='"+this.id+"'>"+this.name+"</option>";
                        }
                    })
                    $("[name='facingid']").html(option);
                }
            })
            $("[name='propertyfee']").val(data.propertyfee);
            var decorateid = data.decorateid;
            var orientationid = data.orientationid;
            var timedai = data.time;
            //装修情况
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/selectSituaAll",
                type:"post",
                async:false,
                dataType:"json",
                success:function (situ){
                    var option = "<option value='-1'>选择装修情况</option>";
                    $(situ).each(function (){
                        if(this.id == decorateid){
                            option+="<option value='"+this.id+"' selected>"+this.name+"</option>";
                        }else{
                            option+="<option value='"+this.id+"'>"+this.name+"</option>";
                        }
                    })
                    $("[name='decorateid']").html(option);
                }
            })
            //房屋朝向
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/selectOrienAll",
                type:"post",
                async:false,
                dataType:"json",
                success:function (date){
                    var ori = "<option value='-1'>选择朝向</option>";
                    $(date).each(function (){
                        if(this.id == orientationid){
                            ori+="<option value='"+this.id+"' selected>"+this.name+"</option>";
                        }else{
                            ori+="<option value='"+this.id+"'>"+this.name+"</option>";
                        }
                    })
                    $("[name='orientationid']").html(ori);
                }
            })
            //查询建筑年代
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/selectTimeAll",
                type:"post",
                async:false,
                dataType:"json",
                success:function (time){
                    var option = "<option value='-1'>请选择年代</option>";
                    $(time).each(function (){
                        if(this.id == timedai){
                            option+="<option value='"+this.id+"' selected>"+this.name+"</option>";
                        }else{
                            option+="<option value='"+this.id+"'>"+this.name+"</option>";
                        }
                    })
                    $("[name='time']").html(option);
                }
            })
            $("[name='equity']").val(data.equity);
            $("[name='featuresid']").val(data.featuresid);
            ee = data.featuresid;
            $("[name='facilityid']").val(data.facilityid);
            ff = data.facilityid;
            $("[name='viewcode']").val(data.viewcode);
            $("[name='videoaddress']").val(data.videoaddress);
            $("[name='vrlink']").val(data.vrlink);
            $("[name='introduction']").val(data.introduction);
            $("[name='putaway']").val([data.putaway]);
            $("[name='recommended']").val([data.recommended]);
            $("[name='linkman']").val(data.linkman);
            $("[name='contactnumber']").val(data.contactnumber);
            $("[name='release']").val(data.release);
            bian();
            $("[name='chuzugzd']").val(data.chuzugzd);
            $("[name='serialnumber']").val(data.serialnumber);
            $("[name='sticknumber']").val(data.sticknumber);
            $("[name='expirationtime']").val(data.expirationtime);
            $("[name='auditstatus']").val([data.auditstatus]);
            $("[name='building']").val(data.building);
            $("[name='element']").val(data.element);
            $("[name='chamber']").val(data.chamber);
            $("[name='familystructure']").val(data.familystructure);
            jiegou()
            $("[name='landlordname']").val(data.landlordname);
            $("[name='landlordnumber']").val(data.landlordnumber);
            $("[name='chuzugzd']").val(data.chuzugzd);
            $("[name='chuzutgzt']").val(data.chuzutgzt);
            huichekcbox()
        }
    })




    function huichekcbox(){

        var cc =  $("[name='busrouteid']").val();
        var tt =  $("#bus").children().html();
        alert(cc+"===22")
        alert(tt+"===33")
        // var check =document.getElementsByName("busrouteid");
        for(var i = 0; i <check.length; i++){
            alert(check[i].value+"--222")
        }

        /*alert($("[name='metrolineid']").html());
        alert($("[name='schooid']").html());
        alert($("[name='featuresid']").html());
        alert($("[name='facilityid']").html());*/
    }

    function jiegou(){
        var fam = $("[name='familystructure']").val();
        var split = fam.split(",");
        $("#c1").val(split[0])
        $("#c2").val(split[1])
        $("#c3").val(split[2])
        $("#c4").val(split[3])
        $("#c5").val(split[4])
    }

    function bian(){
        if($("[name='release']").val() == null){
            $("[name='release']").val($("[name='renming']").val());
        }
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectRenMingId",
            type:"post",
            data:{"id":$("[name='release']").val()},
            dataType:"json",
            success:function (huiji){
                $("[name='hui']").val(huiji.huijizhanghao);
                $("[name='ming']").val(huiji.huijizhanghao);
            }
        })
    }

    function wuye(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectFeatureAll",
            type:"post",
            data:{"sel":$("[name='wuid']").val()},
            dataType:"json",
            success:function (feat){
                var box = "";
                $(feat).each(function (){
                    box+="&nbsp;&nbsp;&nbsp;<label><input type='checkbox' name='featuresid' value='"+this.id+"'/>"+this.name+"</label>";
                })
                $("#te").html(box);
            }
        })
    }

    function sheshi(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectMatingAll",
            type:"post",
            data:{"sel":$("[name='wuid']").val()},
            dataType:"json",
            success:function (mating){
                var mat = "";
                $(mating).each(function (){
                    mat+="&nbsp;&nbsp;&nbsp;<label><input type='checkbox' name='facilityid' value='"+this.id+"'/>"+this.name+"</label>";
                })
                $("#shi").html(mat);
            }
        })
    }
</script>
<script type="text/javascript">
    $.ajax({
        url:"<%=request.getContextPath()%>/zxh/selectTypeLeid",
        type:"post",
        data:{"id":$("[name='wuid']").val()},
        dataType:"json",
        success:function (wu){
            $("#min").html("<strong>"+wu.zhanname+"</strong>")
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
    $("[name='expirationtime']").val(currentdate);
</script>
<script type="text/javascript">
    $("[name='expirationtime']").datetimepicker({
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
    function shu(){
        location.href="<%=request.getContextPath()%>/zxh/yuanlist.jsp";
    }
    function updateFangChu(){
        var asd = "";
        $("[name='tlc2']").each(function (){
            asd += ","+$(this).val()
        })
        $("[name='familystructure']").val(asd.substring(1));
        alert($("[name='familystructure']").val())
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/updateFangChuShouId",
            type:"post",
            data:$("#updatechuzu").serialize(),
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
</script>
</body>
</html>
