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
                        <ul class="tpl-left-nav-sub-menu" style="display: block;">
                            <li>
                               <a href="selectUser.action" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>员工管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            
                                <a href="selectBudgetType.action" >
                                    <i class="am-icon-angle-right"></i>
                                    <span>预算管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                                
                                <a href="selectLeaveDay.action" class="active">
                                    <i class="am-icon-angle-right" ></i>
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
     <div class="tpl-portlet-components">
          <div class="portlet-title">
<div class="layui-tab layui-tab-card">
     <ul class="layui-tab-title">
         <li class="layui-this">请假管理</li>
     </ul>
     <div class="layui-tab-content">
         <div class="layui-tab-item layui-show">
              
             
  
         
                    <div class="am-g" >
                        <div class="am-u-sm-12" id="demo">
                            <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-title">序号</th>
                                            <th class="table-title">请假类别</th>
                                            <th class="table-author am-hide-sm-only">请假天数</th>
                                            <th class="table-set">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <c:forEach begin="0" step="1" items="${leaveDay}" var="row" varStatus="leaveDay">
                                        <tr>
                                            <td>${row.leave_day_id}</td>
                                            <td>${row.leave_day_type}</td>
                                            <td>${row.leave_day_number}</td>
					                     
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal1" onclick="editLeaveDay(${row.leave_day_id})">设置</a>

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
    </div>
    
</div>
 <!-- -----------------------------------------------------------完------------------------------------------------ -->  
  </div>
</div> 

    
          
    </div>
    

    </div>
    

<script src="layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('element', function(){
  var $ = layui.jquery
  ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
  
  
 
});
</script>
                </div>
               
                <div class="tpl-alert"></div>
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
		<h4 class="modal-title" id="myModalLabel">修改预算</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="editLeaveDay_form" enctype="multipart/form-data" action="insertDepartment.action" method="post">
		<input type="hidden" id="leave_day_id" name="leave_day_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">请假类别</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="leave_day_type"  name="leave_day_type" readonly>
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">请假天数</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="leave_day_number"  name="leave_day_number">
			</div>
		  </div>
		 
		 <div class="modal-footer">
			<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			<button type="button" class="btn btn-primary" onclick="updateLeaveDay()">设置</button>
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
    <script src="staffee/assets/js/iscroll.js"></script>
    <script src="staffee/assets/js/app.js"></script>
</body>
<script src="<%=basePath%>js/sb-admin-2.js"></script>
    <script type="text/javascript">

    function editLeaveDay(id) {
		$.ajax({
			type:"get",
			url:"<%=basePath%>editLeaveDay.action",
			data:{"leave_day_id":id},
			success:function(data) {
				$("#leave_day_id").val(data.leave_day_id);
				$("#leave_day_type").val(data.leave_day_type);
				$("#leave_day_number").val(data.leave_day_number);
			}
		});
	}
    
    
   function updateLeaveDay() {
		$.post("<%=basePath%>updateLeaveDay.action",$("#editLeaveDay_form").serialize(),function(data){
			if(data=="0"){
			    alert("信息更新成功！");
			}else{
				alert("信息更新失败！");
			}
			window.location.reload();
		});
	}
   

</script>


<script src="layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use('element', function(){
  var $ = layui.jquery
  ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
  
  //触发事件
  var active = {
    tabAdd: function(){
      //新增一个Tab项
      element.tabAdd('demo', {
        title: '新选项'+ (Math.random()*1000|0) //用于演示
        ,content: '内容'+ (Math.random()*1000|0)
        ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
      })
    }
    ,tabDelete: function(othis){
      //删除指定Tab项
      element.tabDelete('demo', '44'); //删除：“商品管理”
      
      
      othis.addClass('layui-btn-disabled');
    }
    ,tabChange: function(){
      //切换到指定Tab项
      element.tabChange('demo', '22'); //切换到：用户管理
    }
  };
  
  $('.site-demo-active').on('click', function(){
    var othis = $(this), type = othis.data('type');
    active[type] ? active[type].call(this, othis) : '';
  });
  
  //Hash地址的定位
  var layid = location.hash.replace(/^#test=/, '');
  element.tabChange('test', layid);
  
  element.on('tab(test)', function(elem){
    location.hash = 'test='+ $(this).attr('lay-id');
  });
  
});
</script>
</html>