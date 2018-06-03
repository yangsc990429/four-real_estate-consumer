<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/5/31
  Time: 10:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="<%=request.getContextPath()%>/css/css/style-responsive.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-treeview/dist/bootstrap-treeview.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootStrap-addTabs/bootstrap.addtabs.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-table/dist/bootstrap-table.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-dialog/dist/css/bootstrap-dialog.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/js/bootstrap-fileinput/css/fileinput.css" rel="stylesheet">
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
</head>
<body>
<from>
    <table>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>管理员账号&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="text" name="username" class="form-control" onblur="fanduanuser(this)"></td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>新密码密码&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="password" name="userpass" class="form-control"></td>
            <td width="220px"><font size="4">为空则不修改&nbsp;</font></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>重复新密码&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="password" name="pass" onblur="yanzheng()" class="form-control"></td>
            <td width="220px"><span id="chongfu" ></span></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>姓名&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"><input type="text" name="name" class="form-control"></td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>
    </table>
    <table >
        <tr>
            <td width="130px" align="right"><font size="4"><strong>权限&nbsp;:</strong></font>&nbsp;</td>
            <td width="220px"  id="zong"></td>
            <td width="220px"></td>
            <td width="220px"></td>
            <td width="220px"></td>
        </tr>
        <tr><td colspan="5">&nbsp;</td></tr>

    </table>
    <table id="qx">

    </table>
    <table>
        <tr><td width="90px">&nbsp;</td></tr>
        <tr>
            <td width="130px" align="right"><font size="4"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></font>&nbsp;</td>
            <td width="90px"  ><button type="button" class="btn btn-success" onclick="addquanx()">保存编辑</button></td>
            <td width="90px"><button type="button" class="btn btn-success" onclick="fanhui()">返回列表</button></td>
            <td width="90px"></td>
            <td width="90px"></td>
        </tr>
    </table>
</from>
<input  type="hidden" id="userid"/>
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
    function yanzheng() {

        if ($("[name='pass']").val() != null &&$("[name='userpass']").val() != null) {
            if ($("[name='pass']").val() == $("[name='userpass']").val()) {
                $("#chongfu").html("");
            } else {
                $("#chongfu").html("<font  color='red'>两次密码输入不一致</font>");
            }
        } else {
            $("#chongfu").html("<font  color='red'>两次密码输入不能为空</font>");
        }
    }

    $.ajax({
        url:'<%=request.getContextPath()%>/yangsc/quanxianList',
        data:'post',
        dataType:"json",
        async:false,
        success:function (data) {
            var check="";
            var quan="";
            var a=0;
            $(data).each(function (i) {
                if(this.qid==0){
                    $("#zong").html("<label><input name='qid' type='checkbox' value="+this.qid+"/>"+this.mkname+"</label>");
                }else{

                    quan +="<td width='90px'><label><input name='qid' type='checkbox' value="+this.qid+"/>"+this.mkname+"</label></td>";
                    if ((i%3)==0){
                        quan="<tr><td width='130px' align='right'><font size='4\'><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></font>&nbsp;</td>"+quan+"</tr>";
                        check+=quan;
                        quan="";
                    }
                }
            })

            $("#qx").html(check)
        },
        error:function () {

        }
    })
    function addquanx() {
        var check =document.getElementsByName("qid");
        var s= '';
        for(var i=0; i<check.length; i++){
            if(check[i].checked)
                s+=','+check[i].value.split("/")[0];
        }
        $.ajax({
            url:'<%=request.getContextPath()%>/yangsc/updateQx',
            data:{userid:$("#userid").val(),pid:s.substring(1),username:$("[name='username']").val(),userpass:$("[name='userpass']").val(),name:$("[name='name']").val()},
            dataType:'text',
            success:function (data) {
                location.href="<%=request.getContextPath()%>/yangsc/glList.jsp";
            }
        })
    }
    function fanduanuser(obj) {
        if ($(obj).val()!=null&&$(obj).val()!=''){
            $.ajax({
                url:'<%=request.getContextPath()%>/yangsc/queryUser',
                data:{username:$(obj).val()},
                dataType:'text',
                success:function (data) {
                    if (data=='0'){
                    }else{
                        alert("该管理员账号已存在")
                    }
                }
            })
        }else{
            alert("账号不能为空")
        }
    }
    var  userid=<%=request.getParameter("userid")%>
    $.ajax({
        url:"<%=request.getContextPath()%>/yangsc/queryqxHx",
        data:{userid:userid},
        dataType:"json",
        async:false,
        success:function (data) {
            $("[name='username']").val(data.username)
            $("[name='name']").val(data.userid)
            $("#userid").val(data.userid)
            var check =document.getElementsByName("qid");

            $(data.list).each(function () {
                for(var i=0;i<check.length; i++){
              if (check[i].value.split("/")[0]==this.qid){
                  check[i].checked = true;
              }
                }
            })
            $("[name='pid']").each(function () {
                console.info(this)
            })

        },
        error:function () {

        }
    })
    function fanhui() {
        location.href="<%=request.getContextPath()%>/yangsc/glList.jsp";
    }
</script>
</body>
</html>
