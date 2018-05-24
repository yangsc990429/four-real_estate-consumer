<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-05-23
  Time: 下午 08:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
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

</head>
<body>
<%--style="width:800px;height:600px"--%>
<div class="col-md-4 column" style="width: 100%;height: 100%">
    <div class="panel panel-success">
        <div class="panel-heading">
            <h3 class="panel-title">基本资料

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <button type="button" class="btn btn-warning" onclick="daochu()">导出数据</button>
                <button type="button" class="btn btn-primary" onclick="addkhgllxxrgl()">新增</button>
            </h3>
        </div>
        <div class="panel-body">
            <div id="trtreeas">
                <form id="addhui">
                    <table>
                        <tr>
                            <td align="center"><h4>会员账号:</h4></td>
                            <td  width="280px"><input type="text" name="name" class="form-control" size="5px" disabled="disabled"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>会员密码:</h4></td>
                            <td><input type="text" name="nianprice" class="form-control" size="5px"></td>
                            <td><font color="#a5z42a2a">留空表示不修改</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>房源刷新:</h4></td>
                            <td><input type="text" name="shuacount" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a"></font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>邮箱地址:</h4></td>
                            <td><input type="text" name="facount" class="form-control" size="5px"></td>
                            <td><font color="#a52a2a"></font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>手机号码:</h4></td>
                            <td><input type="text" id="pai" name="paixu" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>联系电话:</h4></td>
                            <td><input type="text"  name="paixu" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>QQ号码:</h4></td>
                            <td><input type="text"  name="paixu" class="form-control" size="5px"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>所在区域:</h4></td>
                            <td>
                                <div class="col-sm-6">
                                    <select name="ccustomerid" class="form-control">
                                        <option value="">不限制</option>
                                    </select>
                                </div>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>个人头像:</h4></td>
                            <td><input type="file" name=""></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><img src="" width="60px" height="60px"></td>
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
                                <label><input name="check" type="checkbox" value="2"/> 管理出租</label>
                                <label><input name="check" type="checkbox" value="3"/> 管理出售</label>
                                <label><input name="check" type="checkbox" value="4"/> 管理求购</label>
                                <label><input name="check" type="checkbox" value="5"/> 管理求租</label>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>剩余刷新量:</h4></td>
                            <td>
                                <div class="col-sm-4">
                                <input type="text" name="nianprice" class="form-control">
                                </div>
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>会员等级:</h4></td>
                            <td>
                                <div class="col-sm-6">
                                <select name="ccustomerid" class="form-control">
                                <option value="">不限制</option>
                            </select>
                                </div>
                            </td>
                            <td><font color="#a52a2a"></font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>等级到期:</h4></td>
                            <td>
                                <%--<div class="col-sm-8 ">--%>
                                <input type="text" name="facount" class="form-control">
                               <%-- </div>--%>
                            </td>
                            <td><font color="#a52a2a">正确格式：0000-00-00 00:00:00</font></td>
                        </tr>
                        <tr>
                            <td align="center"><h4>可用余额:</h4></td>
                            <td>
                                <div class="col-sm-4">
                                <input type="text"  name="paixu" class="form-control" size="5px" disabled="disabled">
                                </div>
                            </td>
                            <td></td>
                        </tr>

                    </table>
                </form>
            </div>
        </div>
    </div>
</div>




<%--<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="tabbable" id="tabs-296837">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#panel-657554" data-toggle="tab">Section 1</a>
                    </li>
                    <li>
                        <a href="#panel-738553" data-toggle="tab">Section 2</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane " id="panel-657554">
                        <p>
                            I'm in Section 1.
                        </p>
                    </div>
                    <div class="tab-pane active" id="panel-738553">
                        <p>
                            Howdy, I'm in Section 2.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>--%>



<script src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- js placed at the end of the document so the pages load faster -->
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.backstretch.min.js"></script>

<!--   时间   -->
<script src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/bootstrap/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
<script type="text/javascript">


    var a = <%=request.getParameter("id")%>;

    $(function(){


        alert(a);
            $.ajax({
                url:"<%=request.getContextPath()%>/lfq/updatesyhyhuicha?id="+a,
                type:"post",
                dataType:"json",
                async:false,
                success:function (date){
                    alert(date);
                    /*$("[name='id']").val(date.id);
                    $("[name='name']").val(date.name);
                    $("[name='xuhao']").val(date.xuhao);*/
                }
            });
    })




  //全选
  function xuan(){
      var q4 =document.getElementById("q4");
      var check =document.getElementsByName("check");
      for(var i=0;i<check.length;i++){
          check[i].checked=q4.checked;
      }

  }


</script>
</body>
</html>
