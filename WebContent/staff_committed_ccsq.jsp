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
<meta charset="utf-8">
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>已提交—出差申请</title>
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



<link href="http://www.jq22.com/jquery/bootstrap-3.3.4.css" rel="stylesheet">
	<!--[if IE]>
		<script src="http://libs.baidu.com/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->

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
                        <ul class="tpl-left-nav-sub-menu" style="display: block;">
                            <li>
                               <a href="staff_txsqd.jsp" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>填写申请单</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            
                            
                                <a href="staff_committed.jsp" class="active">
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
                        <ul class="tpl-left-nav-sub-menu" >
                            <li>
                                <a href="selectNotApproved.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>未审批</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>

                                <a href="selectApproved.action">
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
                         出差申请
     </div>
     <ol class="am-breadcrumb">
         <li>我的申请</li>
         <li><a href="txsqd.jsp">已提交</a></li>
         <li class="am-active">出差申请</li>
     </ol>
     <div class="tpl-portlet-components">
         <div class="portlet-title">
              <div class="caption font-green bold">
                   <span class="am-icon-code"></span> 出差申请
              </div>
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
                                    <button type="button" class="am-btn am-btn-default am-btn-success" onclick="tz()"><span class="am-icon-plus"></span> 新增</button>
                                <button type="button" class="am-btn am-btn-default am-btn-danger" onclick="selectNotDeleteCcsq()"><span class="am-icon-trash-o"></span>回收站</button>
                                </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}" onchange="window.location=this.value;"> 
              <option value="selectClbx.action" >差旅报销</option>
              <option value="selectRcbx.action">日常报销</option>
              <option value="selectCcsq.action" selected = "selected">出差申请</option>
              <option value="selectJk.action">借款</option>
              <option value="selectJk.action">还款</option>
              <option value="selectQj.action">请假</option>
            </select>
                            </div>
                        </div>
                    </div>
                    <div class="am-g">
                        <div class="am-u-sm-12">
                            <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-title">出差事由</th>
                                           
                                            <th class="table-title">出差期间</th>
                                            <th class="table-title">出发地</th>
                                            <th class="table-title">目的地</th>
                                            <th class="table-title">出差人员</th>
                                             <th class="table-title">费用类别</th>
                                              <th class="table-title">借款金额</th>
                                               <th class="table-title">备注</th>
                                                <th class="table-title">审批人</th>
                                            <th class="table-type">审批状态</th>
                                            <th class="table-type">提交时间</th>
                                            <th class="table-type">审批时间</th>
                                            <th class="table-set">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <c:forEach var="row" items="${data_ccsq}">
                                        <tr>
                                            <td>${row.ccsq_ccsy}</td>
                                           
                                            <td>${row.ccsq_cfrq}至${row.ccsq_fhrq}</td>
                                            <td>${row.ccsq_cfd_province} - ${row.ccsq_cfd_city} - ${row.ccsq_cfd_district}</td>
                                            <td>${row.ccsq_mdd_province} - ${row.ccsq_mdd_city} - ${row.ccsq_mdd_district}</td>
					                        <td>${row.ccsq_ccry}</td>
					                        <td>${row.ccsq_fylb}</td>
					                        <td>${row.ccsq_jkje}</td>
					                        <td>${row.ccsq_bz}</td>
					                        <td>${row.ccsq_spr}</td>
					                        <td>${row.ccsq_state}</td>
					                        <td><fmt:formatDate value="${row.ccsq_tjtime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
					                        <td><fmt:formatDate value="${row.ccsq_sptime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal1" onclick="editCcsq1(${row.ccsq_id})">修改</a>
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2" onclick="editCcsq2(${row.ccsq_id})">查看</a>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="deleteCcsq(${row.ccsq_id})"><span class="am-icon-trash-o" ></span> 撤回</button>
                                                    </div>
                                                </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        </tbody>
                             </table>
                             
                             <ul class="gcs-pagination">  
    <li><a  href="<%=request.getContextPath()%>/selectCcsq.action?page=${page.firstPage}">首页</a></li>
     <li><a href="selectCcsq.action?page=${page.prePage}">上一页</a></li>
    <c:forEach var="s" begin="1" end="${page.pages}">  
    <li><a class="cur" href="<%=request.getContextPath()%>/selectCcsq.action?page=${s}">${s}</a></li>  
   </c:forEach>  
    <li><a href="selectCcsq.action?page=${page.nextPage}">下一页</a></li>
    <li><a  href="<%=request.getContextPath()%>/selectCcsq.action?page=${page.lastPage}">尾页</a></li>  
  </ul>  
                             
            
                             
                             </form>     
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
		<h4 class="modal-title" id="myModalLabel">出差申请</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="ccsq_form" enctype="multipart/form-data" action="updateCcsq.action" method="post">
		<input type="hidden" id="ccsq_id" name="ccsq_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">出差事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_ccsy"  name="ccsq_ccsy">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">申请人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_sqr"  name="ccsq_sqr">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">费用类别</label>
		    <div class="col-sm-10">
			   <select  id="ccsq_fylb" name="ccsq_fylb">
                                              <option value="餐饮">餐饮</option>
                                              <option value="长途汽车">长途汽车</option>
                                              <option value="飞机">飞机</option>
                                              <option value="火车">火车</option>
                                              <option value="市内交通">市内交通</option>
                                              <option value="办公">办公</option>
                                              <option value="补贴">补贴</option>
                                              <option value="房租">房租</option>
                                              <option value="交际">交际</option>
                                              <option value="水电">水电</option>
                                              <option value="通讯">通讯</option>
                                              <option value="招聘">招聘</option>
                                              <option value="住宿">住宿</option>
                                              <option value="其他">其他</option>
                                      </select>
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">出差申请</label>
		    <div class="col-sm-10">
			  开始日期<input type="text" class="layui-input" id="ccsq_cfrq" name="ccsq_cfrq">
               
                              返回日期<input type="text" class="layui-input" id="ccsq_fhrq" name="ccsq_fhrq">
	        </div>
		  </div>
		  
		  		                                  <script src="layui/layui.js"></script>
<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //执行一个laydate实例
  laydate.render({
    elem: '#ccsq_cfrq' //指定元素
  });
});

layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //执行一个laydate实例
  laydate.render({
    elem: '#ccsq_fhrq' //指定元素
  });
});
</script>
		  
		  
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">出发地</label>
		    <div class="col-sm-10">
			   <div  class="form-inline">
                          
                                <div id="distpicker2">
        <div class="form-group">
          <label class="sr-only" for="province6">Province</label>
          <select class="form-control" id="ccsq_cfd_province" name="ccsq_cfd_province"></select>
        </div>
        <div class="form-group">
          <label class="sr-only" for="city6">City</label>
          <select class="form-control" id="ccsq_cfd_city" name="ccsq_cfd_city"></select>
        </div>
        <div class="form-group">
          <label class="sr-only" for="district6">District</label>
          <select class="form-control" id="ccsq_cfd_district" name="ccsq_cfd_district"></select>
        </div>
      </div>
	        </div>
		  </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">目的地</label>
		    <div class="col-sm-10">
			   <div  class="form-inline">
                        
                                <div id="distpicker3">
        <div class="form-group">
          <label class="sr-only" for="province">Province</label>
          <select class="form-control" id="ccsq_mdd_province" name="ccsq_mdd_province"></select>
        </div>
        <div class="form-group">
          <label class="sr-only" for="city">City</label>
          <select class="form-control" id="ccsq_mdd_city" name="ccsq_mdd_city"></select>
        </div>
        <div class="form-group">
          <label class="sr-only" for="district">District</label>
          <select class="form-control" id="ccsq_mdd_district" name="ccsq_mdd_district"></select>
        </div>
      </div>
                     </div>
                            
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">出差人员</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_ccry"  name="ccsq_ccry">
			</div>
		  </div>
		  
		    <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">借款金额</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_jkje"  name="ccsq_jkje">
			</div>
		  </div>
		  
		    <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">备注</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_bz"  name="ccsq_bz">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_spr"  name="ccsq_spr">
			</div>
		  </div>
		  
		 <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			<button type="submit" class="btn btn-primary" >提交</button>
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
		<h4 class="modal-title" id="myModalLabel">出差申请</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="ccsq_sp_form" enctype="multipart/form-data" action="updateCcsq.action" method="post">
		<input type="hidden" id="ccsq_id" name="ccsq_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">出差事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_ccsy1"  name="ccsq_ccsy1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">申请人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_sqr1"  name="ccsq_sqr1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">出发日期</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="ccsq_cfrq1"  name="ccsq_cfrq1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">返回日期</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_fhrq1"  name="ccsq_fhrq1" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">出发地</label>
		    <div class="col-sm-10">
			    <input type="text" class="layui-input" id="ccsq_cfd_province1" name="ccsq_cfd_province1" readonly="true">
			    <input type="text" class="layui-input" id="ccsq_cfd_city1" name="ccsq_cfd_city1" readonly="true">
			    <input type="text" class="layui-input" id="ccsq_cfd_district1" name="ccsq_cfd_district1" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">目的地</label>
		    <div class="col-sm-10">
			    <input type="text" class="layui-input" id="ccsq_mdd_province1" name="ccsq_mdd_province1" readonly="true">
			    <input type="text" class="layui-input" id="ccsq_mdd_city1" name="ccsq_mdd_city1" readonly="true">
			    <input type="text" class="layui-input" id="ccsq_mdd_district1" name="ccsq_mdd_district1" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">出差人员</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_ccry1"  name="ccsq_ccry1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">费用类别</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_fylb1"  name="ccsq_fylb1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">金额</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_jkje1"  name="ccsq_jkje1" readonly="true">
			</div>
		  </div>
		                   
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">备注</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_bz1"  name="ccsq_bz1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="ccsq_spr1"  name="ccsq_spr1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="ccsq_advice1" name="ccsq_advice1" placeholder="请输入" readonly="true"></textarea>
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

                        <script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
	<script src="city/js/distpicker.data.js"></script>
	  <script src="city/js/distpicker.js"></script>
	  <script src="city/js/main.js"></script>
               


</body>
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<script type="text/javascript">

function editCcsq1(id) {
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
		}
	});
}

function editCcsq2(id) {
	$.ajax({
		type:"get",
		url:"<%=basePath%>editCcsq.action",
		data:{"ccsq_id":id},
		success:function(data) {
			$("#ccsq_id1").val(data.ccsq_id);
			$("#ccsq_ccsy1").val(data.ccsq_ccsy);
			$("#ccsq_sqr1").val(data.ccsq_sqr);
			$("#ccsq_fylb1").val(data.ccsq_fylb);
			$("#ccsq_cfrq1").val(data.ccsq_cfrq);
			$("#ccsq_fhrq1").val(data.ccsq_fhrq);
			$("#ccsq_cfd_province1").val(data.ccsq_cfd_province);
			$("#ccsq_cfd_city1").val(data.ccsq_cfd_city);
			$("#ccsq_cfd_district1").val(data.ccsq_cfd_district);
			$("#ccsq_mdd_province1").val(data.ccsq_mdd_province);
			$("#ccsq_mdd_city1").val(data.ccsq_mdd_city);
			$("#ccsq_mdd_district1").val(data.ccsq_mdd_district);
			$("#ccsq_ccry1").val(data.ccsq_ccry);
			$("#ccsq_jkje1").val(data.ccsq_jkje);
			$("#ccsq_bz1").val(data.ccsq_bz);
			$("#ccsq_spr1").val(data.ccsq_spr);
			$("#ccsq_advice1").val(data.ccsq_advice);
		}
	});
}


function deleteCcsq(ccsq_id) {
	if(confirm('确实要删除该记录吗?')) {
		
		$.post("deleteCcsq.action",{"ccsq_id":ccsq_id},function(data){
			if(data=="0"){
				alert("记录删除成功！");
			}else{
				alert("记录删除失败！");
			}
			window.location.reload();
		});
	}
}

function tz()
{
	window.location.href="staff_ccsq.jsp";
}

function selectNotDeleteCcsq() {

	window.location.href="selectNotDeleteCcsq.action";
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