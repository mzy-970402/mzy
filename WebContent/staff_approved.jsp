<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    
    <title>已审批</title>
    <meta http-equiv="pragma" content="no-cache">  
<meta http-equiv="cache-control" content="no-cache">  
<meta http-equiv="expires" content="0">  
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
<meta http-equiv="description" content="This is my page">  

<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />

<!-- MetisMenu CSS -->
<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />

<!-- DataTables CSS -->
<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />

<!-- Custom CSS -->
<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />

<!-- Custom Fonts -->
<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"
	type="text/css" />
	
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


     <script src="js/jquery-1.11.3.min.js"></script>
     <script src="jquery-2.1.1.js" type="text/javascript"></script>
    <style type="text/css">
    
    #myModal2{
 margin-top : 80px;
}
	.max{
	    width:100%;
	    height:auto;
	}
	
	.min{
		width: 120px;
		height: 50px;
	}
	
	#myModal7
{
    margin-top:70px;
}
	
</style>
<script type="text/javascript">
$(function(){
	$('#images').click(function(){
		$(this).toggleClass('min');
		$(this).toggleClass('max');
	});
});
</script>
    
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
    <!-- 引入外部样式等 -->
    <link rel="stylesheet" href="layui/css/layui.css" media="all">
    <script src="layui/layui.js"></script>
    <script src="layui/jquery-3.2.1.min.js"></script>


<style>
   *{
        padding:0;
        margin:0;
    }
    
    li{
        list-style:none;
    }
    
    .gcs-pagination{
         margin:5px;
         background:#ccc;
    }
    
    .gcs-pagination li{
         float:left;
    }
    
    .gcs-pagination a{
         text-decoration:none;
         padding:5px 12px;
         margin:2px;
         color:black;
         border:1px solid lightgray;
    }
    
    .gcs-pagination a:hover{

  background: #CCCCCC;

}

.gcs-pagination a.cur{
   background:#4CAF50;
   color:#FFFFFF;
}

</style>
</head>
<body data-type="index">
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
                        <li><a href="#" onclick="editUser(${sessionScope.user_id})" data-toggle="modal" data-target="#myModal7"><span class="am-icon-cog"></span> 修改密码</a></li>
                        <li><a href="login.jsp"><span class="am-icon-power-off"></span> 退出</a></li>
                    </ul>
                </li>
                
            </ul>
        </div>
    </header>
<!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->




    <div class="tpl-page-container tpl-page-header-fixed">


        <div class="tpl-left-nav tpl-left-nav-hover">
            <div class="tpl-left-nav-title">
                                                     快报销-员工管理
            </div>
            <div class="tpl-left-nav-list">
                <ul class="tpl-left-nav-menu" >
                    <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-table"></i>
                            <span>我的申请</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" >
                            <li>
                               <a href="staff_txsqd.jsp" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>填写申请单</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            
                            
                                <a href="staff_committed.jsp">
                                    <i class="am-icon-angle-right"></i>
                                    <span>已提交</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li>

                     <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>我的审批</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" style="display: block;">
                            <li>
                                <a href="selectNotApproved.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>未审批</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                                <a href="selectApproved.action" class="active">
                                    <i class="am-icon-angle-right"></i>
                                    <span>已审批</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                     
                      <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>报表分析</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" >
                            <li>
                                <a href="showPieChart.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>图表分析</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                               
                            </li>
                        </ul>
                    </li>
                     <li class="tpl-left-nav-item">
                        <a href="javascript:;" class="nav-link tpl-left-nav-link-list">
                            <i class="am-icon-wpforms"></i>
                            <span>我的信息</span>
                            <i class="am-icon-angle-right tpl-left-nav-more-ico am-fr am-margin-right tpl-left-nav-more-ico-rotate"></i>
                        </a>
                        <ul class="tpl-left-nav-sub-menu" >
                            <li>
                                <a href="selectUserMessage.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>基本信息</span>
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


<!-- ------------------------------------------------------------------------------------------------------------------- -->
<div class="tpl-content-wrapper">
     <div class="tpl-content-page-title">
                       已审批
     </div>
     <ol class="am-breadcrumb">
         <li>我的审批</li>
         <li class="am-active">已审批</li>
     </ol>
     <div class="tpl-portlet-components">
         <div class="portlet-title">
              <div class="caption font-green bold">
                   <span class="am-icon-code"></span> 已审批
              <div class="tpl-portlet-input tpl-fz-ml">
                   <div class="portlet-input input-small input-inline">
                        <div class="input-icon right">
                             <i class="am-icon-search"></i>
                             <input type="text" class="form-control form-control-solid" placeholder="搜索..."> 
                        </div>
                   </div>
              </div>
         </div>
<!-- --------------------------------------------------------------------------------------- -->
<div class="tpl-block">
                    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                   
                                </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                 <select data-am-selected="{btnSize: 'sm'}" onchange="window.location=this.value;"> 
              <option value="selectNotApproved.action">未审批</option>
              <option value="selectApproved.action" selected = "selected">已审批</option>
             
            </select>
                            </div>
                        </div>
                    </div>
                    <div class="am-g" >
                        <div class="am-u-sm-12" id="demo">
                            <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-title">申请类型</th>
                                            <th class="table-title">申请事由</th>
                                            <th class="table-title">审批人</th>
                                            <th class="table-title">审批状态</th>
                                            <th class="table-set">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <c:forEach begin="0" step="1" items="${userClbx1}" var="row" varStatus="userClbx">
                                        <tr>
                                            <td>差旅报销</td>
                                            <td>${row.clbx_bxsy}</td>
                                            <td>${row.clbx_spr}</td>
                                            <td>${row.clbx_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal1" onclick="editClbx(${row.clbx_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userClbx2}" var="row" varStatus="userClbx">
                                        <tr>
                                            <td>差旅报销</td>
                                            <td>${row.clbx_bxsy}</td>
                                            <td>${row.clbx_spr}</td>
                                            <td>${row.clbx_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal1" onclick="editClbx(${row.clbx_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userRcbx1}" var="row" varStatus="userRcbx">
                                        <tr>
                                            <td>日常报销</td>
                                            <td>${row.rcbx_bxsy}</td>
                                            <td>${row.rcbx_spr}</td>
                                            <td>${row.rcbx_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2" onclick="editRcbx(${row.rcbx_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userRcbx2}" var="row" varStatus="userRcbx">
                                        <tr>
                                            <td>日常报销</td>
                                            <td>${row.rcbx_bxsy}</td>
                                            <td>${row.rcbx_spr}</td>
                                            <td>${row.rcbx_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2" onclick="editRcbx(${row.rcbx_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userCcsq1}" var="row" varStatus="userCcsq">
                                        <tr>
                                            <td>出差申请</td>
                                            <td>${row.ccsq_ccsy}</td>
                                            <td>${row.ccsq_spr}</td>
                                            <td>${row.ccsq_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal3" onclick="editCcsq(${row.ccsq_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userCcsq2}" var="row" varStatus="userCcsq">
                                        <tr>
                                            <td>出差申请</td>
                                            <td>${row.ccsq_ccsy}</td>
                                            <td>${row.ccsq_spr}</td>
                                            <td>${row.ccsq_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal3" onclick="editCcsq(${row.ccsq_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userJk1}" var="row" varStatus="userJk">
                                        <tr>
                                            <td>借款</td>
                                            <td>${row.jk_jksy}</td>
                                            <td>${row.jk_spr}</td>
                                            <td>${row.jk_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal4" onclick="editJk(${row.jk_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userJk2}" var="row" varStatus="userJk">
                                        <tr>
                                            <td>借款</td>
                                            <td>${row.jk_jksy}</td>
                                            <td>${row.jk_spr}</td>
                                            <td>${row.jk_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal4" onclick="editJk(${row.jk_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userHk1}" var="row" varStatus="userHk">
                                        <tr>
                                            <td>还款</td>
                                            <td>${row.hk_sy}</td>
                                            <td>${row.hk_spr}</td>
                                            <td>${row.hk_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal5" onclick="editHk(${row.hk_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userHk2}" var="row" varStatus="userHk">
                                        <tr>
                                            <td>还款</td>
                                            <td>${row.hk_sy}</td>
                                            <td>${row.hk_spr}</td>
                                            <td>${row.hk_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal5" onclick="editHk(${row.hk_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        <c:forEach begin="0" step="1" items="${userQj1}" var="row" varStatus="userQj">
                                        <tr>
                                            <td>请假</td>
                                            <td>${row.qj_qjsy}</td>
                                            <td>${row.qj_spr}</td>
                                            <td>${row.qj_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal6" onclick="editQj(${row.qj_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                         <c:forEach begin="0" step="1" items="${userQj2}" var="row" varStatus="userQj">
                                        <tr>
                                            <td>请假</td>
                                            <td>${row.qj_qjsy}</td>
                                            <td>${row.qj_spr}</td>
                                            <td>${row.qj_state}</td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal6" onclick="editQj(${row.qj_id})">查看</a>
                                                       
                                                  </div>
                                                  </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        
                                        
                                       
                                        </tbody>
                             </table>
                        

                             
            
                             </form>     

</div>
	</div>
	
	


    </div>
    </div>
    </div>
    </div>
    </div>
    
    
<!-- ---------------------------------------------------------------------------------------------------- -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">差旅报销</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="clbx_sp_form" enctype="multipart/form-data" action="updateClbx.action" method="post">
		<input type="hidden" id="clbx_id" name="clbx_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">报销事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="clbx_bxsy"  name="clbx_bxsy" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">申请人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="clbx_sqr"  name="clbx_sqr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">申请类别</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="clbx_sqlb"  name="clbx_sqlb" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">金额</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="clbx_je"  name="clbx_je" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">日期</label>
		    <div class="col-sm-10">
			    <input type="text" class="layui-input" id="clbx_date" name="clbx_date" readonly="true">
	        </div>
		  </div>
		                   
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">备注</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="clbx_bz"  name="clbx_bz" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="clbx_spr"  name="clbx_spr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="clbx_advice" name="clbx_advice" readonly="true"></textarea>
			</div>
		  </div>
		  
		  
		  
		 <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		 </div>
		 </form>
	</div>
  </div>
 </div>
</div>

<!-- ---------------------------------------------------------------------------------------------------- -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">日常报销</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="rcbx_sp_form" enctype="multipart/form-data" action="updateRcbx.action" method="post">
		<input type="hidden" id="rcbx_id" name="rcbx_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">报销事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="rcbx_bxsy"  name="rcbx_bxsy" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">申请人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="rcbx_sqr"  name="rcbx_sqr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">申请类别</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="rcbx_sqlb"  name="rcbx_sqlb" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">金额</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="rcbx_je"  name="rcbx_je" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">日期</label>
		    <div class="col-sm-10">
			    <input type="text" class="layui-input" id="rcbx_date" name="rcbx_date" readonly="true">
	        </div>
		  </div>
		                   
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">备注</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="rcbx_bz"  name="rcbx_bz" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="rcbx_spr"  name="rcbx_spr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="rcbx_advice" name="rcbx_advice" placeholder="请输入" readonly="true"></textarea>
			</div>
		  </div>
		  
		  
		  
		 <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		 </div>
		 </form>
	</div>
  </div>
 </div>
</div>

<!-- ---------------------------------------------------------------------------------------------------- -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">出差申请</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="ccsq_sp_form" enctype="multipart/form-data" action="updateCcsq.action" method="post">
		<input type="hidden" id="ccsq_id" name="ccsq_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">出差事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_ccsy"  name="ccsq_ccsy" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">申请人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_sqr"  name="ccsq_sqr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">出发日期</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="ccsq_cfrq"  name="ccsq_cfrq" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">返回日期</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_fhrq"  name="ccsq_fhrq" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">出发地</label>
		    <div class="col-sm-10">
			    <input type="text" class="layui-input" id="ccsq_cfd_province" name="ccsq_cfd_province" readonly="true">
			    <input type="text" class="layui-input" id="ccsq_cfd_city" name="ccsq_cfd_city" readonly="true">
			    <input type="text" class="layui-input" id="ccsq_cfd_district" name="ccsq_cfd_district" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">目的地</label>
		    <div class="col-sm-10">
			    <input type="text" class="layui-input" id="ccsq_mdd_province" name="ccsq_mdd_province" readonly="true">
			    <input type="text" class="layui-input" id="ccsq_mdd_city" name="ccsq_mdd_city" readonly="true">
			    <input type="text" class="layui-input" id="ccsq_mdd_district" name="ccsq_mdd_district" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">出差人员</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_ccry"  name="ccsq_ccry" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">费用类别</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_fylb"  name="ccsq_fylb" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">金额</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_jkje"  name="ccsq_jkje" readonly="true">
			</div>
		  </div>
		                   
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">备注</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_bz"  name="ccsq_bz" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_spr"  name="ccsq_spr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="ccsq_advice" name="ccsq_advice" placeholder="请输入" readonly="true"></textarea>
			</div>
		  </div>
		  
		  
		  
		 <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		 </div>
		 </form>
	</div>
  </div>
 </div>
</div>

<!-- ---------------------------------------------------------------------------------------------------- -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">借款</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="jk_sp_form" enctype="multipart/form-data" action="updateJk.action" method="post">
		<input type="hidden" id="jk_id" name="jk_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">借款人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jkr"  name="jk_jkr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">借款事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jksy"  name="jk_jksy" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">借款金额</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="jk_jkje"  name="jk_jkje" readonly="true">
			</div>
		  </div>
		  
		  
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_spr"  name="jk_spr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="jk_advice" name="jk_advice" placeholder="请输入" readonly="true"></textarea>
			</div>
		  </div>
		  
		  
		  
		 <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		 </div>
		 </form>
	</div>
  </div>
 </div>
</div>

<!-- ---------------------------------------------------------------------------------------------------- -->
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">还款</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="hk_sp_form" enctype="multipart/form-data" action="updateHk.action" method="post">
		<input type="hidden" id="hk_id" name="hk_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">还款人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="hk_hkr"  name="hk_hkr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">申请日期</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="hk_sqrq"  name="hk_sqrq" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">事由</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="hk_sy"  name="hk_sy" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">还款金额</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="hk_hkje"  name="hk_hkje" readonly="true">
	        </div>
		  </div>
		  
		                   
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">备注</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="hk_bz"  name="hk_bz" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="hk_spr"  name="hk_spr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="hk_advice" name="hk_advice" placeholder="请输入" readonly="true"></textarea>
			</div>
		  </div>
		  
		  
		  
		 <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		 </div>
		 </form>
	</div>
  </div>
 </div>
</div>

<!-- ---------------------------------------------------------------------------------------------------- -->
<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">请假</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="qj_sp_form" enctype="multipart/form-data" action="updateQj.action" method="post">
		<input type="hidden" id="qj_id" name="qj_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">申请人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_sqr"  name="qj_sqr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">请假类型</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_qjlx"  name="qj_qjlx" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">开始时间</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="qj_ks"  name="qj_ks" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">结束时间</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_js"  name="qj_js" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">请假天数</label>
		    <div class="col-sm-10">
			    <input type="text" class="layui-input" id="qj_qjts" name="qj_qjts" readonly="true">
	        </div>
		  </div>
		                   
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">请假事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_qjsy"  name="qj_qjsy" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_spr"  name="qj_spr" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="qj_advice" name="qj_advice" placeholder="请输入" readonly="true"></textarea>
			</div>
		  </div>
		  
		  
		  
		 <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		 </div>
		 </form>
	</div>
  </div>
 </div>
</div>
	
	

<!-- ---------------------------------------------------------------------------------------------------- -->
<div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">修改密码</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="update_psw_form" enctype="multipart/form-data" action="updateUserPsw.action" method="post">
		<input type="hidden" id="user_id2" name="user_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">用户名</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="user_name2"  name="user_name"  readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="user_psw2"  name="user_psw">
			</div>
		  </div>
		  
		  
		 <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			<button type="submit" class="btn btn-default"">修改</button>
		 </div>
		 </form>
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
    <script src="staffee/assets/js/app.js"></script>
               


</body>



<!-- /#wrapper -->

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
	
	
	
	
	<script src="<%=basePath%>js/sb-admin-2.js"></script>
    <script type="text/javascript">
    function editClbx(id) {
		$.ajax({
			type:"get",
			url:"<%=basePath%>editClbx.action",
			data:{"clbx_id":id},
			success:function(data) {
				$("#clbx_id").val(data.clbx_id);
				$("#clbx_bxsy").val(data.clbx_bxsy);
				$("#clbx_sqr").val(data.clbx_sqr);
				$("#clbx_sqlb").val(data.clbx_sqlb);
				$("#clbx_je").val(data.clbx_je);
				$("#clbx_date").val(data.clbx_date);
				$("#clbx_fp").val(data.clbx_fp);
				$("#clbx_bz").val(data.clbx_bz);
				$("#clbx_spr").val(data.clbx_spr);
				$("#clbx_advice").val(data.clbx_advice);
			}
		});
	}
	
	
function agreeClbx() {
	$.post("<%=basePath%>agreeClbx.action",$("#clbx_sp_form").serialize(),function(data){
		if(data=="0"){
		    alert("任务审批完成");
		}else{
			alert("任务审批未完成");
		}
		window.location.reload();
	});
}


function returnClbx() {
	$.post("<%=basePath%>returnClbx.action",$("#clbx_sp_form").serialize(),function(data){
		if(data=="0"){
		    alert("任务审批完成");
		}else{
			alert("任务审批未完成");
		}
		window.location.reload();
	});
}

function editRcbx(id) {
	$.ajax({
		type:"get",
		url:"<%=basePath%>editRcbx.action",
		data:{"rcbx_id":id},
		success:function(data) {
			$("#rcbx_id").val(data.rcbx_id);
			$("#rcbx_bxsy").val(data.rcbx_bxsy);
			$("#rcbx_sqr").val(data.rcbx_sqr);
			$("#rcbx_sqlb").val(data.rcbx_sqlb);
			$("#rcbx_je").val(data.rcbx_je);
			$("#rcbx_date").val(data.rcbx_date);
			$("#rcbx_fp").val(data.rcbx_fp);
			$("#rcbx_bz").val(data.rcbx_bz);
			$("#rcbx_spr").val(data.rcbx_spr);
			$("#rcbx_advice").val(data.rcbx_advice);
		}
	});
}

function editCcsq(id) {
	$.ajax({
		type:"get",
		url:"<%=basePath%>editCcsq.action",
		data:{"ccsq_id":id},
		success:function(data) {
			$("#ccsq_id").val(data.ccsq_id);
			$("#ccsq_ccsy").val(data.ccsq_ccsy);
			$("#ccsq_sqr").val(data.ccsq_sqr);
			$("#ccsq_fylb").val(data.ccsq_fylb);
			$("#ccsq_cfrq").val(data.ccsq_cfrq);
			$("#ccsq_fhrq").val(data.ccsq_fhrq);
			$("#ccsq_cfd_province").val(data.ccsq_cfd_province);
			$("#ccsq_cfd_city").val(data.ccsq_cfd_city);
			$("#ccsq_cfd_district").val(data.ccsq_cfd_district);
			$("#ccsq_mdd_province").val(data.ccsq_mdd_province);
			$("#ccsq_mdd_city").val(data.ccsq_mdd_city);
			$("#ccsq_mdd_district").val(data.ccsq_mdd_district);
			$("#ccsq_ccry").val(data.ccsq_ccry);
			$("#ccsq_jkje").val(data.ccsq_jkje);
			$("#ccsq_bz").val(data.ccsq_bz);
			$("#ccsq_spr").val(data.ccsq_spr);
			$("#ccsq_advice").val(data.ccsq_advice);
			
		}
	});
}

function editJk(id) {
	$.ajax({
		type:"get",
		url:"<%=basePath%>editJk.action",
		data:{"jk_id":id},
		success:function(data) {
			$("#jk_id").val(data.jk_id);
			$("#jk_jkr").val(data.jk_jkr);
			$("#jk_jksy").val(data.jk_jksy);
			$("#jk_jkje").val(data.jk_jkje);
			$("#jk_spr").val(data.jk_spr);
			$("#jk_state").val(data.jk_state);
			$("#jk_advice").val(data.jk_advice);
		}
	});
}

function editHk(id) {
	$.ajax({
		type:"get",
		url:"<%=basePath%>editHk.action",
		data:{"hk_id":id},
		success:function(data) {
			$("#hk_id").val(data.hk_id);
			$("#hk_hkr").val(data.hk_hkr);
			$("#hk_sqrq").val(data.hk_sqrq);
			$("#hk_sy").val(data.hk_sy);
			$("#hk_hkje").val(data.hk_hkje);
			$("#hk_bz").val(data.hk_bz);
			$("#hk_fj").val(data.hk_fj);
			$("#hk_spr").val(data.hk_spr);
			$("#hk_advice").val(data.hk_advice);
		}
	});
}

function editQj(id) {
	$.ajax({
		type:"get",
		url:"<%=basePath%>editQj.action",
		data:{"qj_id":id},
		success:function(data) {
			$("#qj_id").val(data.qj_id);
			$("#qj_sqr").val(data.qj_sqr);
			$("#qj_qjlx").val(data.qj_qjlx);
			$("#qj_ks").val(data.qj_ks);
			$("#qj_js").val(data.qj_js);
			$("#qj_qjts").val(data.qj_qjts);
			$("#qj_qjsy").val(data.qj_qjsy);
			$("#qj_fj").val(data.qj_fj);
			$("#qj_spr").val(data.qj_spr);
			$("#qj_advice").val(data.qj_advice);
		}
	});
}

function editUser(id) {
	$.ajax({
		type:"get",
		url:"<%=basePath%>editUserMessage.action",
		data:{"user_id":id},
		success:function(data) {
			$("#user_id2").val(data.user_id);
			$("#user_name2").val(data.user_name);
			$("#user_psw2").val(data.user_psw);
		}
	});
}

function updateUserPsw() {
	$.post("<%=basePath%>updateUserPsw.action",$("#user_psw_form").serialize(),function(data){
		if(data=="0"){
		    alert("密码修改成功！");
		}else{
			alert("密码修改失败！");
		}
		window.location.reload();
	});
}



</script>
 
</html>