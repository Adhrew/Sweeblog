<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
	<head>
		<title>ååºå¼htmléæä¼ä¸ç½ç«æ¨¡æ¿è§£å³æ¹æ¡é¡µé¢ - æç±æ¨¡æ¿ç½ www.5imoban.net</title>
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="è§£å³æ¹æ¡" />
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
		<!---End-smoth-scrolling---->

	</head>



	<body>
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

		<div class="container">
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group" style="float: right;clear: both;">
					<input type="text" class="form-control" />
				</div> <button type="submit" class="btn btn-default" style="float:right;">æç´¢</button>
			</form>
			<div class="clearfix"></div>
			<br />
			<div id="portfoliolist">
				<div class="portfolio" style="max-width: 300px;">
					<div class="portfolio-wrapper">
						<a href="#small-dialog" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
							<img class="work-img" src="images/img1.jpg" width="300px" alt="" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left b-delay03 "><img src="images/icon-eye.png" alt="" /></h2>
							</div>
						</a>
					</div>
					<div class="bottom-header" style="width: auto;">
						<h5>ææºçµè¡ä¸çµåå¹³å°å³å°å¼æ¾åäº«</h5>
						<!---<p>æºçµè¡ä¸</p>---->
					</div>
				</div>
				
				<!-------cs---->
				<div class="clearfix"></div>
			</div>


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
			<!-- Script for gallery Here -->
			<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
			<script type="text/javascript">
				$(function() {

					var filterList = {

						init: function() {

							// MixItUp plugin
							// http://mixitup.io
							$('#portfoliolist').mixitup({
								targetSelector: '.portfolio',
								filterSelector: '.filter',
								effects: ['fade'],
								easing: 'snap',
								// call the hover effect
								onMixEnd: filterList.hoverEffect()
							});

						},

						hoverEffect: function() {

							// Simple parallax effect
							$('#portfoliolist .portfolio').hover(
								function() {
									$(this).find('.label').stop().animate({
										bottom: 0
									}, 200, 'easeOutQuad');
									$(this).find('img').stop().animate({
										top: -30
									}, 500, 'easeOutQuad');
								},
								function() {
									$(this).find('.label').stop().animate({
										bottom: -40
									}, 200, 'easeInQuad');
									$(this).find('img').stop().animate({
										top: 0
									}, 300, 'easeOutQuad');
								}
							);

						}

					};

					// Run the show!
					filterList.init();


				});
			</script>
			<!-- Gallery Script Ends -->
			<!-- pop-up-box -->
			<script type="text/javascript" src="js/modernizr.custom.min.js"></script>
			<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
			<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!-- //pop-up-box -->
			<div id="small-dialog" class="mfp-hide">
				<div class="image-top">
					<img src="images/img1.jpg" alt="" />
					<p>ææºçµè¡ä¸å¬å¸ï¼ä»äºæºçµä¼ ç»è¡ä¸å åå¹´ï¼åå·²è½¬åäºèç½ï¼å©åä¼ä¸åæ¬¡åå±. </p>
				</div>
			</div>
			
			<!--
				<div id="small-dialog1" class="mfp-hide">
					<div class="image-top">
						<img src="images/img2.jpg" alt="" />
						<p>ææºçµè¡ä¸å¬å¸ï¼ä»äºæºçµä¼ ç»è¡ä¸å åå¹´ï¼åå·²è½¬åäºèç½ï¼å©åä¼ä¸åæ¬¡åå±. </p>
					</div>
				</div>
			 -->
			
			<script>
				layui.use(['laypage', 'layer'], function() {
					var laypage = layui.laypage;
					var layer = layui.layer;
					var data = [
						'1'
					];

					//è°ç¨åé¡µ
					laypage.render({
						elem: 'demo20',
						count: data.length,
						jump: function(obj) {
							//æ¨¡ææ¸²æ
							document.getElementById('biuuu_city_list').innerHTML = function() {
								var arr = [],
									thisData = data.concat().splice(obj.curr * obj.limit - obj.limit, obj.limit);
								layui.each(thisData, function(index, item) {
									arr.push('<li>' + item + '</li>');
								});
								return arr.join('');
							}();
						}
					});

				});
			</script>
			<div id="demo20" align="center"></div>
			<ul id="biuuu_city_list"></ul>

			<script>
				$(document).ready(function() {
					$('.popup-with-zoom-anim').magnificPopup({
						type: 'inline',
						fixedContentPos: false,
						fixedBgPos: true,
						overflowY: 'auto',
						closeBtnInside: true,
						preloader: false,
						midClick: true,
						removalDelay: 300,
						mainClass: 'my-mfp-zoom-in'
					});

				});
			</script>
			<!-- Work Ends Here -->




		</div>
		</div>

		<div class="contact-section">
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
