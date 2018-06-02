<%--
  Created by IntelliJ IDEA.
  User: 随风
  Date: 2018-06-01
  Time: 上午 09:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/js/echarts.js"></script>
</head>

<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<center>
    <div id="main" style="width:900px;height:500px;"></div>
</center>
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
    //查询数据
    $(function(){
        //表的标题
        var   le;
        //表的x轴字段
        var  xax;
        //表格数据
        var   ser;
        $.ajax({
            url:"<%=request.getContextPath() %>/lfq/queryshoukuan",
            type:"post",
            dataType:"json",
            success:function(chu){
                console.info(chu)
                le=chu.leg;
                xax=chu.xax;
                ser=chu.ser;
                // 基于准备好的dom，初始化echarts实例
                var myChart = echarts.init(document.getElementById('main'));
                // 指定图表的配置项和数据
                var option = {

                    color: ['#3398DB'],
                    title: {
                        text: '二手房价走势'
                    },

                    tooltip: {
                        trigger: 'axis',
                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    legend: {
                        data:le
                    },
                    xAxis: {
                        data:xax
                    },
                    yAxis: {},
                    series: [{
                        name: '金额',
                        type: 'bar',
                        data: ser,
                        barWidth :60,//柱图宽度
                    }]
                };

                // 使用刚指定的配置项和数据显示图表。
                myChart.setOption(option);
            }
        })
    })
</script>
</body>
</html>
