<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>响应式html静态企业网站模板 - 我爱模板网 www.5imoban.net</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="联系我们" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Fugaz+One' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link rel="shortcut icon" href="http://www.5imoban.net/favicon.ico" />
<script src="http://www.5imoban.net/download/jquery/jquery-1.8.3.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script type="text/javascript" src="layui.js"></script>
<link rel="stylesheet" href="css/layui.css" type="text/css" media="all">

<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
	
  </script>

<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---End-smoth-scrolling------>

</head>
<body>
<!-- header-->
<script>
		$(document).ready(function() {
			var user_tel = "${sessionScope.userSession.user_tel }";
			var str = "<label class='layui-form-label' style='width:auto'>博客币:"+ "${sessionScope.userSession.user_money }" +"</label>";
			str += "<a class='layui-btn' style='text-decoration:none;float:left;height:23px;line-height:23px;width:40px;margin-top:8px;padding:0px' href='chongzhizhongxin.html'>充值</a>";
			str += "<label class='layui-form-label'>积分:"+ "${sessionScope.userSession.user_credit }" +"</label>";
			str += "<label class='layui-form-label'><a href='personal.html' style='text-decoration:none'>"+ "${sessionScope.userSession.user_name }" +"</a></label>";
			str += "<label class='layui-form-label'><a href='zhuxiao.html' style='text-decoration:none;color:#9AC0CD'>注销</a></label>";
			if(user_tel!=null)
				$("#layerDemo").html(str);
			
		})
	</script>
<div class="header" id="home">
			<div class="header-top">
				<div class="container">
					<div class="icon">
						<ul>
							<li><i class="message"></i></li>
							<li><a href="mailto:example@mail.com">835036906@qq.com</a></li>
							<li><i class="phone"></i></li>
							<li>
								<p>13290982796</p>
							</li>
						</ul>
					</div>
					<div class="social-icons">
						<div class="" id="layerDemo" style="margin-bottom: 0;margin-top: -8px;">
							<button id="layer_one" data-method="notice" class="layui-btn" style="height: 25px; line-height: 25px; width: 50px; padding: 0;">登录</button>
							<button id="layer_two" data-method="notice" class="layui-btn layui-btn-primary" style="height: 25px; line-height: 25px; width: 50px; padding: 0;">注册</button>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<div class="container">
				<div class="header-bottom" style="margin-bottom: -35px;">
					<div class="logo" style="margin-top: -25px;">
						<h1><a href="index.html"><img src="images/logo.png" alt="" style="z-index: -100;position: relative;" />
								<font style="margin-left: -25px;">Sweeblog</font>
							</a></h1>
					</div>
					<div class="top-menu">
						<span class="menu"><img src="images/nav-icon.png" alt="" /></span>
						<ul>
							<nav class="cl-effect-5">
								<li><a href="index.html"><span data-hover="首页">首页</span></a></li>
								<li><a href="portfolio.html"><span data-hover="需求区">需求区</span></a></li>
								<!--<li><a href="portfolio1.html"><span data-hover="解决方案2">解决方案2</span></a></li>-->
								<li><a href="blog.html"><span data-hover="技术区">技术区</span></a></li>
								<li><a href="personal.html"><span data-hover="个人中心">个人中心</span></a></li>
								<li><a href="features.html"><span data-hover="关于我们">关于我们</span></a></li>
								<li><a href="contact.html"><span data-hover="联系我们">联系我们</span></a></li>
							</nav>
						</ul>
						<div class="clearfix"></div>
					</div>
					<script>
						$("span.menu").click(function() {
							$(".top-menu ul").slideToggle("slow", function() {});
						});
					</script>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
			<!-- content-section-starts -->
			<div class="blog-content">
      <div class="container">
        <div class="wrapper">
	       <div class="contact">
	       		<h3>联系我们</h3>
		     <div class="section group">				
				<div class="col span_1_of_2">
					<div class="contact_info">
			    	 		<div class="contact-map">
<!---地图开始----->    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
<meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
<title>百度地图API自定义地图</title>
<!--引用百度地图API-->
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
</head>

<body>
  <!--百度地图容器-->
  <div style="width:697px;height:178px;border:#ccc solid 1px;" id="dituContent"></div>
</body>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(117,31);//定义一个中心点坐标
        map.centerAndZoom(point,17);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"多元速网络科技有限公司",content:"TEL：0551-65118915",point:"117|31",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
</html>
<!---地图结束----->  
                                
                                <br><small><a href="#" style="color: #C9C9C9;text-align:left;font-size:13px"> </a></small>
					   		</div>
      				</div>
      			<div class="company_address">
				     	<h2>公司地址 </h2>
						<p>合肥市xx路xx号xx大厦</p>
				   		<p>Phone:+86-0551-88888888</p>
				 	 	<p>Email: <a href="mailto:admin@admin.com">admin@admin.com</a></p>
				   		<p>Follow on: <a href="#">Facebook</a> , <a href="#">Twitter</a></p>
				   </div>
				   <div class="clearfix"></div>
				</div>				
				<div class="col span_2_of_4"></div>
  				</div>		
  			<div class="clearfix"></div>
			</div>
	    </div>
	</div>
</div>
</div>

	 <!-- content-section-ends -->
			<div class="footer-section">
					<div class="container">
						<div class="contact-grids">
							<div class="col-md-3 contact-grid">
									<h5>关于我们</h5>
									<p>我爱模板网精选各种网页模板，css模板，网页特效，广告代码，开源网站源码，建站素材，精美网站欣赏，全部免费下载。并提供各种建站教程，力图帮助新手解决建站困难。找模板，找素材，找教程，就来我爱模板网。</p>
									<a href="features.html" class="more">more about us<img src="images/arrow.png"></a>
								</div>
								<div class="col-md-3 contact-grid">
									<h5>联系我们</h5>
										<p>我爱模板网</p>
										<div class="icon2">
											<ul>
												<li><i class="indicate"></i></li>
													<li><p class="label1">合肥市xx路xx号xx大厦</p></li>
													</ul>
														<ul>
														<li><i class="phone"></i></li>
															<li><p class="label1">+86-0551-88888888</p></li>
																</ul>
																<ul>
																<li><i class="message"></i></li>
																	<li><a href="mailto:admin@admin.com">admin@admin.com</a></li>
																	</ul>
															</div>
								</div>
								<div class="col-md-3 contact-grid">
									<h5>典型案例分享</h5>
									<div class="cont">
										<div class="contact-leftgrid">
										<div class="img-grid1">
										<img src="images/pic7.jpg">
										</div>
											<div class="img-grid2">
										<img src="images/pic8.jpg">
										</div>
										<div class="clearfix"></div>
										</div>
										
										<div class="contact-rightgrid">
										<div class="img-grid3">
										<img src="images/pic9.jpg">
										</div>
											<div class="img-grid4">
										<img src="images/pic10.jpg">
										</div>
										<div class="clearfix"></div>
										</div>
										</div>
										</div>
								<div class="col-md-3 contact-grid">
									<h5>网页模板</h5>
										
											
											<img src="images/ewm.jpg">
                                            <p>扫描二维码，有惊喜哦！</p>

											</div>
									</div>
									<div class="clearfix"></div>
							</div>
						</div>
				</div>
				
				<div class="footer-section">
					<div class="container">
						<div class="footer-left">
							<p>我爱模板网 版权所有 皖ICP备13019395号 Copyright © 2013 5imoban.net All Rights Reserved.</p>
						</div>
							<div class="bottom-menu">
								<ul>
									<li><a href="index.html"><span data-hover="首页">首页</span></a></li>
									<li><a href="portfolio.html"><span data-hover="解决方案">解决方案</span></a></li>
									<li><a href="portfolio1.html"><span data-hover="解决方案2">解决方案2</span></a></li>
									<li><a href="blog.html"><span data-hover="文章列表">文章列表</span></a></li> 
									<li><a href="features.html"><span data-hover="关于我们">关于我们</span></a></li>
									<li><a href="contact.html"><span data-hover="联系我们">联系我们</span></a></li>
								</ul>
							</div>
							<div class="clearfix"></div>
							<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							$().UItoTop({ easingType: 'easeOutQuart' });
						});
					</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>				
				</div>
</body>
</html>