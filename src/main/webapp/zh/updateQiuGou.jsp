<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<form id="updateQuiZu">
    <input type="hidden" name="qiugouid"/>
    <input type="hidden" name="wuyeid"  value="${list[0].wuyeid}"/>
    <input type="hidden" name="quyuid"  value="${list[0].quyuid}"/>
    <table id="asd">
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>出售类型:</strong>&nbsp;</font></td>
            <td width="240px">${list[0].yuanname}
                <input type="hidden" name="id" value="${list[0].wuyeid}">
                </span>&nbsp;[<a href="#" onclick="asd()">修改类型</a>]</td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>标题:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <input type="text" class="form-control"  name="biaoti" value="${list[0].biaoti}"   >
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>

        <tr>
            <td width="160px" align="right"><font size="4"><strong>面积费用:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <div class="col-lg-3">
                    <input type="text" name="mianjiyaoqius"  value="${list[0].mianjiyaoqius}" class="form-control">万
                    至<input type="text" name="mianjiyaoqiue"  value="${list[0].mianjiyaoqiue}" class="form-control">万
                </div>

            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4"><strong>售价:</strong>&nbsp;</font></td>
            <td width="240px" colspan="2">
                <div class="col-lg-3">
                    <input type="text" name="feiyongyusuans"  value="${list[0].feiyongyusuans}" class="form-control">万
                    至<input type="text" name="feiyongyusuane"  value="${list[0].feiyongyusuane}" class="form-control">万
                </div>

            </td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right">
                <font size="4"><strong>所在区域:</strong>&nbsp;</font>
            </td>
            <td width="240px" colspan="1">
                <div class="col-sm-9">
                    <select name="quyupid" value="list[0].quyupid" class="form-control"></select>
                </div>
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
    </table>


    <table id="cvb">

        <tr>
            <td width="160px" align="right"><font size="4"><strong>详细描述:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <textarea name="miaoshu" rows="10" value="${list[0].miaoshu}" cols="65"></textarea>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font size="4" ><strong>上架/下架:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                &nbsp;<label><input type="radio" name="shangxiajia" value="1" <c:if test="${list[0].shangxiajia=='1'}">checked</c:if>>上架&nbsp;&nbsp;
                <input type="radio" name="shangxiajia" value="2" <c:if test="${list[0].shangxiajia=='0'}">checked</c:if> >下架</label>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>橱窗推荐:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                &nbsp;<label><input type="radio" name="tuijian" value="1"  <c:if test="${list[0].tuijian=='1'}">checked</c:if>>推荐&nbsp;&nbsp;
                <input type="radio" name="tuijian" value="2" <c:if test="${list[0].tuijian=='0'}">checked</c:if>  >普通</label>

            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>联系人:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="lianxiren"  value="${list[0].lianxiren}"  class="form-control">
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>联系号码:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input type="text" name="lianxihaoma" value="${list[0].lianxihaoma}" class="form-control">
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
                <input type="text" name="qiugoufbhy"   value="${list[0].qiugoufbhy}" disabled class="form-control">
            </td>
            <td width="240px"></td>
            <td width="240px"></td>
            <td width="240px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>

        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>置顶序号:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">
                <input name="qiugouzdxh" class="fd" style="width:26px;"  value="${list[0].qiugouzdxh}" type="text" />
                <span class="fd" style="margin-right:10px;">到期时间</span>
                <input name="qiugoudate" class="fd" style="width:110px;" value="${list[0].qiugoudate}" type="text" />
                <span class="fd" style="margin-right:10px;">

                    <font size="2px" color="#999966">&nbsp;&nbsp;可留空,正确的格式如 2014-12-12 12:12:12</font>
                </span>
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="right"><font color="red">*</font><font size="4"><strong>审核状态:</strong></font>&nbsp;</td>
            <td width="240px" colspan="4">

                <input type="radio" name="fyshid"  value="1" onclick="aas()" <c:if test="${list[0].fyshid=='1'}">checked</c:if>>正常展示
                <input type="radio"  name="fyshid" value="0" <c:if test="${list[0].fyshid=='2'}">checked</c:if>  >正在审核
                <input type="radio" name="fyshid"  value="1" onclick="aas()" <c:if test="${list[0].fyshid=='3'}">checked</c:if>>审核不通过
            </td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="160px" align="center" colspan="5">
                <button type="button" class="btn btn-success" onclick="updateQiuz()">保存添加</button>
            </td>
        </tr>
    </table>
</form>



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
<script>
    var id = <%=request.getParameter("qiugouid")%>

        $(function (){

            $.ajax({
                url:"<%=request.getContextPath()%>/lfq/querydrea",
                type:"post",
                dataType:"json",
                success:function (citi){
                    var option = "";
                    $(citi).each(function (){
                        option += "<option value='"+this.id+"'>"+this.name+"</option>";
                    })
                    $("[name='quyupid']").html(option);
                },
                error:function (){
                    alert(0);
                }
            })


        })

    function updateQiuz(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zh/updateQiuZu?id="+id,
            type:"post",

            data:$("#updateQuiZu").serialize(),
            dataType:"text",
            success:function (success) {

                location.href="<%=request.getContextPath()%>/zh/qiugoulist.jsp";
            },error:function () {
                alert("失败")
            }

        })

    }







</script>



</body>
</html>
