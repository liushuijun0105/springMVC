<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html style="height: 100%">
<head>
    <meta charset="utf-8">
</head>
<body style="height: 100%; margin: 0">
   <div id="bar-container" style="height: 60%;width: 98%"></div>
   <div id="line-container" style="height: 60%;width: 98%"></div>
   <div id="pie-container" style="height: 60%;width: 95%"></div>

   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/echarts/echarts.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/echarts/echarts-gl.js"></script>
   <%--<script type="text/javascript" src="<%=request.getContextPath() %>/resources/echarts/macarons.js"></script>--%>
   <script type="text/javascript" src="<%=request.getContextPath() %>/resources/echarts/shine.js"></script>
   <script type="text/javascript">
       $(function(){
            bar();
            line();
            pie();
       });
       //饼状图
       function pie() {
           var dom = document.getElementById("pie-container");
           var myChart = echarts.init(dom,"shine");
           var app = {};
           var option = null;
           option = {
               title : {
                   text: '某站点用户访问来源',
                   subtext: '纯属虚构',
                   x:'center'
               },
               tooltip : {
                   trigger: 'item',
                   formatter: "{a} <br/>{b} : {c} ({d}%)"
               },
               legend: {
                   orient: 'vertical',
                   left: 'left',
                   data: ['直接访问','邮件营销','联盟广告','视频广告','搜索引擎']
               },
               series : [
                   {
                       name: '访问来源',
                       type: 'pie',
                       radius : '55%',
                       center: ['50%', '60%'],
                       data:[
                           {value:335, name:'直接访问'},
                           {value:310, name:'邮件营销'},
                           {value:234, name:'联盟广告'},
                           {value:135, name:'视频广告'},
                           {value:1548, name:'搜索引擎'}
                       ],
                       itemStyle: {
                           emphasis: {
                               shadowBlur: 10,
                               shadowOffsetX: 0,
                               shadowColor: 'rgba(0, 0, 0, 0.5)'
                           }
                       }
                   }
               ]
           };
           ;
           if (option && typeof option === "object") {
               myChart.setOption(option, true);
           }
           
       }
       //折线图
       function line() {
           var dom = document.getElementById("line-container");
           var myChart = echarts.init(dom,"shine");
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
                       data:[120, 132, 101, 134, 90, 230, 210]
                   },
                   {
                       name:'联盟广告',
                       type:'line',
                       data:[220, 182, 191, 234, 290, 730, 310]
                   },
                   {
                       name:'视频广告',
                       type:'line',
                       data:[150, 232, 401, 554, 690, 530, 410]
                   },
                   {
                       name:'直接访问',
                       type:'line',
                       data:[320, 532, 701, 994, 1390, 830, 820]
                   },
                   {
                       name:'搜索引擎',
                       type:'line',
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
           var myChart = echarts.init(dom,"shine");
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
