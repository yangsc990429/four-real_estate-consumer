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

<form id="addchuzu">
    <input type="hidden" name="release"/>
    <input type="hidden" name="wuid"/>
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
            <td width="240px" colspan="1">
                <div class="col-sm-9">
                    <select name="areaid" class="form-control" onchange="gai()"></select>
                </div>
                <span id="mn">
                    <div class="col-sm-9">
                    <select name="districtid" class="form-control" onchange="gai()"></select>
                </div>
                </span>
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
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
            <td width="240px" colspan="4">
                <input type="checkbox" name="busrouteid">
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>地铁线路:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="checkbox" name="metrolineid">
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>选择学校:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="checkbox" name="schootypeid">
            </td>
        </tr>
    </table>
    <table id="ghj">
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>行业类型:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <select name="tradeid" class="form-control">
                    <option value="">选择行业</option>
                </select>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>商铺类型:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <select name="storeid" class="form-control">
                    <option value="">选择类型</option>
                </select>&nbsp;&nbsp;&nbsp;
                <select name="facingid" class="form-control">
                    <option value="">选择铺面类型</option>
                </select>
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
                <input name="tlc1"  class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">室</span>
                <input name="tlc2" class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">厅</span>
                <input name="tlc2" class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">卫</span>
                <input name="tlc2" class="inp" style="width:26px;" type="text" />
                <span class="fd" style="margin-right:10px;">厨</span>
                <input name="tlc2" class="inp" style="width:26px;" type="text" />
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
                    <select name="decorateid" class="form-control">
                        <option value="">选择装修情况
                    </select>&nbsp;&nbsp;
                </div>
                <div class="col-sm-3">
                    <select name="orientationid" class="form-control">
                        <option value="">选择朝向
                    </select>&nbsp;&nbsp;
                </div>
                <div class="col-sm-3">
                    <select name="time" class="form-control">
                        <option value="">选择建筑年代
                    </select>
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
            <td width="240px" colspan="4">
                <lable><input type="checkbox" name="featuresid">全选</lable>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>配套设施:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="checkbox" name="facilityid">全选
            </td>
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
                &nbsp;<label><input type="radio" name="putaway" value="1">上架&nbsp;&nbsp;
                <input type="radio" name="putaway" value="2">下架</label>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>橱窗推荐:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                &nbsp;<label><input type="radio" name="recommended" value="1">推荐&nbsp;&nbsp;
                <input type="radio" name="recommended" value="2">普通</label>
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
                <input name="expirationtime" class="fd" style="width:110px;" type="text" />
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
                <button type="button" class="btn btn-success" onclick="insertFangChu()">保存添加</button>
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
            <div class="modal-body" align="center" style="height:80px"><font size="5px">新增成功</font></div>
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
</script>
<script type="text/javascript">
    $("#addchuzu").hide();
    function insertBus(){
        $("#chebox").hide();
        $("#addchuzu").show();
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
        $("#addchuzu").hide();
    }
</script>
<script type="text/javascript">
    $(function (){
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/queryApart",
            type:"post",
            async:false,
            dataType:"json",
            success:function (apart){
                var option = "";
                $(apart).each(function (){
                    option+="<div style='width:15%;height:45%;float:left;margin-left: 6px;margin-top: 6px'>" +
                        "       <label><div style='width:100%;height:76%'>" +
                        "           <img src='"+this.photoimg+"' width='100%' height='100%'/>" +
                        "       </div>" +
                        "       <div align='center'><input type='radio' name='lei' id='wuid' value='"+this.id+"'/>"+this.zhanname+"</div></label>" +
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

        $.ajax({
            url:"<%=request.getContextPath()%>/lfq/querydrea",
            type:"post",
            async:false,
            dataType:"json",
            success:function (area){
                var option = "<option value='-1'>不限制</option>";
                $(area).each(function (){
                    var b = this.name;
                    var c = this.shouzimu;
                    var d =" - ";
                    option+="<option  value='"+this.id+"' >"+c+d+b+"</option>";
                })
                $("[name='areaid']").html(option);
            }
        })

        if ($("[name='areaid']").val()==-1){
            $("#mn").hide();
        }

        function gai(){
            function asd(){
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
            }
        }
    })

    function bian(){
        $("[name='release']").val($("[name='renming']").val());
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectRenMingId",
            type:"post",
            data:{"id":$("[name='renming']").val()},
            dataType:"json",
            success:function (huiji){
                $("[name='hui']").val(huiji.huijizhanghao);
                $("[name='ming']").val(huiji.huijizhanghao);
            }
        })
        $("[name='wuid']").val($("#wuid").val());
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/selectTypeLeid",
            type:"post",
            data:{"id":$("#wuid").val()},
            dataType:"json",
            success:function (wu){
                $("#min").html("<strong>"+wu.zhanname+"</strong>")
            }
        })
    }
</script>
<script type="text/javascript">

    function insertFangChu(){
        console.info($("#addchuzu").serialize())
        $.ajax({
            url:"<%=request.getContextPath()%>/zxh/insertFangChuShou",
            type:"post",
            data:$("#addchuzu").serialize(),
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
        location.reload();
    }
</script>
</body>
</html>
