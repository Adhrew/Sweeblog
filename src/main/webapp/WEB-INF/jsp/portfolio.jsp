<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
<title>响应式html静态企业网站模板解决方案页面 - 我爱模板网 www.5imoban.net</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="解决方案" />
<script type="application/x-javascript">
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<link
	href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/layui.css" type="text/css" media="all">
<link href='http://fonts.googleapis.com/css?family=Fugaz+One'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<link rel="shortcut icon" href="http://www.5imoban.net/favicon.ico" />
<script src="http://www.5imoban.net/download/jquery/jquery-1.8.3.min.js"></script>
<script src="js/responsiveslides.min.js"></script>
<script type="text/javascript" src="layui.js"></script>
<script>
	$(function() {
		$("#slider").responsiveSlides({
			auto : true,
			nav : true,
			speed : 500,
			namespace : "callbacks",
			pager : true,
		});
	});

	//一进去加载的需求博客
	$(document).ready(function() {
		enterajax();


	});

	//加载需求的博客函数
	function enterajax() {
		$.ajaxSetup({async:false});
		$.getJSON("Neajax", function(a) {
			console.log(a);
			var str1 = "";
			var str2 = "";
			for (var i = 0; i < a.data.length; i++) {
					if(i==0)
					{
					str1+="<a href='#small-dialog"+"' class='b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim'><img class='work-img' src='images/img1.jpg' width='300px' alt=''/>"+"<div class='b-wrapper'><h2 class='b-animate b-from-left b-delay03'><img src='images/icon-eye.png' alt=''/></h2></div>"+"<div class='bottom-header' style='width: auto;'><h5>"+a.data[i].blog_title+"</h5></div></a>"; 
				        str2+="<div id='small-dialog"+"' class='mfp-hide'><div class='image-top'><img src='images/img2.jpg' alt='' /><p>"+a.data[i].blog_text+"</p></div></div>";
			
					}else{
				        str1+="<a href='#small-dialog"+i+"' class='b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim'><img class='work-img' src='images/img1.jpg' width='300px' alt=''/>"+"<div class='b-wrapper'><h2 class='b-animate b-from-left b-delay03'><img src='images/icon-eye.png' alt=''/></h2></div>"+"<div class='bottom-header' style='width: auto;'><h5>"+a.data[i].blog_title+"</h5></div></a>"; 
				        str2+="<div id='small-dialog"+i+"' class='mfp-hide'><div class='image-top'><img src='images/img2.jpg' alt='' /><p>"+a.data[i].blog_text+"</p></div></div>";
					}
			}
			console.log(str1);
			console.log(str2);
			    $(".portfolio-wrapper").html(str1); 
			    $(".needtext").html(str2);


		});

	}
</script>

<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
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
					<div class="" id="layerDemo"
						style="margin-bottom: 0;margin-top: -3px;">
						<button id="layer_one" data-method="notice" class="layui-btn"
							style="height: 25px; line-height: 25px; width: 50px; padding: 0;">登录</button>
						<button id="layer_two" data-method="notice"
							class="layui-btn layui-btn-primary"
							style="height: 25px; line-height: 25px; width: 50px; padding: 0;">注册</button>
					</div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
		<div class="container">
			<div class="header-bottom" style="margin-bottom: -35px;">
				<div class="logo" style="margin-top: -25px;">
					<h1>
						<a href="index.html"><img src="images/logo.png" alt=""
							style="z-index: -100;position: relative;" /> <font
							style="margin-left: -25px;">Sweeblog</font> </a>
					</h1>
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

	<div class="container">
		<form class="navbar-form navbar-right" role="search">
			<div class="form-group" style="float: right;clear: both;">
				<input type="text" class="form-control" />
			</div>
			<button type="submit" class="btn btn-default" style="float:right;">搜索</button>
		</form>
		<div class="clearfix"></div>
		<br />
		<div id="portfoliolist">
			<div class="portfolio" style="max-width: 300px;">
				<div class="portfolio-wrapper">
					<a href="#small-dialog0"
						class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
						<img class="work-img" src="images/img1.jpg" width="300px" alt="" />
						<div class="b-wrapper">
							<h2 class="b-animate b-from-left b-delay03 ">
								<img src="images/icon-eye.png" alt="" />
							</h2>
						</div>
						<div class="bottom-header" style="width: auto;">
							<h5>某机电行业电商平台即将开放分享sadsadsadsad</h5>
						</div>
					</a> <a href="#small-dialog1"
						class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
						<img class="work-img" src="images/img1.jpg" width="300px" alt="" />
						<div class="b-wrapper">
							<h2 class="b-animate b-from-left b-delay03 ">
								<img src="images/icon-eye.png" alt="" />
							</h2>
						</div>
						<div class="bottom-header" style="width: auto;">
							<h5>dsadasdassd</h5>
						</div>
					</a>
				</div>
			</div>


			<!-- <div class="portfolio-wrapper">
						<a href="#small-dialog" class="b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim">
							<img class="work-img" src="images/img1.jpg" width="300px" alt="" />
							<div class="b-wrapper">
								<h2 class="b-animate b-from-left b-delay03 "><img src="images/icon-eye.png" alt="" /></h2>
							</div>
						</a>
					</div>
					<div class="bottom-header" style="width: auto;">
						<h5>某机电行业电商平台即将开放分享</h5>	
					</div>  -->
			<div class="clearfix"></div>
		</div>


		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop : $(this.hash).offset().top
					}, 1200);
				});
			});
		</script>
		<!-- Script for gallery Here -->
		<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
		<script type="text/javascript">
			$(function() {
		
				var filterList = {
					init : function() {
		
						// MixItUp plugin
						// http://mixitup.io
						$('#portfoliolist').mixitup({
							targetSelector : '.portfolio',
							filterSelector : '.filter',
							effects : [ 'fade' ],
							easing : 'snap',
							// call the hover effect
							onMixEnd : filterList.hoverEffect()
						});
		
					},
		
					hoverEffect : function() {
		
						// Simple parallax effect
						$('#portfoliolist .portfolio').hover(
							function() {
								$(this).find('.label').stop().animate({
									bottom : 0
								}, 200, 'easeOutQuad');
								$(this).find('img').stop().animate({
									top : -30
								}, 500, 'easeOutQuad');
							},
							function() {
								$(this).find('.label').stop().animate({
									bottom : -40
								}, 200, 'easeInQuad');
								$(this).find('img').stop().animate({
									top : 0
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
		<link href="css/popuo-box.css" rel="stylesheet" type="text/css"
			media="all" />
		<link rel="stylesheet" href="layui/css/layui.css" media="all">
        <script src="layui/layui.js" charset="utf-8"></script>
		
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
		<!-- //pop-up-box -->
		<div class="needtext">
			<div id="small-dialog" class="mfp-hide">
				<div class="image-top">
					<img src="images/img2.jpg" alt="" />
					<p>
					</p>
				</div>
			</div>
			<div id="small-dialog1" class="mfp-hide">
				<div class="image-top">
					<img src="images/img2.jpg" alt="" />
					<p>dadsadasd</p>
				</div>
			</div>
		</div>

				<script>
				/* 	layui.use([ 'laypage', 'layer' ], function() {
						var laypage = layui.laypage;
						var layer = layui.layer;
						var data = [
							'1'
						];
				
						//调用分页
						laypage.render({
							elem : 'demo20',
							count : data.length,
							jump : function(obj) {
								//模拟渲染
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
				
					}); */
					
					layui.use(['laypage', 'layer'], function(){
                    var laypage = layui.laypage
                    ,layer = layui.layer;

                    //完整功能
                     laypage.render({
                       elem: 'demo20'
                      ,count: ${pd.count},
                       curr:${pd.page}
                       ,limit:${pd.size}
                       ,layout: ['count', 'prev', 'page','limit','next', 'skip']
                       ,jump: function(obj,first){
                       // console.log(obj);
                       // console.log(first);
                       //首次不执行
                       if(!first){
                      //跳页的实现
                       //uc?op=queryByPage&page=1&pageSize=10
    	                location.href="Neajax?page="+obj.curr+"&pageSize="+obj.limit;
      }
    }
  });
 
});
					
				</script>
				<div id="demo20" align="center"></div>
				<ul id="biuuu_city_list"></ul>

				<script>
					$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type : 'inline',
							fixedContentPos : false,
							fixedBgPos : true,
							overflowY : 'auto',
							closeBtnInside : true,
							preloader : false,
							midClick : true,
							removalDelay : 300,
							mainClass : 'my-mfp-zoom-in'
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
						<h5>关于我们</h5>
						<p>我爱模板网精选各种网页模板，css模板，网页特效，广告代码，开源网站源码，建站素材，精美网站欣赏，全部免费下载。并提供各种建站教程，力图帮助新手解决建站困难。找模板，找素材，找教程，就来我爱模板网。</p>
						<a href="features.html" class="more">more about us<img
							src="images/arrow.png"></a>
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
				<p>我爱模板网 版权所有 皖ICP备13019395号 Copyright © 2013 5imoban.net All
					Rights Reserved.</p>
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
						easingType : 'easeOutQuart'
					});
				});
			</script>
			<a href="#" id="toTop" style="display: block;"> <span
				id="toTopHover" style="opacity: 1;"> </span></a>
		</div>
	</div>
</body>
</html>
