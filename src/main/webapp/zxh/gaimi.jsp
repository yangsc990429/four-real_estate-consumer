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
<div>
    <div style="width: 370px;height: 200px;float: left"></div>
    <div style="width: 500px;float: left">
        <table>
            <tr>
                <td colspan="2" align="center">
                    <span id="msg2"></span>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" width="150px"><h3>旧密码:</h3></td>
                <td>
                    <div class="input-group">
                        <span class="input-group-addon">🔑</span>
                        <input type="password" name="yuan" class="form-control" placeholder="Twitterhandle">
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center" width="150px"><h3>新密码:</h3></td>
                <td>
                    <div class="input-group">
                        <span class="input-group-addon">🔒</span>
                        <input type="password" id="userpass" name="userpass" class="form-control" placeholder="Twitterhandle">
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center" width="150px"><h3>重复密码:</h3></td>
                <td>
                    <div class="input-group">
                        <span class="input-group-addon">🔏</span>
                        <input type="password" id="chong" class="form-control" placeholder="Twitterhandle">
                    </div>
                    <span id="msg"></span>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="button" class="btn btn-success" onclick="bao()">保存修改</button>
                </td>
            </tr>
        </table>
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

    function bao(){
        var chong = $("#chong").val();
        var pass = $("#userpass").val();
        if (chong != pass){
            $("#msg").html("<font color='red'>两次密码不同哦</font>");
        }else{
            $("#msg").html("");
            $.ajax({
                url:"<%=request.getContextPath()%>/zxh/updatePass",
                type:"post",
                data:{"yuan":$("[name='yuan']").val(),"userpass":pass},
                dataType:"text",
                success:function (data){
                    if(data == "error"){
                        $("#msg2").html("<font color='red'>修改错误，旧密码错误</font>");
                    }else{
                        alert("修改成功！！！");
                        /*if(confirm("修改成功!!!是否重新登陆？")){
                            location.href="<%=request.getContextPath()%>/login.jsp";
                        }*/
                    }
                }
            })
        }
    }

</script>

</body>
</html>
