<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="height: 100%">
<head>
    <meta charset="utf-8">
</head>
<body style="height: 100%; margin: 0">
   <div id="bar-container" style="height: 60%;width: 98%"></div>
   <div id="line-container" style="height: 60%;width: 98%"></div>

   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/echarts/echarts.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/echarts/echarts-gl.js"></script>
   <script type="text/javascript">
       $(function(){
            bar();
            line();
       });
       //折线图
       function line() {
           var dom = document.getElementById("line-container");
           var myChart = echarts.init(dom);
           var app = {};
           var option = null;
           option = {
               title: {
                   text: '折线图堆叠'
               },
               tooltip: {
                   trigger: 'axis'
               },
               legend: {
                   data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
               },
               grid: {
                   left: '3%',
                   right: '4%',
                   bottom: '3%',
                   containLabel: true
               },
               toolbox: {
                   feature: {
                       saveAsImage: {}
                   }
               },
               xAxis: {
                   type: 'category',
                   boundaryGap: false,
                   data: ['周一','周二','周三','周四','周五','周六','周日']
               },
               yAxis: {
                   type: 'value'
               },
               series: [
                   {
                       name:'邮件营销',
                       type:'line',
                       stack: '总量',
                       data:[120, 132, 101, 134, 90, 230, 210]
                   },
                   {
                       name:'联盟广告',
                       type:'line',
                       stack: '总量',
                       data:[220, 182, 191, 234, 290, 330, 310]
                   },
                   {
                       name:'视频广告',
                       type:'line',
                       stack: '总量',
                       data:[150, 232, 201, 154, 190, 330, 410]
                   },
                   {
                       name:'直接访问',
                       type:'line',
                       stack: '总量',
                       data:[320, 332, 301, 334, 390, 330, 320]
                   },
                   {
                       name:'搜索引擎',
                       type:'line',
                       stack: '总量',
                       data:[820, 932, 901, 934, 1290, 1330, 1320]
                   }
               ]
           };
           ;
           if (option && typeof option === "object") {
               myChart.setOption(option, true);
           }
       }
       //柱状图
       function bar() {
           var dom = document.getElementById("bar-container");
           var myChart = echarts.init(dom);
           var app = {};
           var option = null;
           option = {
               title : {
                   text: '某地区蒸发量和降水量',
                   subtext: '纯属虚构'
               },
               tooltip : {
                   trigger: 'axis'
               },
               legend: {
                   data:['蒸发量','降水量']
               },
               toolbox: {
                   show : true,
                   feature : {
                       dataView : {show: true, readOnly: false},
                       magicType : {show: true, type: ['line', 'bar']},
                       restore : {show: true},
                       saveAsImage : {show: true}
                   }
               },
               calculable : true,
               xAxis : [
                   {
                       type : 'category',
                       data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
                   }
               ],
               yAxis : [
                   {
                       type : 'value'
                   }
               ],
               series : [
                   {
                       name:'蒸发量',
                       type:'bar',
                       data:[2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3],
                       markPoint : {
                           data : [
                               {type : 'max', name: '最大值'},
                               {type : 'min', name: '最小值'}
                           ]
                       },
                       markLine : {
                           data : [
                               {type : 'average', name: '平均值'}
                           ]
                       }
                   },
                   {
                       name:'降水量',
                       type:'bar',
                       data:[2.6, 5.9, 9.0, 26.4, 28.7, 70.7, 175.6, 182.2, 48.7, 18.8, 6.0, 2.3],
                       markPoint : {
                           data : [
                               {name : '年最高', value : 182.2, xAxis: 7, yAxis: 183},
                               {name : '年最低', value : 2.3, xAxis: 11, yAxis: 3}
                           ]
                       },
                       markLine : {
                           data : [
                               {type : 'average', name : '平均值'}
                           ]
                       }
                   }
               ]
           };
           if (option && typeof option === "object") {
               myChart.setOption(option, true);
           }
       }
   </script>
</body>
</html>
