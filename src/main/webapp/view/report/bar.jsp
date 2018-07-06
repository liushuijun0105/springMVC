<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="height: 100%">
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/echarts/echarts.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/echarts/echarts-gl.js"></script>
<script type="text/javascript">
    $(function(){
        var dom = document.getElementById("container");
        var myChart = echarts.init(dom);
        var app = {};
        option = null;
        option = {
            xAxis: {
                type: 'category',
                data: ['一月', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                data: [120, 200, 150, 80, 70, 110, 130],
                type: 'bar'
            }]
        };
        ;
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    });
</script>
<head>
    <meta charset="utf-8">
</head>
<body style="height: 100%; margin: 0">
   <div id="container" style="height: 100%"></div>
</body>
</html>
