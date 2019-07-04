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
    <title>已删除—请假</title>
    
     
    
    
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
 margin-top : 5px;
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
    <link rel="icon" type="image/png" href="staffee/assets/i/favicon.png">
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
                         请假
     </div>
     <ol class="am-breadcrumb">
         <li>我的申请</li>
         <li><a href="txsqd.jsp">已提交</a></li>
         <li class="am-active">请假</li>
     </ol>
     <div class="tpl-portlet-components">
         <div class="portlet-title">
              <div class="caption font-green bold">
                   <span class="am-icon-code"></span> 请假-已删除
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
                                 
                                </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                               
                            </div>
                        </div>
                    </div>
                    <div class="am-g">
                        <div class="am-u-sm-12">
                            <form class="am-form">
                                <table class="am-table am-table-striped am-table-hover table-main">
                                    <thead>
                                        <tr>
                                            <th class="table-title">请假类型</th>
                                            <th class="table-title">开始时间</th>
                                            <th class="table-title">结束时间</th>
                                            <th class="table-title">请假天数</th>
                                            <th class="table-title">请假事由</th>
                                            <th class="table-title">附件</th>
                                            <th class="table-title">审批人</th>
                                            <th class="table-type">审批状态</th>
                                            <th class="table-type">提交时间</th>
                                            <th class="table-type">审批时间</th>
                                            <th class="table-set">操作</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <c:forEach var="row" items="${data_qj}">
                                        <tr>
                                            <td>${row.qj_qjlx}</td>
                                            <td>${row.qj_ks}</td>
                                            <td>${row.qj_js}</td>
                                            <td>${row.qj_qjts}</td>
                                            <td>${row.qj_qjsy}</td>
                                             <td><img src="/image/${row.qj_fj}" class="pimg" width="120px" height="50px"></td>
					                        <td>${row.qj_spr}</td>
					                        <td>${row.qj_state}</td>
					                        <td><fmt:formatDate value="${row.qj_tjtime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
					                        <td><fmt:formatDate value="${row.qj_sptime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
                                            <td>
                                                <div class="am-btn-toolbar">
                                                    <div class="am-btn-group am-btn-group-xs">
                                                     
                                                        <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2" onclick="editQj2(${row.qj_id})">查看</a>
         
                                                    </div>
                                                </div>
                                             </td>
                                        </tr>
                                        </c:forEach>
                                        </tbody>
                             </table>
  <ul class="gcs-pagination">  
    <li><a  href="<%=request.getContextPath()%>/selectClbx.action?page=${page.firstPage}">首页</a></li>
     <li><a href="selectClbx.action?page=${page.prePage}">上一页</a></li>
    <c:forEach var="s" begin="1" end="${page.pages}">  
    <li><a class="cur" href="<%=request.getContextPath()%>/selectClbx.action?page=${s}">${s}</a></li>  
   </c:forEach>  
    <li><a href="selectClbx.action?page=${page.nextPage}">下一页</a></li>
    <li><a  href="<%=request.getContextPath()%>/selectClbx.action?page=${page.lastPage}">尾页</a></li>  
  </ul>  
                             
            
                             </form>     

        <div id="outerdiv" style="position:fixed;top:0;left:0;background:rgba(0,0,0,0.7);z-index:2;width:100%;height:100%;display:none;">   
		<div id="innerdiv" style="position:absolute;">
		<img id="bigimg" style="border:5px solid #fff;" src="" />    
</div>
	</div>
	
	

<script>
 
$(function(){
    $(".pimg").click(function(){
        var _this = $(this);//将当前的pimg元素作为_this传入函数
        imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);
    });
});
 
function imgShow(outerdiv, innerdiv, bigimg, _this){
    var src = _this.attr("src");//获取当前点击的pimg元素中的src属性
    $(bigimg).attr("src", src);//设置#bigimg元素的src属性
    /*获取当前点击图片的真实大小，并显示弹出层及大图*/
    $("<img/>").attr("src", src).load(function(){
        var windowW = $(window).width();//获取当前窗口宽度
        var windowH = $(window).height();//获取当前窗口高度
        var realWidth = this.width;//获取图片真实宽度
        var realHeight = this.height;//获取图片真实高度
        var imgWidth, imgHeight;
        var scale = 0.8;//缩放尺寸，当图片真实宽度和高度大于窗口宽度和高度时进行缩放
        if(realHeight>windowH*scale) {//判断图片高度
            imgHeight = windowH*scale;//如大于窗口高度，图片高度进行缩放
            imgWidth = imgHeight/realHeight*realWidth;//等比例缩放宽度
            if(imgWidth>windowW*scale) {//如宽度扔大于窗口宽度
                imgWidth = windowW*scale;//再对宽度进行缩放
            }
        } else if(realWidth>windowW*scale) {//如图片高度合适，判断图片宽度
            imgWidth = windowW*scale;//如大于窗口宽度，图片宽度进行缩放
            imgHeight = imgWidth/realWidth*realHeight;//等比例缩放高度   
        } else {//如果图片真实高度和宽度都符合要求，高宽不变
            imgWidth = realWidth*5;
            imgHeight = realHeight*5;
        }
 
        $(bigimg).css("width",imgWidth);//以最终的宽度对图片缩放
        var w = (windowW-imgWidth)/2;//计算图片与窗口左边距
        var h = (windowH-imgHeight)/2;//计算图片与窗口上边距
        $(innerdiv).css({"top":h, "left":w});//设置#innerdiv的top和left属性
        $(outerdiv).fadeIn("fast");//淡入显示#outerdiv及.pimg
 
    });
 
    $(outerdiv).click(function(){//再次点击淡出消失弹出层
        $(this).fadeOut("fast");
    });
 
}
 
</script>
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
		<h4 class="modal-title" id="myModalLabel">请假</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="qj_form" enctype="multipart/form-data" action="updateQj.action" method="post">
		<input type="hidden" id="qj_id" name="qj_id"/>
		  
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">申请人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_sqr"  name="qj_sqr">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">申请类别</label>
		    <div class="col-sm-10">
			 
                                        <select  id="qj_qjlx" name="qj_qjlx">
                                            <option value="事假">事假</option>
                                            <option value="病假">病假</option>
                                            <option value="调休">调休</option>
                                            <option value="婚假">婚假</option>
                                            <option value="年假">年假</option>
                                            <option value="产假">产假</option>
                                            <option value="陪产假">陪产假</option>
                                            <option value="产检假 ">产检假</option>
                                            <option value="其他假">其他假</option>
                                        </select>
                                    
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">开始时间</label>
		    <div class="col-sm-10">
			   <input type="text" class="layui-input" id="qj_ks" name="qj_ks">
	        </div>
		  </div>
		  
		  
		  <script src="/layui/layui.js"></script>
                                <script>
                                     layui.use('laydate', function(){
                                       var laydate = layui.laydate;
  
                                     //执行一个laydate实例
                                     laydate.render({
                                     elem: '#qj_ks' //指定元素
    	                              ,type: 'datetime'
                                });
                                  });
                               </script>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">结束时间</label>
		    <div class="col-sm-10">
			   <input type="text" class="layui-input" id="qj_js" name="qj_js">
	        </div>
		  </div>
		  
		  
		   <script src="/layui/layui.js"></script>
                                <script>
                                     layui.use('laydate', function(){
                                       var laydate = layui.laydate;
  
                                     //执行一个laydate实例
                                     laydate.render({
                                     elem: '#qj_js' //指定元素
    	                              ,type: 'datetime'
                                });
                                  });
                               </script>
                               
                               
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">请假天数</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_qjts"  name="qj_qjts">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">请假事由</label>
		    <div class="col-sm-10">
			  <input type="text" class="form-control" id="qj_qjsy"  name="qj_qjsy">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">附件</label>
		    <div class="col-sm-10">
			  <input type="file" name="file" id="file">
			</div>
		  </div>
		  
		   <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_spr"  name="qj_spr">
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
		<h4 class="modal-title" id="myModalLabel">请假</h4>
	</div>
   <div class="modal-body">
	  <form class="form-horizontal" id="qj_sp_form" enctype="multipart/form-data" action="updateQj.action" method="post">
		<input type="hidden" id="qj_id" name="qj_id"/>
		  
		  <div class="form-group">
		   <label for="edit_record_hospital" class="col-sm-2 control-label">申请人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_sqr1"  name="qj_sqr1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">请假类型</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_qjlx1"  name="qj_qjlx1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">开始时间</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="qj_ks1"  name="qj_ks1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">结束时间</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_js1"  name="qj_js1" readonly="true">
	        </div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">请假天数</label>
		    <div class="col-sm-10">
			    <input type="text" class="layui-input" id="qj_qjts1" name="qj_qjts1" readonly="true">
	        </div>
		  </div>
		                   
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">请假事由</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_qjsy1"  name="qj_qjsy1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="qj_spr1"  name="qj_spr1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="qj_advice1" name="qj_advice1" placeholder="请输入" readonly="true"></textarea>
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
    function editQj1(id) {
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
			}
		});
	}
    
    function editQj2(id) {
		$.ajax({
			type:"get",
			url:"<%=basePath%>editQj.action",
			data:{"qj_id":id},
			success:function(data) {
				$("#qj_id1").val(data.qj_id);
				$("#qj_sqr1").val(data.qj_sqr);
				$("#qj_qjlx1").val(data.qj_qjlx);
				$("#qj_ks1").val(data.qj_ks);
				$("#qj_js1").val(data.qj_js);
				$("#qj_qjts1").val(data.qj_qjts);
				$("#qj_qjsy1").val(data.qj_qjsy);
				$("#qj_fj1").val(data.qj_fj);
				$("#qj_spr1").val(data.qj_spr);
				$("#qj_advice1").val(data.qj_advice);
			}
		});
	}
	



function deleteQj(qj_id) {
	if(confirm('确实要删除该记录吗?')) {
		
		$.post("deletedQj.action",{"qj_id":qj_id},function(data){
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
	window.location.href="staff_qj.jsp";
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