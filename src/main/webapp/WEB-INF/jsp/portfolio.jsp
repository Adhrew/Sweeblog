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


</script>

<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<!-- <script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script> -->
<!---End-smoth-scrolling---->

<script>
			layui.use('layer', function() { //独立版的layer无需执行这一句
				var $ = layui.jquery,
					layer = layui.layer; //独立版的layer无需执行这一句

				var str =
					"<div class='container'>	<div class='row clearfix'>		<div class='col-md-12 column' style='margin:30px'>		<form role='form'>				<div class='form-group'>					 <label for='exampleInputEmail1'>手机号码</label><input type='text' class='form-control' id='exampleInputEmail1' />				</div>				<div class='form-group'>					 <label for='exampleInputPassword1'>密码</label><input type='password' class='form-control' id='exampleInputPassword1' />				</div>			</form>		</div>	</div></div>";
				//触发事件
				var active = {
					notice: function() {
						//示范一个公告层
						layer.open({
							type: 1,
							title: false //不显示标题栏
								,
							closeBtn: false,
							area: '300px;',
							shade: 0.8,
							id: 'LAY_layuipro' //设定一个id，防止重复弹出
								,
							btn: ['登录', '返回'],
							btnAlign: 'c',
							moveType: 1 //拖拽模式，0或者1
								,
							content: str,
							
						});
					}
				}


				$('#layerDemo #layer_one').on('click', function() {
					location.href = "tologin.html";
				});

				$('#layerDemo #layer_two').on('click', function() {
					location.href = "toregister.html";
				});


			});
		</script>
</head>


<script>
		$(document).ready(function() {
			var user_tel = "${sessionScope.userSession.user_tel }";
			var str = "<label class='layui-form-label' style='width:auto'>博客币:"+ "${sessionScope.userSession.user_money }" +"</label>";
			str += "<a class='layui-btn' style='text-decoration:none;float:left;height:23px;line-height:23px;width:40px;margin-top:8px;padding:0px' href='chongzhizhongxin.html'>充值</a>";
			str += "<label class='layui-form-label' style='width:auto'>积分:"+ "${sessionScope.userSession.user_credit }" +"</label>";
			str += "<label class='layui-form-label' style='width:auto'><a href='personal.html' style='text-decoration:none'>"+ "${sessionScope.userSession.user_name }" +"</a></label>";
			str += "<label class='layui-form-label'><a href='zhuxiao.html' style='text-decoration:none;color:#9AC0CD'>注销</a></label>";
			if(user_tel!="")
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

	<div class="container">
		<form class="navbar-form navbar-right" role="search">
			<div class="form-group" style="float: right;clear: both;">
				<input type="text" class="form-control" id="text"/>
			</div>
			<button type="button" class="btn btn-default" style="float:right;" onclick="jj(document.getElementById('text').value)">搜索</button>
		</form>
		<div class="clearfix"></div>
		<br />
		<div id="portfoliolist">
			<div class="portfolio" style="max-width: 300px;" >
				<div class="portfolio-wrapper" style="float:left;">
					<a href="#small-dialog">
						class="b-link-stripe b-animate-go thickbox play-icon popup-with-zoom-anim">
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
			<div class="clearfix" id="clearfix"></div>
			</div>
	        <div id="div1">
           <!--  <div id="small-dialog" class="mfp-hide">
				<div class="image-top">
					<img src="images/img2.jpg" alt="" />
					<p>1111</p>
				</div>
			</div>
			<div id="small-dialog1" class="mfp-hide">
				<div class="image-top">
					<img src="images/img2.jpg" alt="" />
					<p>dadsadasd</p>
				</div>
			</div> -->
           </div>

		
		<!-- Gallery Script Ends -->
		<!-- pop-up-box -->
		<script type="text/javascript" src="js/modernizr.custom.min.js"></script>
		<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
		<!-- <link rel="stylesheet" href="layui/css/layui.css" media="all">
        <script src="layui/layui.js" charset="utf-8"></script> -->
		
		<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
		<!-- //pop-up-box -->

				<script>		
				$(document).ready(function(){
				      console.log(1111);
				      jj();
				     
				});
				
						
			    function jj(key){
			    $.ajaxSetup({async:false});
			    $.getJSON("Neajax",{"key":key} ,function(a) {
				layui.use([ 'laypage', 'layer' ], function() {
					var laypage = layui.laypage;
					var layer = layui.layer;
					console.log(1111);
					console.log(a);
					console.log(a.count);
					var datak =a.count;
						//调用分页
						laypage.render({
							elem : 'demo20',
							count : datak,
							limit : 1,
							jump : function(obj,first) {
								//模拟渲染
								
								$.getJSON("Neajax",{"page":obj.curr,"key":key}, function(data) {
									var str1 = "";
									var str2 = "";
									$.each(data.data,function(i,item){
										console.log(item);
										
					   if(i==0)
					 {
	/* 				    str1+="<a href='#small-dialog' class='b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim'><img class='work-img' src='images/img1.jpg' width='300px' alt=''/>"+"<div class='b-wrapper'><h2 class='b-animate b-from-left b-delay03'><img src='images/icon-eye.png' alt=''/></h2></div>"+"<div class='bottom-header' style='width: auto;'><h5>"+item.blog_title+"</h5></div></a>";  */
				         str1+="<a href='mineblog.html?blog_id="+item.blog_id+"' class='b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim' ><img class='work-img' src='images/img1.jpg' width='300px' alt=''/>"+"<div class='b-wrapper'><h2 class='b-animate b-from-left b-delay03'><img src='images/icon-eye.png' alt=''/></h2></div>"+"<div class='bottom-header' style='width: auto;'><h5>"+item.blog_title+"</h5></div></a>"; 
				        str2+="<div id='small-dialog' class='mfp-hide'><div class='image-top'><img src='images/img2.jpg' alt='' /><p>"+item.blog_text+"</p></div></div>";
			
					}else{
				       /*  str1+="<a href='#small-dialog"+i+"' class='b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim'><img class='work-img' src='images/img1.jpg' width='300px' alt=''/>"+"<div class='b-wrapper'><h2 class='b-animate b-from-left b-delay03'><img src='images/icon-eye.png' alt=''/></h2></div>"+"<div class='bottom-header' style='width: auto;'><h5>"+item.blog_title+"</h5></div></a>";  */
				        str1+="<a href='mineblog.html?blog_id="+item.blog_id+"' class='b-link-stripe b-animate-go  thickbox play-icon popup-with-zoom-anim' ><img class='work-img' src='images/img1.jpg' width='300px' alt=''/>"+"<div class='b-wrapper'><h2 class='b-animate b-from-left b-delay03'><img src='images/icon-eye.png' alt=''/></h2></div>"+"<div class='bottom-header' style='width: auto;'><h5>"+item.blog_title+"</h5></div></a>"; 
				        str2+="<div id='small-dialog"+i+"' class='mfp-hide'><div class='image-top'><img src='images/img2.jpg' alt='' /><p>"+item.blog_text+"</p></div></div>";
					}
									})
			                     $("#div1").html(str2);
			                     $(".portfolio-wrapper").html(str1); 
								})
							}
						});
				});
			})
		
		}
		
		
						
					
				</script>
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
