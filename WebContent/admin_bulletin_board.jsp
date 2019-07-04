<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


<link rel="stylesheet" href="layui/css/layui.css"  media="all">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="js/jquery.XYTipsWindow.min.2.8.js"></script>
<link href="css/box_style.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="css/youtiy.css" media="all">
<script src="js/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta charset="utf-8">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>基本信息</title>
    
    <style>

        *{
            list-style: none;
        }
        .bigbox{
         display:flex;
            flex-wrap:wrap;
            justify-content:space-between;
        }
         .choose{
            margin-top: 20px;
            margin-left:0px;
            display: flex;
            border-bottom: 1px solid #27806b;
            font-size: 14px;
        }
        .choose input{
            margin-left: 10px;
            border-radius: 10px;
            width: 100px;
            height: 40px;
            border: none;
            background: #bdbdbd;
            }
             .header
        {  width: 100%;
            border-left:solid 1px grey ;
            border-right:solid 1px grey ;
            border-bottom:solid 3px #27806b;
            font-size: 15px;
            font-weight: 600;
        }
        .box{
            width: 200px;
            height: 250px;
            align-items: center;
            padding: 10px 30px;
        
          
        }
        .box img{
            width: 120px;
            height: 120px;
            display: block;
            margin:0 auto;
        }
        .box ul
        {
            margin:3px;
        }
        .line{
            display: block;
            margin: 0 auto;
            border：none;
            border-radious:20px;
        }
        #myModal
        {
            margin-top:80px;
        }
        
        #myModal1
        {
            margin-top:80px;
        }
        #myModal2
        {
            margin-top:80px;
        }
         #myModal3
        {
            margin-top:80px;
        }
        #myModal4
        {
            margin-top:80px;
        }
    </style>
    
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="apple-touch-icon-precomposed" href="staffee/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="staffee/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="staffee/assets/css/admin.css">
    <link rel="stylesheet" href="staffee/assets/css/app.css">
    <script src="staffee/assets/js/echarts.min.js"></script>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="layui/css/layui.css"  media="all">
</head>

<body data-type="index">
<!-- ---------------------------------------------------------------------------------------------------- -->
      <header class="am-topbar am-topbar-inverse admin-header">
        <div class="am-topbar-brand">
            <a href="javascript:;" class="tpl-logo">
                <img src="staff/assets/img/8.jpg" alt="">
            </a>
        </div>
        
        <div class="am-icon-list tpl-header-nav-hover-ico am-fl am-margin-right">

        </div>

        <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

        <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

            <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list tpl-header-list">
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                   
                    
                </li>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                   
                </li>
                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                   
                    
                </li>
                <li class="am-hide-sm-only"></li>

                <li class="am-dropdown" data-am-dropdown data-am-dropdown-toggle>
                    <a class="am-dropdown-toggle tpl-header-list-link" href="javascript:;">
                        <span class="tpl-header-list-user-nick">欢迎你！${sessionScope.user_name}</span><span class="tpl-header-list-user-ico"></span>
                    </a>
                    <ul class="am-dropdown-content">
                        <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
                
            </ul>
        </div>
    </header>


<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->




    <div class="tpl-page-container tpl-page-header-fixed">


        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                                                     快报销-管理员系统
            </div>
                  <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu" >
                
                    <li class="tpl-left-nav-item" >
                        <a href="selectSum.action" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>公告栏</span>
                        </a>
                        
                    </li>
                    
                    <li class="tpl-left-nav-item">
                            <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>用户数据</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                         <ul class="tpl-left-nav-sub-menu">
                            <li>
                               <a href="AdminSelectClbxAndRcbx.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>报销管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            
                                <a href="AdminSelectJkAndHk.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>费用管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                
                                <a href="AdminSelectCcsq.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>出差申请</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                <a href="AdminSelectQj.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>请假管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                
                
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>基本数据</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu">
                            <li>
                               <a href="selectUser.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>员工管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            
                                <a href="selectBudgetType.action" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>预算管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                
                                <a href="selectLeaveDay.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>请假管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li>

                    
                     
                     <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>报表分析</span>
                             <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" >
                            <li>
                                <a href="AdminShowPieChart.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>图表分析</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                               
                            </li>
                        </ul>
                    </li>
                    
                    
                    <li class="tpl-left-nav-item">
                        <a href="login.jsp" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-key"></i>
                            <span>登录</span>

                        </a>
                    </li>
                    
                </ul>
            </div>
        </div>



<!-- ------------------------------------------------------------------------------------------------- -->
<div class="tpl-content-wrapper">
            <div class="tpl-content-page-title">
                          公告栏     
            </div>
          
          
           
            <div >
                <div class="note note-info">
                    
                   
                      
                            

                            <table class="am-table tpl-table">
                                <thead>
                                    <tr class="tpl-table-uppercase">
                                        <th>含义</th>
                                        <th>提醒</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">超出预算</a>
                                        </td>
                                        <td class="font-green bold"><img src="images/hong1.png" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">预算不足</a>
                                        </td>
                                        <td class="font-green bold"><img src="images/huang1.png" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">预算充足</a>
                                        </td>
                                        <td class="font-green bold"><img src="images/lv1.png" alt="" class="user-pic"></td>
                                    </tr>
                                    
                                </tbody>
                                </table>
                              
                                     
                               
                               
                               
                               
                    </p>
                </div>
            </div>

            <div class="row">
                 <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-red ">
                                <i class="am-icon-bar-chart"></i>
                                <span>费用类别预算提醒---本季度</span>
                            </div>
                             <div class="actions">
                                  
                            </div>
                        </div>
                        <div class="tpl-scrollable">
                            

                            <table class="am-table tpl-table">
                                <thead>
                                    <tr class="tpl-table-uppercase">
                                        <th>费用类别</th>
                                        <th>预算</th>
                                        <th>花费</th>
                                        <th>余额</th>
                                        <th>提醒</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="images/feiji.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">飞机</a>
                                        </td>
                                        <td>${sessionScope.fjYs}</td>
                                        <td>${sessionScope.fjSum}</td>
                                        <td>${sessionScope.fjYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.fjtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/huoche.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">火车</a>
                                        </td>
                                       <td>${sessionScope.hcYs}</td>
                                        <td>${sessionScope.hcSum}</td>
                                        <td>${sessionScope.hcYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.hctb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/shinei.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">市内交通</a>
                                        </td>
                                         <td>${sessionScope.snjtYs}</td>
                                        <td>${sessionScope.snjtSum}</td>
                                        <td>${sessionScope.snjtYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.snjttb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/qiche.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">长途汽车</a>
                                        </td>
                                         <td>${sessionScope.ctqcYs}</td>
                                        <td>${sessionScope.ctqcSum}</td>
                                        <td>${sessionScope.ctqcYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.ctqctb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/canyin.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">餐饮</a>
                                        </td>
                                          <td>${sessionScope.cyYs}</td>
                                        <td>${sessionScope.cySum}</td>
                                        <td>${sessionScope.cyYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.cytb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/zhusu.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">住宿</a>
                                        </td>
                                         <td>${sessionScope.zsYs}</td>
                                        <td>${sessionScope.zsSum}</td>
                                        <td>${sessionScope.zsYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.zstb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/bangong.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">办公</a>
                                        </td>
                                        <td>${sessionScope.bgYs}</td>
                                        <td>${sessionScope.bgSum}</td>
                                        <td>${sessionScope.bgYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.bgtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/butie.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">补贴</a>
                                        </td>
                                          <td>${sessionScope.btYs}</td>
                                        <td>${sessionScope.btSum}</td>
                                        <td>${sessionScope.btYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.bttb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/fangzu.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">房租</a>
                                        </td>
                                        <td>${sessionScope.fzYs}</td>
                                        <td>${sessionScope.fzSum}</td>
                                        <td>${sessionScope.fzYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.fztb}" alt="" class="user-pic"></td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <img src="images/jiaoji.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">交际</a>
                                        </td>
                                         <td>${sessionScope.jjYs}</td>
                                        <td>${sessionScope.jjSum}</td>
                                        <td>${sessionScope.jjYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.jjtb}" alt="" class="user-pic"></td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <img src="images/shuidian.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">水电</a>
                                        </td>
                                      <td>${sessionScope.sdYs}</td>
                                        <td>${sessionScope.sdSum}</td>
                                        <td>${sessionScope.sdYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.sdtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/tongxun.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">通讯</a>
                                        </td>
                                       <td>${sessionScope.txYs}</td>
                                        <td>${sessionScope.txSum}</td>
                                        <td>${sessionScope.txYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.txtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/zhaopin.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">招聘</a>
                                        </td>
                                         <td>${sessionScope.zpYs}</td>
                                        <td>${sessionScope.zpSum}</td>
                                        <td>${sessionScope.zpYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.zptb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/jiekuan.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">借款</a>
                                        </td>
                                       <td>${sessionScope.jkYs}</td>
                                        <td>${sessionScope.jkSum}</td>
                                        <td>${sessionScope.jkYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.jktb}" alt="" class="user-pic"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                          <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-red ">
                                <i class="am-icon-bar-chart"></i>
                                <span>费用类别预算提醒---本年度</span>
                            </div>
                             <div class="actions">
                                  
                            </div>
                        </div>
                        <div class="tpl-scrollable">
                            

                            <table class="am-table tpl-table">
                                <thead>
                                    <tr class="tpl-table-uppercase">
                                        <th>费用类别</th>
                                        <th>预算</th>
                                        <th>花费</th>
                                        <th>余额</th>
                                        <th>提醒</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="images/feiji.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">飞机</a>
                                        </td>
                                        <td>${sessionScope.fjYs1}</td>
                                        <td>${sessionScope.fjSum1}</td>
                                        <td>${sessionScope.fjYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.fjtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/huoche.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">火车</a>
                                        </td>
                                       <td>${sessionScope.hcYs1}</td>
                                        <td>${sessionScope.hcSum1}</td>
                                        <td>${sessionScope.hcYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.hctb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/shinei.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">市内交通</a>
                                        </td>
                                         <td>${sessionScope.snjtYs1}</td>
                                        <td>${sessionScope.snjtSum1}</td>
                                        <td>${sessionScope.snjtYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.snjttb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/qiche.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">长途汽车</a>
                                        </td>
                                         <td>${sessionScope.ctqcYs1}</td>
                                        <td>${sessionScope.ctqcSum1}</td>
                                        <td>${sessionScope.ctqcYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.ctqctb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/canyin.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">餐饮</a>
                                        </td>
                                          <td>${sessionScope.cyYs1}</td>
                                        <td>${sessionScope.cySum1}</td>
                                        <td>${sessionScope.cyYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.cytb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/zhusu.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">住宿</a>
                                        </td>
                                         <td>${sessionScope.zsYs1}</td>
                                        <td>${sessionScope.zsSum1}</td>
                                        <td>${sessionScope.zsYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.zstb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/bangong.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">办公</a>
                                        </td>
                                        <td>${sessionScope.bgYs1}</td>
                                        <td>${sessionScope.bgSum1}</td>
                                        <td>${sessionScope.bgYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.bgtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/butie.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">补贴</a>
                                        </td>
                                          <td>${sessionScope.btYs1}</td>
                                        <td>${sessionScope.btSum1}</td>
                                        <td>${sessionScope.btYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.bttb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/fangzu.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">房租</a>
                                        </td>
                                        <td>${sessionScope.fzYs1}</td>
                                        <td>${sessionScope.fzSum1}</td>
                                        <td>${sessionScope.fzYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.fztb1}" alt="" class="user-pic"></td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <img src="images/jiaoji.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">交际</a>
                                        </td>
                                         <td>${sessionScope.jjYs1}</td>
                                        <td>${sessionScope.jjSum1}</td>
                                        <td>${sessionScope.jjYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.jjtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                     <tr>
                                        <td>
                                            <img src="images/shuidian.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">水电</a>
                                        </td>
                                      <td>${sessionScope.sdYs1}</td>
                                        <td>${sessionScope.sdSum1}</td>
                                        <td>${sessionScope.sdYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.sdtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/tongxun.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">通讯</a>
                                        </td>
                                       <td>${sessionScope.txYs1}</td>
                                        <td>${sessionScope.txSum1}</td>
                                        <td>${sessionScope.txYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.txtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/zhaopin.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">招聘</a>
                                        </td>
                                         <td>${sessionScope.zpYs1}</td>
                                        <td>${sessionScope.zpSum1}</td>
                                        <td>${sessionScope.zpYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.zptb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="images/jiekuan.png" alt="" class="user-pic">
                                            <a class="user-name" href="###">借款</a>
                                        </td>
                                       <td>${sessionScope.jkYs1}</td>
                                        <td>${sessionScope.jkSum1}</td>
                                        <td>${sessionScope.jkYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.jktb1}" alt="" class="user-pic"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="am-u-md-6 am-u-sm-12 row-mb">

                   <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-red ">
                                <i class="am-icon-bar-chart"></i>
                                <span>部门预算提醒---本季度</span>
                            </div>
                             <div class="actions">
                                  
                            </div>
                        </div>
                        <div class="tpl-scrollable">
                            

                            <table class="am-table tpl-table">
                                <thead>
                                    <tr class="tpl-table-uppercase">
                                        <th>部门</th>
                                        <th>预算</th>
                                        <th>花费</th>
                                        <th>余额</th>
                                        <th>提醒</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">销售部</a>
                                        </td>
                                        <td>${sessionScope.xsbYs}</td>
                                        <td>${sessionScope.xsbSum}</td>
                                        <td>${sessionScope.xsbYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.xsbtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">市场部</a>
                                        </td>
                                       <td>${sessionScope.scbYs}</td>
                                        <td>${sessionScope.scbSum}</td>
                                        <td>${sessionScope.scbYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.scbtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">财务部</a>
                                        </td>
                                         <td>${sessionScope.cwbYs}</td>
                                        <td>${sessionScope.cwbSum}</td>
                                        <td>${sessionScope.cwbYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.cwbtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">人力资源部</a>
                                        </td>
                                         <td>${sessionScope.rlzybYs}</td>
                                        <td>${sessionScope.rlzybSum}</td>
                                        <td>${sessionScope.rlzybYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.rlzybtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">研发部</a>
                                        </td>
                                          <td>${sessionScope.yfbYs}</td>
                                        <td>${sessionScope.yfbSum}</td>
                                        <td>${sessionScope.yfbYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.yfbtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">生产部</a>
                                        </td>
                                         <td>${sessionScope.shcbYs}</td>
                                        <td>${sessionScope.shcbSum}</td>
                                        <td>${sessionScope.shcbYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.shcbtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">采购部</a>
                                        </td>
                                        <td>${sessionScope.cgbYs}</td>
                                        <td>${sessionScope.cgbSum}</td>
                                        <td>${sessionScope.cgbYe}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.cgbtb}" alt="" class="user-pic"></td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="am-u-md-6 am-u-sm-12 row-mb">
                    <div class="tpl-portlet">
                        <div class="tpl-portlet-title">
                            <div class="tpl-caption font-red ">
                                <i class="am-icon-bar-chart"></i>
                                <span>部门预算提醒---本年度</span>
                            </div>
                             <div class="actions">
                                  
                            </div>
                        </div>
                        <div class="tpl-scrollable">
                            

                            <table class="am-table tpl-table">
                                <thead>
                                    <tr class="tpl-table-uppercase">
                                        <th>部门</th>
                                        <th>预算</th>
                                        <th>花费</th>
                                        <th>余额</th>
                                        <th>提醒</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">销售部</a>
                                        </td>
                                        <td>${sessionScope.xsbYs1}</td>
                                        <td>${sessionScope.xsbSum1}</td>
                                        <td>${sessionScope.xsbYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.xsbtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">市场部</a>
                                        </td>
                                       <td>${sessionScope.scbYs1}</td>
                                        <td>${sessionScope.scbSum1}</td>
                                        <td>${sessionScope.scbYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.scbtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">财务部</a>
                                        </td>
                                         <td>${sessionScope.cwbYs1}</td>
                                        <td>${sessionScope.cwbSum1}</td>
                                        <td>${sessionScope.cwbYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.cwbtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">人力资源部</a>
                                        </td>
                                         <td>${sessionScope.rlzybYs1}</td>
                                        <td>${sessionScope.rlzybSum1}</td>
                                        <td>${sessionScope.rlzybYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.rlzybtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">研发部</a>
                                        </td>
                                          <td>${sessionScope.yfbYs1}</td>
                                        <td>${sessionScope.yfbSum1}</td>
                                        <td>${sessionScope.yfbYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.yfbtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">生产部</a>
                                        </td>
                                         <td>${sessionScope.shcbYs1}</td>
                                        <td>${sessionScope.shcbSum1}</td>
                                        <td>${sessionScope.shcbYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.shcbtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img src="" alt="" class="user-pic">
                                            <a class="user-name" href="###">采购部</a>
                                        </td>
                                        <td>${sessionScope.cgbYs1}</td>
                                        <td>${sessionScope.cgbSum1}</td>
                                        <td>${sessionScope.cgbYe1}</td>
                                        <td class="font-green bold"><img src="images/${sessionScope.cgbtb1}" alt="" class="user-pic"></td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>



        </div>



<!-- jQuery -->
	<script src="<%=basePath%>js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="<%=basePath%>js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
	<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->

    <script src="staffee/assets/js/jquery.min.js"></script>
    <script src="staffee/assets/js/amazeui.min.js"></script>
    <script src="staffee/assets/js/iscroll.js"></script>
    <script src="staffee/assets/js/app.js"></script>
</body>
<script src="<%=basePath%>js/sb-admin-2.js"></script>
    <script type="text/javascript">

  
</script>
</html>