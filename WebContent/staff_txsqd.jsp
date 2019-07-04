<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>添加申请单</title>
    
    <style>
        ul {
            list-style: none;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .haha {
            display: flex;
            justify-content: space-between;
            padding-left: 50px;
            padding-right: 50px;
        }

        .clbx {
            width: 65px;
            height: 65px;
            border-radius: 10px;
            background: url("images/clbx.png")
        }
        
         .rcbx {
            width: 70px;
            height: 65px;
            border-radius: 10px;
            background: url("images/rcbx.png")
        }
        
         .ccsq {
            width: 65px;
            height: 65px;
            border-radius: 10px;
            background: url("images/ccss.png")
        }
        
         .jk {
            width: 65px;
            height: 65px;
            border-radius: 10px;
            background: url("images/jk.png")
        }
        
         .hk {
            width: 65px;
            height: 65px;
            border-radius: 10px;
            background: url("images/hk.png")
        }
        
         .qj {
            width: 65px;
            height: 63px;
            border-radius: 10px;
            background: url("images/qj.png")
        }
        
        
        #myModal7
{
    margin-top:70px;
}
    </style>
         
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
<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet"  type="text/css" />

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



<!-- ------------------------------------------------------------------------------------------------- -->

        <div class="tpl-content-wrapper">


        <div class="row">

            <fieldset class="layui-elem-field site-demo-button" style="margin-top: 30px;">
                <legend>填写申请单</legend>
                <ul class="haha">
                    <li>
                        <div class="clbx"></div>
                        <span>差旅报销</span>

                    </li>
                    <li>
                            <div class="rcbx"></div>
                        <span >日常报销</span>

                    </li>
                    <li>
                            <div class="ccsq"></div>
                        <span>出差申请</span>

                    </li>
                    <li>
                            <div class="jk"></div>
                        <span >借款</span>

                    </li>
                    <li>
                            <div class="hk"></div>
                        <span >还款</span>

                    </li>
                    <li>
                            <div class="qj"></div>
                        <span>请假</span>

                    </li>
                </ul>
            </fieldset>

        </div>
    </div>
    <script>
        let clbx = document.querySelector(".clbx");
        clbx.onclick = function () {
        	window.location.href="selectApproveClbxUser.action"
        }
    </script>
    <script>
        let rcbx = document.querySelector(".rcbx");
        rcbx.onclick = function () {
        	window.location.href="selectApproveRcbxUser.action"
        }
    </script>
    <script>
        let ccss = document.querySelector(".ccsq");
        ccss.onclick = function () {
        	window.location.href="selectApproveCcsqUser.action"
        }
    </script>
    <script>
        let jk = document.querySelector(".jk");
        jk.onclick = function () {
        	window.location.href="selectApproveJkUser.action"
        }
    </script>
    <script>
        let hk = document.querySelector(".hk");
        hk.onclick = function () {
        	window.location.href="selectApproveHkUser.action"
        }
    </script>
    <script>
        let qj = document.querySelector(".qj");
        qj.onclick = function () {
        	window.location.href="selectApproveQjUser.action"
        }
    </script>
   
   
    <script type="text/javascript">
    
    function selectANotApproved(jk_spr) {
		
			
			$.post("selectNotApproved.action",{"jk_spr":jk_spr},function(data){
				if(data=="0"){
					alert("查询成功！");
				}else{
					alert("查询失败！");
				}
				window.location.reload();
			});
		
	}
	
    </script>

            
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
</body>
<script>
 
function tz1(){
window.location.href='staff_clbx.jsp';}
function tz2(){
window.location.href='staff_rcbx.jsp';}
function tz3(){
window.location.href='staff_ccsq.jsp';}
function tz4(){
window.location.href='staff_jk.jsp';}
function tz5(){
window.location.href='staff_hk.jsp';}
function tz6(){
window.location.href='staff_qj.jsp';}

</script>
    
    
    
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
    function editClbx2(id) {
		$.ajax({
			type:"get",
			url:"<%=basePath%>editClbx.action",
			data:{"clbx_id":id},
			success:function(data) {
				$("#clbx_id1").val(data.clbx_id);
				$("#clbx_bxsy1").val(data.clbx_bxsy);
				$("#clbx_sqr1").val(data.clbx_sqr);
				$("#clbx_sqlb1").val(data.clbx_sqlb);
				$("#clbx_je1").val(data.clbx_je);
				$("#clbx_date1").val(data.clbx_date);
				$("#clbx_fp1").val(data.clbx_fp);
				$("#clbx_bz1").val(data.clbx_bz);
				$("#clbx_spr1").val(data.clbx_spr);
				$("#clbx_advice1").val(data.clbx_advice);
			}
		});
	}
	
	
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


function deleteClbx(clbx_id) {
	if(confirm('确实要删除该记录吗?')) {
		
		$.post("deletedClbx.action",{"clbx_id":clbx_id},function(data){
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
	window.location.href="staff_clbx.jsp";
}



function selectNotDeleteClbx() {
	window.location.href="selectNotDeleteClbx.action";
		
		
	
}

</script>
</html>