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
<%--<div style="padding: 100px 100px 10px;width:800px">
    <form class="bs-example bs-example-form" role="form">
        <div class="input-group input-group-lg">

            <input type="text" class="form-control" placeholder="Twitterhandle">
        </div><br>
        <div class="input-group input-group-lg">
            <span  class="input-group-addon">排序:</span>
            <input type="text" class="form-control" placeholder="Twitterhandle">
        </div><br>
        <div>
            <div class="input-group input-group-lg">
                <span  class="input-group-addon">首字母:</span>
                <input type="text" class="form-control" placeholder="Twitterhandle">
            </div><div><span>[<a href="<%=request.getContextPath()%>/yangsc/ditu.html" target="_blank">点击获取</a>]</span></div>

        </div>

        <br>
        <div class="input-group input-group-lg">
            <span  class="input-group-addon">是否热门:</span>
            <input type="text" class="form-control" placeholder="Twitterhandle">
        </div><br>
    </form>--%>
<%--
</div>--%>

<form  id="addqvyv">
    <table>
        <tr>
            <td width="100px"height="20px">
                &nbsp;
            </td>
            <td width="100px"height="20px">
                <span>&nbsp;&nbsp;&nbsp;区域名称:</span>
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
</form>

<script type="text/javascript">
    var id=0;
    id=<%=request.getParameter("id")%>;
    $("#dasda").buttonset();
   $(function(){
       $.ajax({
           url:"<%=request.getContextPath()%>/yangsc/queryqvyv",
           type:"post",
           data:{id:id},
           dataType:"json",
           success:function (data) {
              /* console.info(data)*/
               $("[name='id']").val(data.id)
               $("[name='name']").val(data.name)
               $("[name='xuhao']").val(data.xuhao)
               $("[name='shouzimu']").val(data.shouzimu)
               $("[name='zuobiao']").val(data.zuobiao)
               $("[name='hotstatus']").val([data.hotstatus])
           },
           error:function () {
               alert("出现错误")
           }

       })
   })

    function addqvyv() {
        /*alert($("#addqvyv").serialize())*/
        $.ajax({
            url:"<%=request.getContextPath()%>/yangsc/updateqvyv",
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
