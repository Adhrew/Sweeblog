<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>ææ¯åº</title>
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="ææ¯åº" />
		
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
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
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
							<button id="layer_one" data-method="notice" class="layui-btn" style="height: 25px; line-height: 25px; width: 50px; padding: 0;">ç»å½</button>
							<button id="layer_two" data-method="notice" class="layui-btn layui-btn-primary" style="height: 25px; line-height: 25px; width: 50px; padding: 0;">æ³¨å</button>
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
								<li><a href="index.jsp"><span data-hover="é¦é¡µ">é¦é¡µ</span></a></li>
								<li><a href="portfolio.jsp"><span data-hover="éæ±åº">éæ±åº</span></a></li>
								<!--<li><a href="portfolio1.html"><span data-hover="è§£å³æ¹æ¡2">è§£å³æ¹æ¡2</span></a></li>-->
								<li><a href="blog.jsp"><span data-hover="ææ¯åº">ææ¯åº</span></a></li>
								<li><a href="personal.jsp"><span data-hover="ä¸ªäººä¸­å¿">ä¸ªäººä¸­å¿</span></a></li>
								<li><a href="features.jsp"><span data-hover="å³äºæä»¬">å³äºæä»¬</span></a></li>
								<li><a href="contact.jsp"><span data-hover="èç³»æä»¬">èç³»æä»¬</span></a></li>
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
					<h3>æä¾ææ¯</h3>
				</div>
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group" style="float: right;">
						<input type="text" class="form-control" />
					</div> <button type="submit" class="btn btn-default" style="float:right;">æç´¢</button>
				</form>
				<br />
				<div class="section group">
					<div class="blog-grids">
						<div class="cont span_2_of_3">
							<div class="col-md-8 blog-grid">
								<!-- æç« åè¡¨ -->
								<div class="blog_posts">
									<div class="blog_date">
										<figure><span>26</span>10æ</figure>
									</div>
									<div class="blog_desc">
										<div class="blog_heading">
											<a href="http://www.5imoban.net/cssmoban/qiye/201510261454.html" target="_blank">ç§»å¨APPååºå¼ç½ç«æ¨¡æ¿</a>
											<p>åå¸äº2015å¹´10æ26æ¥ by <a href="http://www.5imoban.net/" target="_blank">ç½é¡µæ¨¡æ¿</a></p>
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
													<p>åé¡µé¢å½¢å¼çå½å¤ç§»å¨ç«¯APPåºç¨ç¨åºå¼åå¬å¸ååºå¼ç½ç«æ¨¡æ¿ãææçåå®¹é½æ¾å¨é¦é¡µï¼ç¹å»é¦é¡µä¸é¢çå¯¼èªæ ï¼èªå¨æ»å¨å°å¯¹åºçæ ç®ãç½ç«åºé¨æä¸ä¸ªGoogle
														å°å¾ï¼ç±äºGoogleè¢«å¤§éå°ç¦ï¼æä»¥ï¼æä¸å¼æ­£å¸¸ãå¯ä»¥å£°è¯·ä¸ä¸ªç¾åº¦å°å¾APIæ¥å£ï¼åµå¥ç¾åº¦å°å¾å³å¯ã </p>
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
								<h3>éç¹æ¨è</h3>
								<ul>
									<li><a href="http://www.5imoban.net/plus/search.php?keyword=%E9%9D%99%E6%80%81%E6%A8%A1%E6%9D%BF" target="_blank">éææ¨¡æ¿</a></li>
									<li><a href="http://www.5imoban.net/plus/search.php?keyword=bootstrap" target="_blank">bootstrap</a> </li>
									<li><a href="http://www.5imoban.net/jiaocheng/other/2016/0112/1557.html" target="_blank">å®ç¨çsublimeæä»¶éå</a></li>
									<li><a href="http://www.5imoban.net/cssmoban/qiye/20140822824.html" target="_blank">ç»å¸èè²åå°ç®¡çç³»ç»HTMLæ¨¡æ¿</a></li>
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
			    
			    //è°ç¨åé¡µ
			    laypage.render({
			      elem: 'demo20'
			      ,count: data.length
			      ,jump: function(obj){
			        //æ¨¡ææ¸²æ
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
						<h5>å³äºæä»¬</h5>
						<p>æç±æ¨¡æ¿ç½ç²¾éåç§ç½é¡µæ¨¡æ¿ï¼cssæ¨¡æ¿ï¼ç½é¡µç¹æï¼å¹¿åä»£ç ï¼å¼æºç½ç«æºç ï¼å»ºç«ç´ æï¼ç²¾ç¾ç½ç«æ¬£èµï¼å¨é¨åè´¹ä¸è½½ãå¹¶æä¾åç§å»ºç«æç¨ï¼åå¾å¸®å©æ°æè§£å³å»ºç«å°é¾ãæ¾æ¨¡æ¿ï¼æ¾ç´ æï¼æ¾æç¨ï¼å°±æ¥æç±æ¨¡æ¿ç½ã</p>
						<a href="features.html" class="more">more about us<img src="images/arrow.png"></a>
					</div>
					<div class="col-md-3 contact-grid">
						<h5>èç³»æä»¬</h5>
						<p>æç±æ¨¡æ¿ç½</p>
						<div class="icon2">
							<ul>
								<li><i class="indicate"></i></li>
								<li>
									<p class="label1">åè¥å¸xxè·¯xxå·xxå¤§å¦</p>
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
						<h5>å¸åæ¡ä¾åäº«</h5>
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
						<h5>ç½é¡µæ¨¡æ¿</h5>


						<img src="images/ewm.jpg">
						<p>æ«æäºç»´ç ï¼ææåå¦ï¼</p>

					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		</div>
		<div class="footer-section">
			<div class="container">
				<div class="footer-left">
					<p>æç±æ¨¡æ¿ç½ çæææ çICPå¤13019395å· Copyright Â© 2013 5imoban.net All Rights Reserved.</p>
				</div>
				<div class="bottom-menu">
					<ul>
						<li><a href="index.html"><span data-hover="é¦é¡µ">é¦é¡µ</span></a></li>
						<li><a href="portfolio.html"><span data-hover="è§£å³æ¹æ¡">è§£å³æ¹æ¡</span></a></li>
						<li><a href="portfolio1.html"><span data-hover="è§£å³æ¹æ¡2">è§£å³æ¹æ¡2</span></a></li>
						<li><a href="blog.html"><span data-hover="æç« åè¡¨">æç« åè¡¨</span></a></li>
						<li><a href="features.html"><span data-hover="å³äºæä»¬">å³äºæä»¬</span></a></li>
						<li><a href="contact.html"><span data-hover="èç³»æä»¬">èç³»æä»¬</span></a></li>
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
