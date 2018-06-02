<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/5/22
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap/bootstrap/css/bootstrap.min.css">
    <script src="<%=request.getContextPath()%>/bootstrap/jquery.min.js"></script>
    <script src="http://apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script src="<%=request.getContextPath()%>/bootstrap/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<form  id="addqvyv">
    <table>
        <tr>

            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td width="100px"height="20px">
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大区域:</span>
            </td>
            <td height="20px">
                <div class="input-group input-group-lg"style="width:300px">
                    <input type="text" id="da"  value="" class="form-control" readonly="readonly" placeholder="区域名称">
                </div>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            &nbsp;
            <td >
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td width="100px"height="20px">
                <span>小区域名称:</span>
            </td>
            <td height="20px">

                <div class="input-group input-group-lg"style="width:300px">
                    <input type="text" name="name" class="form-control" placeholder="区域名称">
                </div>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            &nbsp;
            <td >
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td  width="100px"height="20px">
                <span>拼音首字母:</span>
            </td>
            <td  height="20px">
                <div >
                    <div class="input-group input-group-lg" style="width:300px">
                        <input type="text" name="shouzimu" class="form-control" placeholder="拼音首字母">
                    </div>
                </div>
            </td>
            <td >
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            &nbsp;
            <td >
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td  width="100px"height="20px">

                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;排序:</span>
            </td>
            <td  height="20px">
                <div >
                    <div class="input-group input-group-lg" style="width:300px">
                        <input type="text" name="xuhao" class="form-control" placeholder="排序序号">
                    </div>
                </div>
            </td>
            <td >
                <span>&nbsp;&nbsp;&nbsp;序号越小，越靠前</span>
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            &nbsp;
            <td >
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td width="100px"height="20px">
                <span>&nbsp;&nbsp;&nbsp;坐标信息:</span>
            </td>
            <td  height="20px">
                <div class="input-group input-group-lg"style="width:300px;">
                    <input type="text" name="zuobiao" class="form-control" placeholder="Twitterhandle">
                </div>
            </td>
            <td >
                &nbsp;&nbsp;&nbsp;<span>[<a href="<%=request.getContextPath()%>/yangsc/ditu.html" target="_blank">点击获取</a>]</span>
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            &nbsp;
            <td >
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td width="100px"height="20px">
                <span>&nbsp;&nbsp;&nbsp;是否热门:</span>
            </td>
            <td  height="55px">
                <input type="radio" name="hotstatus" value="1"/>是&nbsp;
                <input type="radio" name="hotstatus" value="2">否
                <input type="hidden" name="pid" />


            </td>
            <td >
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
            &nbsp;
            <td >
                &nbsp;
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td width="100px"height="20px">
            </td>
            <td  height="20px">
                <button type="button" class="btn btn-success" onclick="addqvyv()">保存编辑</button>
            </td>
            <td >
            </td>
        </tr>
    </table>
<input  type="hidden" name="id">
    <input  type="hidden" name="pid">
</form>
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
    var id=0;
    id=<%=request.getParameter("id")%>;
    $("#dasda").buttonset();
    $(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/yangsc/queryqvyvzi",
            type:"post",
            data:{id:id},
            dataType:"json",
            success:function (data){
             console.info(data)
                $("#da").val(data[0])
                $("[name='pid']").val(data[1].pid)
                $("[name='id']").val(data[1].id)
                $("[name='name']").val(data[1].name)
                $("[name='xuhao']").val(data[1].xuhao)
                $("[name='shouzimu']").val(data[1].shouzimu)
                $("[name='zuobiao']").val(data[1].zuobiao)
                $("[name='hotstatus']").val([data[1].hotstatus])
            },
            error:function () {
                alert("出现错误")
            }

        })
    })

    $("#dasda").buttonset();
    function addqvyv() {
        /*alert($("#addqvyv").serialize())*/
        $.ajax({
            url:"<%=request.getContextPath()%>/yangsc/updatezi",
            type:"post",
            data:$("#addqvyv").serialize(),
            dataType:"text",
            success:function (data) {

                location.href="<%=request.getContextPath()%>/yangsc/queryqvyv.jsp";
            },
            error:function () {
                alert("出现错误")
            }

        })
    }
</script>
</body>
</html>
