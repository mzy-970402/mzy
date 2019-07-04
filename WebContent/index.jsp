<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set value="${pageContext.request.contextPath}" scope="page" var="ctx"></c:set>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ECharts</title>
<!-- 引入 echarts.js -->
<script src="js/echarts.js"></script>
<!-- <script type="text/javascript" src="../../../assets/echarts.js"></script> -->
</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="border:1px solid red;width:900px;height:600px;
margin-left:18%;"></div>
<script type="text/javascript">
 
//先加载后台数据 对获取的数据进行分组 且写入对应位置的数组中
var mycars=new Array('日', '一', '二', '三', '四', '五', '六');//string型数组
var mycarstow=new Array(10, 940, 908, 940, 1300, 1350, 1450);//int型数组
 
 
// 基于准备好的dom，初始化echarts实例
var myChart = echarts.init(document.getElementById('main'));

 
//病状统计图
optiontow = {
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
 
 
// 使用刚指定 optiontow 的配置项和数据显示图表。 optiontow是上面定义的样式 ，这个样式网站在下面
myChart.setOption(optiontow);
</script>
</body>
</html>