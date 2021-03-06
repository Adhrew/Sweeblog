<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="zh" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="keywords" content="博主页" />
	<title>个人博客页</title>	
	<link rel="stylesheet" href="mineblogcss/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="mineblogcss/style.css"> <!-- Resource style -->
	<link rel="shortcut icon" href="http://www.5imoban.net/favicon.ico" />
	<script src="js/modernizr.js"></script> <!-- Modernizr -->
	<!--[if IE]>
		<script src="http://apps.bdimg.com/libs/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
	 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
  <link rel="shortcut icon" href="http://www.5imoban.net/favicon.ico" />
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
</head>
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
						style="margin-bottom: 0;margin-top: -8px;">
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

	<div class="cd-articles">
		<article>
			<header>
				<h1>${requestScope.title }</h1>
			</header>
		      <p>${requestScope.text}</p>
			
			

		<aside class="cd-read-more">
			<ul>
				<li>
					<a href="">
					    <em>${requestScope.title}</em>
						<b>博主  by ${requestScope.name}</b>
						<svg x="0px" y="0px" width="36px" height="36px" viewBox="0 0 36 36"><circle fill="none" stroke-width="2" cx="18" cy="18" r="16" stroke-dasharray="100 100" stroke-dashoffset="100" transform="rotate(-90 18 18)"></circle></svg>
					</a>
				</li>

			<!-- 	<li>
					<a href="how-star-wars-brought-kim-and-kanye.html">
						<em>How ‘Star Wars’ Brought Kim and Kanye</em>
						<b>by J. Morrison</b>
						<svg x="0px" y="0px" width="36px" height="36px" viewBox="0 0 36 36"><circle fill="none" stroke-width="2" cx="18" cy="18" r="16" stroke-dasharray="100 100" stroke-dashoffset="100" transform="rotate(-90 18 18)"></circle></svg>
					</a>
				</li>

				<li>
					<a href="how-audiences-reacted-to-the-star-wars.html">
						<em>How Audiences Reacted to the Star Wars</em>
						<b>by J. Morrison</b>
						<svg x="0px" y="0px" width="36px" height="36px" viewBox="0 0 36 36"><circle fill="none" stroke-width="2" cx="18" cy="18" r="16" stroke-dasharray="100 100" stroke-dashoffset="100" transform="rotate(-90 18 18)"></circle></svg>
					</a>
				</li>

				<li>
					<a href="the-ultimate-star-wars-dictionary.html">
						<em>The Ultimate Star Wars Dictionary</em>
						<b>by J. Morrison</b>
						<svg x="0px" y="0px" width="36px" height="36px" viewBox="0 0 36 36"><circle fill="none" stroke-width="2" cx="18" cy="18" r="16" stroke-dasharray="100 100" stroke-dashoffset="100" transform="rotate(-90 18 18)"></circle></svg>
					</a>
				</li> -->
			</ul>
		</aside> <!-- .cd-read-more -->
	</div> <!-- .cd-articles -->

	
	<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js" type="text/javascript"></script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->
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