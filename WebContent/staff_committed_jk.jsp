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

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>已提交—借款</title>
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
                         借款
     </div>
     <ol class="am-breadcrumb">
         <li>我的申请</li>
         <li><a href="txsqd.jsp">已提交</a></li>
         <li class="am-active">借款  / 还款</li>
     </ol>
     <div class="tpl-portlet-components">
         <div class="portlet-title">
              <div class="caption font-green bold">
                   <span class="am-icon-code"></span> 借款
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
                       <button type="button" class="am-btn am-btn-default am-btn-danger" onclick="selectNotDeleteJk()"><span class="am-icon-trash-o"></span>回收站</button>
                                </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                <select data-am-selected="{btnSize: 'sm'}" onchange="window.location=this.value;"> 
              <option value="selectClbx.action">差旅报销</option>
              <option value="selectRcbx.action">日常报销</option>
              <option value="selectCcsq.action">出差申请</option>
              <option value="selectJk.action" selected = "selected">借款</option>
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
                                            <th class="table-title">借款人</th>
                                            <th class="table-title">借款事由</th>
                                            <th class="table-title">借款金额</th>
                                            
                                            <th class="table-title">审批人</th>
                                            
                                            <th class="table-type">审批状态</th>
                                            <th class="table-type">提交时间</th>
                                            <th class="table-type">审批时间</th>
                                            <th class="table-set">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <c:forEach var="row" items="${data_jk}">
                                        <tr>
                                            <td>${row.jk_jkr}</td>
                                            <td>${row.jk_jksy}</td>
                                            <td>${row.jk_jkje}</td>
                                           
                                            <td>${row.jk_spr}</td>
					                        <td>${row.jk_state}</td>
					                        <td><fmt:formatDate value="${row.jk_tjtime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
					                         <td><fmt:formatDate value="${row.jk_sptime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal1" onclick="editJk1(${row.jk_id})">修改</a>
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2" onclick="editJk2(${row.jk_id})">查看</a>
                                                        <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="deleteJk(${row.jk_id})"><span class="am-icon-trash-o" ></span> 撤回</button>
                                                    </div>
                                                </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        </tbody>
                             </table>
                             </form>  
                             <ul class="gcs-pagination">  
    <li><a  href="<%=request.getContextPath()%>/selectJk.action?page=${page.firstPage}">首页</a></li>
     <li><a href="selectJk.action?page=${page.prePage}">上一页</a></li>
    <c:forEach var="s" begin="1" end="${page.pages}">  
    <li><a class="cur" href="<%=request.getContextPath()%>/selectJk.action?page=${s}">${s}</a></li>  
   </c:forEach>  
    <li><a href="selectJk.action?page=${page.nextPage}">下一页</a></li>
    <li><a  href="<%=request.getContextPath()%>/selectJk.action?page=${page.lastPage}">尾页</a></li>  
  </ul>     
        </div>

    </div>
    </div>
    </div>
    </div>
    </div>
<!-- ----------------------------------------------------------------------------------- -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">借款</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="jk_form" action="updateJk.action" method="post"> 
		<input type="hidden" id="jk_id" name="jk_id"/>
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">借款人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jkr"  name="jk_jkr">
			</div>
		  </div>
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">借款事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jksy"  name="jk_jksy">
			</div>
		  </div>
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">借款金额</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jkje" name="jk_jkje">
			</div>
		  </div>
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_spr"  name="jk_spr">
			 
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



<!-- ----------------------------------------------------------------------------------- -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
		<span aria-hidden="true">&times;</span>
		</button>
		<h4 class="modal-title" id="myModalLabel">借款</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="jk_form" action="updateJk.action" method="post"> 
		<input type="hidden" id="jk_id" name="jk_id"/>
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">借款人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jkr"  name="jk_jkr">
			</div>
		  </div>
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">借款事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jksy"  name="jk_jksy">
			</div>
		  </div>
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">借款金额</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jkje" name="jk_jkje">
			</div>
		  </div>
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_spr"  name="jk_spr">
			 
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
		<h4 class="modal-title" id="myModalLabel">借款</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="jk_sp_form" enctype="multipart/form-data" action="updateJk.action" method="post">
		<input type="hidden" id="jk_id" name="jk_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">借款人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jkr1"  name="jk_jkr1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">借款事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_jksy1"  name="jk_jksy1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">借款金额</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="jk_jkje1"  name="jk_jkje1" readonly="true">
			</div>
		  </div>
		  
		  
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="jk_spr1"  name="jk_spr1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="jk_advice1" name="jk_advice1" placeholder="请输入" readonly="true"></textarea>
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
    function editJk1(id) {
		$.ajax({
			type:"get",
			url:"<%=basePath%>editJk.action",
			data:{"jk_id":id},
			dateType : "json",
			success:function(data) {
				
					    $("#jk_id").val(data.jk_id);
						$("#jk_jkr").val(data.jk_jkr);
						$("#jk_jksy").val(data.jk_jksy);
						$("#jk_jkje").val(data.jk_jkje);
						$("#jk_spr").val(data.jk_spr);
						$("#jk_state").val(data.jk_state);
                     
			
			},
			error:function(status){
				  alert(status);
				  alert("添加失败，请稍后再试!");
				  }
		});
	}
    
    
    function editJk2(id) {
		$.ajax({
			type:"get",
			url:"<%=basePath%>editJk.action",
			data:{"jk_id":id},
			dateType : "json",
			success:function(data) {
				
					    $("#jk_id1").val(data.jk_id);
						$("#jk_jkr1").val(data.jk_jkr);
						$("#jk_jksy1").val(data.jk_jksy);
						$("#jk_jkje1").val(data.jk_jkje);
						$("#jk_spr1").val(data.jk_spr);
						$("#jk_state1").val(data.jk_state);
						$("#jk_advice1").val(data.jk_advice);
			
			},
			error:function(status){
				  alert(status);
				  alert("添加失败，请稍后再试!");
				  }
		});
	}
    
    
    function addHk() {
		$.post("<%=basePath%>addHk.action",$("#hk_form").serialize(),function(data){
			
			if(data=="0"){
			    alert("还款任务已提交，请等待审批 ");
			}else{
				alert("还款任务提交失败 ");
			}
			window.location.reload();
		});
	}
	
	
		function deleteJk(jk_id) {
			if(confirm('确实要删除该记录吗?')) {
				
				$.post("deleteJk.action",{"jk_id":jk_id},function(data){
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
	window.location.href="staff_jk.jsp";
}

function selectNotDeleteJk() {

	window.location.href="selectNotDeleteJk.action";
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