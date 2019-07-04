<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <title>差旅报销</title>
    
     
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
                               <a href="staff_txsqd.jsp" class="active">
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
                         差旅报销
     </div>
     <ol class="am-breadcrumb">
         <li>我的申请</li>
         <li><a href="txsqd.jsp">填写申请单</a></li>
         <li class="am-active">差旅报销</li>
     </ol>
     <div class="tpl-portlet-components">
         <div class="portlet-title">
              <div class="caption font-green bold">
                   <span class="am-icon-code"></span> 差旅报销
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
                   <div class="tpl-form-body tpl-form-line">
                        <form id="addClbx_form" enctype="multipart/form-data" class="am-form tpl-form-line-form" action="addClbx.action" method="post" >
                              <div class="am-form-group">
                                   <label for="user-name" class="am-u-sm-3 am-form-label">报销事由</label>
                                   <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="clbx_bxsy"  name="clbx_bxsy" placeholder="">
                                   </div>
                              </div>
                                
                              <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">申请人</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="clbx_sqr" name="clbx_sqr" value=${sessionScope.user_name}>
                                    </div>
                              </div>
                                
                              <div class="am-form-group">
                                    <label for="user-phone" class="am-u-sm-3 am-form-label">申请类别 </label>
                                    <div class="am-u-sm-9">
                                        <select data-am-selected="{searchBox: 1}" id="clbx_sqlb" name="clbx_sqlb">
                                            <option value="餐饮">餐饮</option>
                                            <option value="长途汽车">长途汽车</option>
                                            <option value="飞机">飞机</option>
                                            <option value="火车">火车</option>
                                            <option value="市内交通">市内交通</option>
                                            <option value="住宿">住宿</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">金额</label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="tpl-form-input" id="clbx_je" name="clbx_je" placeholder="">
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-email" class="am-u-sm-3 am-form-label">日期 </label>
                                    <div class="am-u-sm-9">
                                        <input type="text" class="layui-input" id="clbx_date" name="clbx_date">
                                       
                                    </div>
                                </div>
                                <script src="layui/layui.js"></script>
<script>
layui.use('laydate', function(){
  var laydate = layui.laydate;
  
  //执行一个laydate实例
  laydate.render({
    elem: '#clbx_date' //指定元素
  });
});
</script>

            
                               <div class="am-form-group">
                                     
                               
                                    <label for="user-weibo" class="am-u-sm-3 am-form-label">上传发票</label>
                                   <input type="file" name="file" id="file">
                                </div>

                                

                                <div class="am-form-group">
                                    <label for="user-intro" class="am-u-sm-3 am-form-label">备注</label>
                                    <div class="am-u-sm-9">
                                        <textarea class="" rows="2" id="clbx_bz" name="clbx_bz" placeholder="请输入"></textarea>
                                    </div>
                                </div>
                                
                                <div class="am-form-group">
                                    <label for="user-name" class="am-u-sm-3 am-form-label">审批人</label>
                                    <div class="am-u-sm-9">
                                    <select  id="clbx_spr" name="clbx_spr">
                                            <option value="">--请选择--</option>
								<c:forEach items="${userApprove}" var="item">
									<option value="${item.user_name}">${item.user_name }</option>
								</c:forEach>
                                        </select>
                                    
                                    

                                        <small></small>
                                    </div>
                                </div>
                                
                                     

                                <div class="am-form-group">
                                    <div class="am-u-sm-9 am-u-sm-push-3">
                                        <button type="submit" class="am-btn am-btn-primary tpl-btn-bg-color-success " >提交</button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
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
<script type="text/javascript">
function addClbx() {
	$.post("<%=basePath%>addClbx.action",$("#addClbx_form").serialize(),function(data){
		if(data=="0"){
		    alert("任务已提交给审批人");
		}else{
			alert("任务提交失败");
		}
		window.location.reload();
	});
}
</script>
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