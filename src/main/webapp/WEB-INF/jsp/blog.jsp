<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>技术区</title>
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="技术区" />
		
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic'
		 rel='stylesheet' type='text/css'>
		 <link rel="stylesheet" href="css/layui.css" type="text/css" media="all">
		<link href='http://fonts.googleapis.com/css?family=Fugaz+One' rel='stylesheet' type='text/css'>
		<link rel="shortcut icon" href="http://www.5imoban.net/favicon.ico" />
		<script src="http://www.5imoban.net/download/jquery/jquery-1.8.3.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		<script type="text/javascript" src="layui.js"></script>
		<script>
			$(function() {
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
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1200);
				});
			});
		</script>
		<!---End-smoth-scrolling------>
		
		<script>
		//一进去页面加载
		$(document).ready(function(){
		      enterTec();
		
		});
		
		
		function enterTec(key){
		  $.ajaxSetup({async:false});
		  $.getJSON("Teagax",{"key":key},function(a){
		         console.log(a);
		         str1="";
		         str2="";
		         for(var i=0;i<a.data.length;i++)
		         {
		          str1+="<div class='blog_posts'><div class='blog_date'><figure><span>"+a.data[i].blog_time[3]+a.data[i].blog_time[4]+"</span>"+a.data[i].blog_time[0]+a.data[i].blog_time[1]+"</figure>"
	              +"</div><div class='blog_desc'><div class='blog_heading'><a href='' target='_blank'>"+a.data[i].blog_title+"</a>"
				  +"<p>发布于"+a.data[i].blog_time+" by <a href='' target='_blank'>"+a.data[i].user_id.user_name+"</a></p></div>"
				  +"<div class='section group example'><div class='col blog_1_of_2'><div class='blog_img'><a href='' target='_blank'><img src='http://www.5imoban.net/uploads/allimg/151026/1-1510261K3450-L.gif' alt='image' class='img-responsive zoom-img'></a>"
				  +"</div></div><div class='col blogdata_1_of_2'><div class='blog_data'><p>"+a.data[i].blog_text+"</p><div class='more'><span><a class='button outline-outward hvr-rectangle-in' href='' target='_blank'>Read More</a></span>"
				  +"</div></div></div></div><div class='clearfix'></div></div><div class='clearfix'></div></div>";   
				  console.log(str1); 
		         }
		         $("#chuan").html(str1);
		  
		  
		  });  
		}
       </script>
	</head>
	<body>
		<!-- header -->
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
						<div class="" id="layerDemo" style="margin-bottom: 0;margin-top: -3px;">
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
				<div class="blog-content-head text-left">
					<h3>提供技术</h3>
				</div>
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group" style="float: right;">
						<input type="text" class="form-control" id="text"/>
					</div> <button type="button" class="btn btn-default" style="float:right;" onclick="enterTec(document.getElementById('text').value)">搜索</button>
				</form>
				<br />
				<div class="section group">
					<div class="blog-grids">
						<div class="cont span_2_of_3">
							<div class="col-md-8 blog-grid" id="chuan">
								<!-- 文章列表 -->
								<div class="blog_posts">
									<div class="blog_date">
										<figure><span>26</span>10月</figure>
									</div>
									<div class="blog_desc">
										<div class="blog_heading">
											<a href="http://www.5imoban.net/cssmoban/qiye/201510261454.html" target="_blank">移动APP响应式网站模板</a>
											<p>发布于2015年10月26日 by <a href="http://www.5imoban.net/" target="_blank">网页模板</a></p>
										</div>
										<div class="section group example">
											<div class="col blog_1_of_2">
												<div class="blog_img">
													<a href="http://www.5imoban.net/cssmoban/qiye/201510261454.html" target="_blank"><img src="http://www.5imoban.net/uploads/allimg/151026/1-1510261K3450-L.gif"
														 alt="image" class="img-responsive zoom-img"></a>
												</div>
											</div>
											<div class="col blogdata_1_of_2">
												<div class="blog_data">
													<p>单页面形式的国外移动端APP应用程序开发公司响应式网站模板。所有的内容都放在首页，点击首页上面的导航栏，自动滚动到对应的栏目。网站底部有一个Google
														地图，由于Google被大陆封禁，所以，打不开正常。可以声请一个百度地图API接口，嵌入百度地图即可。 </p>
													<div class="more">
														<span><a class="button outline-outward hvr-rectangle-in" href="http://www.5imoban.net/cssmoban/qiye/201510261454.html"
															 target="_blank">Read More</a></span>
													</div>
												</div>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
								</div>

							</div>
						</div>
						<div class="col-md-4 blog-grid1">
							<div class="rsidebar span_1_of_3">
								<h3>重点推荐</h3>
								<ul>
									<li><a href="http://www.5imoban.net/plus/search.php?keyword=%E9%9D%99%E6%80%81%E6%A8%A1%E6%9D%BF" target="_blank">静态模板</a></li>
									<li><a href="http://www.5imoban.net/plus/search.php?keyword=bootstrap" target="_blank">bootstrap</a> </li>
									<li><a href="http://www.5imoban.net/jiaocheng/other/2016/0112/1557.html" target="_blank">实用的sublime插件集合</a></li>
									<li><a href="http://www.5imoban.net/cssmoban/qiye/20140822824.html" target="_blank">经典蓝色后台管理系统HTML模板</a></li>
								</ul>
							</div>
						</div>
						<div class="clearfix"></div>

					</div>
				</div>
			</div>
		</div>
		<script>
			layui.use(['laypage', 'layer'], function(){
			  var laypage = layui.laypage;
			  var layer = layui.layer;
			  var data = [
				  '1'
			    ];
			    
			    //调用分页
			    laypage.render({
			      elem: 'demo20'
			      ,count: data.length
			      ,jump: function(obj){
			        //模拟渲染
			        document.getElementById('biuuu_city_list').innerHTML = function(){
			          var arr = []
			          ,thisData = data.concat().splice(obj.curr*obj.limit - obj.limit, obj.limit);
			          layui.each(thisData, function(index, item){
			            arr.push('<li>'+ item +'</li>');
			          });
			          return arr.join('');
			        }();
			      }
			    });
			    
			  });
		</script>
		<div id="demo20" align="center"></div>
		<ul id="biuuu_city_list"></ul> 
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
								<li>
									<p class="label1">合肥市xx路xx号xx大厦</p>
								</li>
							</ul>
							<ul>
								<li><i class="phone"></i></li>
								<li>
									<p class="label1">+86-0551-88888888</p>
								</li>
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
						$().UItoTop({
							easingType: 'easeOutQuart'
						});
					});
				</script>
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
			</div>
		</div>
	</body>
</html>

