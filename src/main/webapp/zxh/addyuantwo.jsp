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

<form>
    <table>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>出售类型:</strong>&nbsp;</font></td>
            <td width="240px"><span id="min"></span>[<a href="#" onclick="asd()">修改类型</a>]</td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>标题:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <input type="text" name="">
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>自定义编号:</strong>&nbsp;</font></td>
            <td width="240px">
                <input type="text" name="">&nbsp;平米
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>面积:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <input type="text" name="">&nbsp;万<font size="2px" color="#999966">&nbsp;&nbsp;(小提示:不填表示面议)</font>
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>所在小区:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <input type="text" name="">
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>楼层:</strong>&nbsp;</font></td>
            <td width="240px" colspan="3">
                第&nbsp;<input type="text" name="" size="1">&nbsp;层,共&nbsp;<input type="text" name="" size="1">&nbsp;层
                <font size="2px" color="#999966">&nbsp;&nbsp;(小提示:如不清楚总共几层，可以不用填写楼层总数)</font>
            </td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>所在区域:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <select name="">
                    <option value="">不限制</option>
                </select>&nbsp;&nbsp;
                <select name="">
                    <option value=""></option>
                </select>
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>具体位置:</strong>&nbsp;</font></td>
            <td width="240px" colspan="3">
                <input type="text" name="">
            </td>
            <td width="240px"></td>
        </tr>
    </table>
    <br>
    <hr>
    <br>
    <table>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>效果图:</strong></font>&nbsp;</td>
            <td width="240px">
                <input type="hidden" name="photo" id="photo1">
                <input id="file-pic2" name="file" type="file" multiple data-min-file-count="1">
            </td>
            <td width="240px" colspan="2" align="center"><font color="red">最佳尺寸：295*370</font></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>公交线路:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="checkbox" name="">
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>地铁线路:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="checkbox" name="">
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>选择学校:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="checkbox" name="">
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>行业类型:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <select name="">
                    <option value="">选择行业</option>
                </select>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>商铺类型:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <select name="">
                    <option value="">选择类型</option>
                </select>&nbsp;&nbsp;&nbsp;
                <select name="">
                    <option value="">选择铺面类型</option>
                </select>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>物业费:</strong></font>&nbsp;</td>
            <td width="240px" colspan="3">
                <input type="text" name="">
                <font size="2px" color="#999966">&nbsp;&nbsp;(小提示:如不清楚或没有物业费，可以留空)</font>
            </td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>房屋装修情况:</strong></font>&nbsp;</td>
            <td width="240px" colspan="3">
                <select name="">
                    <option value="">选择装修情况
                </select>&nbsp;&nbsp;
                <select name="">
                    <option value="">选择朝向
                </select>&nbsp;&nbsp;
                <select name="">
                    <option value="">选择建筑年代
                </select>
            </td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>产权:</strong></font>&nbsp;</td>
            <td width="240px">
                <input type="text" name="">
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>物业特色:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <lable><input type="checkbox" name="">全选</lable>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>配套设施:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="checkbox" name="">全选
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>街景代码:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <textarea name="" rows="10" cols="65"></textarea>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>视频地址:</strong></font>&nbsp;</td>
            <td width="240px" colspan="3">
                <input type="text" name="">
                <font size="2">支持腾讯视频和优酷视频，复制播放地址即可</font>
            </td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>VR视频链接:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="">
                <font size="2">支持腾讯视频和优酷视频，复制播放地址即可</font>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>详细描述:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <textarea name="" rows="10" cols="65"></textarea>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>上架/下架:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                &nbsp;<input type="radio" name="">上架&nbsp;&nbsp;
                <input type="radio" name="">下架
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>橱窗推荐:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                &nbsp;<input type="radio" name="">上架&nbsp;&nbsp;
                <input type="radio" name="">下架
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>联系人:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="">
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>联系号码:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="">
            </td>
        </tr>
    </table>
    <br>
    <hr>
    <br>
    <table border="1">
        <input type="hidden" name="">
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>发布会员:</strong></font>&nbsp;</td>
            <td width="240px">
                <input type="text" name="" disabled>
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>推荐排序:</strong></font>&nbsp;</td>
            <td width="240px" colspan="3">
                <input type="text" name="">&nbsp;0表示不推荐，反之按从小到大推荐
            </td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>置顶序号:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="">&nbsp;&nbsp;
                到期时间:&nbsp;<input type="text" name="">&nbsp;&nbsp;可留空,正确的格式如 2014-12-12 12:12:12
            </td>
        </tr>
    </table>
</form>

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
</body>
</html>
