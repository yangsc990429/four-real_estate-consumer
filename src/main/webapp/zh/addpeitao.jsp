<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>

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
    <style type="text/css">
        .btn-group > .btn, .btn-group-vertical > .btn {
            position: relative;
            float: left;
            width: 50.9px;
            height: 34px;
        }
    </style>
</head>
<body>

<form class="form-horizontal"  id="addFormPeiTao">

    <font color="#660066"><h2>录入配套信息</h2></font>

    <div class="panel panel-default">

        <div class="panel-body">
            <div class="form-group has-warning">
                <label class="col-sm-2 control-label" for="inputWarning">分类名称</label>
                <div class="col-sm-10" style="width:500px">
                    <input type="text" name="name" class="form-control" id="inputWarning">
                </div>
            </div>
            <div class="form-group has-warning">
                <label class="col-sm-2 control-label" for="inputWarning">出售栏目</label>
                <div class="col-sm-10" style="width:500px">
                   <input type="checkbox" id="parent" > 全选<span id="chushou"></span>
                </div>
            </div>
            <div class="form-group has-warning">
                <label class="col-sm-2 control-label" for="inputWarning">出租栏目</label>
                <div class="col-sm-10" style="width:500px">
                    <input type="checkbox" id="parent1" >全选<span id="chuzu"></span>
                </div>
            </div>

            <div class="form-group has-warning">
                <label class="col-sm-2 control-label" for="inputWarning">序号</label>
                <div class="col-sm-10" style="width:500px">
                    <input type="text" name="xuhao" class="form-control" id="inputWarning">

                </div>
            </div>
        </div>

    </div>

    <div class="panel-footer" style="padding-left:300px">

        <button type="button" class="btn btn-success" onclick="addpeitao()">新&nbsp;&nbsp;增</button>&nbsp;&nbsp;&nbsp;
        <button type="button" class="btn btn-info" onclick="fanh()">返&nbsp;&nbsp;回</button>

    </div>
    </div>
</form>



<script src="<%=request.getContextPath() %>/assets/js/jquery.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-treeview/dist/bootstrap-treeview.min.js"></script>
<%--<script src="<%=request.getContextPath()%>/js/bootStrap-addTabs/bootstrap.addtabs.js"></script>--%>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/bootstrap-table.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap-table/dist/locale/bootstrap-table-zh-CN.js"></script>
<!-- js placed at the end of the document so the pages load faster -->
<script src="<%=request.getContextPath() %>/assets/js/bootstrap.min.js"></script>
<!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/jquery.backstretch.min.js"></script>

<script type="text/javascript">

    //===========================================新增=================================

    $(function(){

        $.ajax({
            url:"<%=request.getContextPath()%>/zh/queryxuhaoP",
            type:"post",
            dataType:"json",
            success:function(aa){

                $("[name='xuhao']").val(aa);

            }
        })
    })

    //全选反选
    $("#parent1").on("click",function(){
        var parent =$(this).prop("checked");
        $("[name='rentout']").each(function(){
            $(this).prop("checked",parent);
        });
    });
    $("#parent").on("click",function(){
        var parent1 =$(this).prop("checked");
        $("[name='sell']").each(function(){
            $(this).prop("checked",parent1);
        });
    });
    $(function(){

        $.ajax({
            url:"<%=request.getContextPath()%>/zh/queryxuhaochushou",
            type:"post",
            dataType:"json",
            success:function(list){

                var check="";
                var aid ="";
                var yn="";
                for (var i=0;i<list.length;i++){
                    aid=list[i].id;
                    yn=list[i].yuanname;
                    check+=" <button type=\"button\" ><input type='checkbox'  name='sell' value='"+aid+"'>"+yn+"</button>";
                }
                $("#chushou").html(check);


            }
        });
    })
    $(function(){

        $.ajax({
            url:"<%=request.getContextPath()%>/zh/queryxuhaochuzu",
            type:"post",
            dataType:"json",
            success:function(list){

                var check="";
                var aid ="";
                var yn="";
                for (var i=0;i<list.length;i++){
                    zid=list[i].id;
                    yny=list[i].yuanname;
                    check+=" <button type=\"button\" ><input type='checkbox'  name='rentout' value='"+zid+"'>"+yny+"</button>";
                }
                $("#chuzu").html(check);
            }
        });
    })

    function addpeitao(){
        $.ajax({
            url:"<%=request.getContextPath()%>/zh/addpeitao",
            type:"post",
            data:$("#addFormPeiTao").serialize(),
            dateType:"text",
            success:function (addsuccess){
                location.href="<%=request.getContextPath()%>/zh/yuwupeitao.jsp"
            },
            error:function(){
                alert("新增出错");
            }
        })
    }


function fanh(){
        location.href="<%=request.getContextPath()%>/zh/yuwupeitao.jsp";
}



</script>

</body>
</html>