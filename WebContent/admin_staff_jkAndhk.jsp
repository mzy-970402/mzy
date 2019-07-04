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
        #myModal1
        {
            margin-top:75px;
        }
        
        #myModal2
        {
            margin-top:75px;
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
                         <ul class="tpl-left-nav-sub-menu" style="display: block;">
                            <li>
                               <a href="AdminSelectClbxAndRcbx.action">
                                    <i class="am-icon-angle-right"></i>
                                    <span>报销管理</span>
                                    <i class="am-icon-star tpl-left-nav-content-ico am-fr am-margin-right"></i>
                                </a>
                            
                                <a href="AdminSelectJkAndHk.action" class="active">
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


    
            <div class="tpl-portlet-components">
                <div class="portlet-title">
                    <div class="layui-tab layui-tab-card">
  <ul class="layui-tab-title">
    <li class="layui-this">借款</li>
    <li>还款</li>
  </ul>
  <div class="layui-tab-content">
<!-- ---------------------------------------------------借款----------------------------------------------- -->  
<div class="layui-tab-item layui-show">
     <div class="tpl-block">
     <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button" class="am-btn am-btn-default am-btn-success" onclick="tzJk()"><span class="am-icon-plus"></span> 新增</button>
                               </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field">
                                <span class="am-input-group-btn">
            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button"></button>
          </span>
                            </div>
                        </div>
                    </div>
			<div class="am-g">
			    <div class="am-u-sm-12">
			        <form class="am-form">
			            <table class="am-table am-table-striped am-table-hover table-main">
			                <thead>
			                    <tr>
			                        <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
			                        <th class="table-id">ID</th>
			                        <th class="table-title">申请人</th>
			                        <th class="table-type">借款事由</th>
			                        <th class="table-date am-hide-sm-only">借款金额</th>
			                        <th class="table-set">申请日期</th>
			                        <th class="table-set">审批日期</th>
			                        <th class="table-set">操作</th>
			                    </tr>
                           </thead>
            <tbody>
            <c:forEach begin="0" step="1" items="${userJk}" var="row" varStatus="userJk">
            <tr>
                <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                <td>${row.jk_id}</td>
                <td>${row.jk_jkr}</td>
                <td>${row.jk_jksy}</td>
                <td>${row.jk_jkje}</td>
			    <td><fmt:formatDate value="${row.jk_tjtime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
		        <td><fmt:formatDate value="${row.jk_sptime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
                <td>
                    <div class="am-btn-toolbar">
                        <div class="am-btn-group am-btn-group-xs">
                            <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal1" onclick="AdminSelectOneJk(${row.jk_id})">查看</a>
                            <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="AdminDeleteOneJk(${row.jk_id})"><span class="am-icon-trash-o" ></span>删除</button>
                      </div>
                      </div>
                 </td>
            </tr>
            </c:forEach>
        </tbody>
               </table>
<ul class="gcs-pagination">  
<li><a  href="<%=request.getContextPath()%>/AdminSelectJkAndHk.action?page=${page4.firstPage}">首页</a></li>
<li><a href="AdminSelectJkAndHk.action?page=${page4.prePage}">上一页</a></li>
<c:forEach var="s" begin="1" end="${page4.pages}">  
<li><a class="cur" href="<%=request.getContextPath()%>/AdminSelectJkAndHk.action?page=${s}">${s}</a></li>  
</c:forEach>  
<li><a href="AdminSelectJkAndHk.action?page=${page4.nextPage}">下一页</a></li>
<li><a  href="<%=request.getContextPath()%>/AdminSelectJkAndHk.action?page=${page4.lastPage}">尾页</a></li>  
</ul>  
</form>   
    </div>
    </div>
    </div>
    </div>
<!-- ---------------------------------------------还款--------------------------------------------------------------- -->
<div class="layui-tab-item">
    <div class="tpl-block">
    <div class="am-g">
                        <div class="am-u-sm-12 am-u-md-6">
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <button type="button" class="am-btn am-btn-default am-btn-success" onclick="tzHk()"><span class="am-icon-plus"></span> 新增</button>
                               </div>
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-form-group">
                                
                            </div>
                        </div>
                        <div class="am-u-sm-12 am-u-md-3">
                            <div class="am-input-group am-input-group-sm">
                                <input type="text" class="am-form-field">
                                <span class="am-input-group-btn">
            <button class="am-btn  am-btn-default am-btn-success tpl-am-btn-success am-icon-search" type="button"></button>
          </span>
                            </div>
                        </div>
                    </div>
         <div class="am-g">
            <div class="am-u-sm-12">
                 <form class="am-form">
			            <table class="am-table am-table-striped am-table-hover table-main">
			                <thead>
			                    <tr>
			                       <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
			                        <th class="table-id">ID</th>
			                        <th class="table-title">申请人</th>
			                        <th class="table-type">还款事由</th>
			                        <th class="table-date am-hide-sm-only">金额</th>
			                        <th class="table-author am-hide-sm-only">附件</th>
			                        <th class="table-set">申请日期</th>
			                        <th class="table-set">审批日期</th>
			                        <th class="table-set">操作</th>
			                    </tr>
                           </thead>
            <tbody>
            <c:forEach begin="0" step="1" items="${userHk}" var="row" varStatus="userHk">
            <tr>
                <th class="table-check"><input type="checkbox" class="tpl-table-fz-check"></th>
                <td>${row.hk_id}</td>
                <td>${row.hk_hkr}</td>
                <td>${row.hk_sy}</td>
                <td>${row.hk_hkje}</td>
                <td><img src="/image/${row.hk_fj}" class="pimg" width="120px" height="50px"></td>
			    <td><fmt:formatDate value="${row.hk_tjtime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
		        <td><fmt:formatDate value="${row.hk_sptime}" pattern="yyyy-MM-dd HH:mm:ss" /> </td>
                <td>
                    <div class="am-btn-toolbar">
                        <div class="am-btn-group am-btn-group-xs">
                            <a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#myModal2" onclick="AdminSelectOneHk(${row.hk_id})">查看</a>
                            <button class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only" onclick="AdminDeleteOneHk(${row.hk_id})"><span class="am-icon-trash-o" ></span>删除</button>
                      </div>
                      </div>
                 </td>
            </tr>
            </c:forEach>
        </tbody>
               </table>
<ul class="gcs-pagination">  
<li><a  href="<%=request.getContextPath()%>/AdminSelectJkAndHk.action?page=${page5.firstPage}">首页</a></li>
<li><a href="AdminSelectJkAndHk.action?page=${page5.prePage}">上一页</a></li>
<c:forEach var="s" begin="1" end="${page5.pages}">  
<li><a class="cur" href="<%=request.getContextPath()%>/AdminSelectJkAndHk.action?page=${s}">${s}</a></li>  
</c:forEach>  
<li><a href="AdminSelectJkAndHk.action?page=${page5.nextPage}">下一页</a></li>
<li><a  href="<%=request.getContextPath()%>/AdminSelectJkAndHk.action?page=${page5.lastPage}">尾页</a></li>  
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
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
			   <input type="text" class="form-control" id="hk_hkr1"  name="hk_hkr1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">申请日期</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="hk_sqrq1"  name="hk_sqrq1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_sickroom" class="col-sm-2 control-label">事由</label>
		    <div class="col-sm-10">
		    <input type="text" class="form-control" id="hk_sy1"  name="hk_sy1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_number" class="col-sm-2 control-label">还款金额</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="hk_hkje1"  name="hk_hkje1" readonly="true">
	        </div>
		  </div>
		  
		                   
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">备注</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="hk_bz1"  name="hk_bz1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批人</label>
		    <div class="col-sm-10">
			   <input type="text" class="form-control" id="hk_spr1"  name="hk_spr1" readonly="true">
			</div>
		  </div>
		  
		  <div class="form-group">
		   <label for="edit_record_section" class="col-sm-2 control-label">审批意见</label>
		    <div class="col-sm-10">
			   <textarea class="form-control" rows="4" id="hk_advice1" name="hk_advice1" placeholder="请输入" readonly="true"></textarea>
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
    
    function tzJk()
    {
    	window.location.href="admin_insert_jk.jsp";
    }
    function AdminSelectOneJk(id) {
		$.ajax({
			type:"get",
			url:"<%=basePath%>AdminSelectOneJk.action",
			data:{"jk_id":id},
			success:function(data) {
				    $("#jk_id1").val(data.jk_id);
					$("#jk_jkr1").val(data.jk_jkr);
					$("#jk_jksy1").val(data.jk_jksy);
					$("#jk_jkje1").val(data.jk_jkje);
					$("#jk_spr1").val(data.jk_spr);
					$("#jk_state1").val(data.jk_state);
					$("#jk_advice1").val(data.jk_advice);
			}
		});
	}
    
    function AdminDeleteOneJk(jk_id) {
    	if(confirm('确实要删除该记录吗?')) {
    		$.post("AdminDeleteOneJk.action",{"jk_id":jk_id},function(data){
    			if(data=="0"){
    				alert("删除成功！");
    			}else{
    				alert("删除失败！");
    			}
    			window.location.reload();
    		});
    	}
    }
    
    function tzHk()
    {
    	window.location.href="admin_insert_hk.jsp";
    }
    
    function AdminSelectOneHk(id) {
		$.ajax({
			type:"get",
			url:"<%=basePath%>AdminSelectOneHk.action",
			data:{"hk_id":id},
			success:function(data) {
				$("#hk_id1").val(data.hk_id);
				$("#hk_hkr1").val(data.hk_hkr);
				$("#hk_sqrq1").val(data.hk_sqrq);
				$("#hk_sy1").val(data.hk_sy);
				$("#hk_hkje1").val(data.hk_hkje);
				$("#hk_bz1").val(data.hk_bz);
				$("#hk_fj1").val(data.hk_fj);
				$("#hk_spr1").val(data.hk_spr);
				$("#hk_advice1").val(data.hk_advice);
			}
		});
	}
    
    function AdminDeleteOneHk(hk_id) {
    	if(confirm('确实要删除该记录吗?')) {
    		$.post("AdminDeleteOneHk.action",{"hk_id":hk_id},function(data){
    			if(data=="0"){
    				alert("删除成功！");
    			}else{
    				alert("删除失败！");
    			}
    			window.location.reload();
    		});
    	}
    }
    
    
    
</script>
</html>