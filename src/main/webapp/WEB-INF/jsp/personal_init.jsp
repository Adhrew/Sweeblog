<%@page import="com.clay.tools.Constants"%>
<%@page import="com.clay.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<link rel="stylesheet" href="css/layui.css" type="text/css" media="all">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="个人中心" />
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
		<link href='http://fonts.googleapis.com/css?family=Fugaz+One' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<link rel="shortcut icon" href="http://www.5imoban.net/favicon.ico" />
		<script src="http://www.5imoban.net/download/jquery/jquery-1.8.3.min.js"></script>
		<script src="js/responsiveslides.min.js"></script>
		<title>个人中心</title>
		<script type="text/javascript" src="layui.all.js"></script>
		<script type="text/javascript" src="layui.js"></script>
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script src="js/jquery-2.2.3.min.js"></script>

		<!-- //Jquery -->
		<!-- Jquery -->
		<script src="js/jquery-simple-validator.min.js"></script>
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
							success: function(layero) {
								var btn = layero.find('.layui-layer-btn');
								btn.find('.layui-layer-btn0').attr({
									href: 'http://www.layui.com/',
									target: '_blank'
								});
							}
						});
					}
				}


				$('#layerDemo #layer_one').on('click', function() {
					var othis = $(this),
						method = othis.data('method');
					active[method] ? active[method].call(this, othis) : '';
				});

				$('#layerDemo #layer_two').on('click', function() {
					location.href = "register.html";
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
	<body style="min-width: 700px;">

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

		<div class="container">
			<div class="layui-row" style="height:400px;" id="lef">
				<div class="layui-col-xs3" style="max-width: 300px;height: 100%;">
					<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="height:100%;width: 100%; margin-right: 10px;">
						<li class="layui-nav-item">
							<a href="personal.html" style="text-decoration: none;">首页</a>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a href="javascript:;" style="text-decoration: none;">交易</a>
							<dl class="layui-nav-child">
								<dd><a class="layui-this" href="personal_init.html" style="text-decoration: none;">发起交易</a></dd>
								<dd><a href="personal_acc.html" style="text-decoration: none;">接收交易</a></dd>
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;" style="text-decoration: none;">个人订单</a>
							<dl class="layui-nav-child">
								<dd><a href="personal_record.html?status=1" style="text-decoration: none;">发起的订单</a></dd>
								<dd><a href="personal_record.html?status=2" style="text-decoration: none;">接受的订单</a></dd>
							</dl>
						</li>
						<li class="layui-nav-item"><a href="personal_blog.html" style="text-decoration: none;">博客</a></li>
						<li class="layui-nav-item">
							<a href="personal_message.html" style="text-decoration: none;">消息</a><div align="right" style="margin-right: 45px;" id="mes2"><span id="mes" class="layui-badge"></span></div>
						</li>
					</ul>
				</div>
				<div class="layui-col-xs9" id="rig" >
					<div style="padding: 20px; height:400px; background-color: #F2F2F2;">
						<div class="layui-card">
							<div class="layui-card-header">发起交易</div>
							<div class="layui-card-body">
								<form class="layui-form" action="personal_init_so.html">
									
									<div class="layui-form-item" style="max-width: 400px;">
									<label class="layui-form-label">博客id</label>
									<div class="layui-input-block">
									<script>
									  	$.getJSON("personal_init_myblog.html",{userid:${sessionScope.userSession.user_id}},function(data){
									  		var str = "<option value=''>请选择一个博客id</option>";
									  		$.each(data.data,function(i,item){
									  			str +="<option value="+ item.blog_id +">"+ item.blog_id +"</option>"
									  		});
									  		$("#blog").html(str);
									  	})
									</script>
										<select name="blogid" id="blog">
										  
										</select>    
									</div>
									</div>
									<div class="layui-form-item" style="max-width: 400px;">
										<label class="layui-form-label">客户id</label>
										<div class="layui-input-block">
											<input type="text" name="userid" required lay-verify="required" placeholder="请输入博客id" autocomplete="off" class="layui-input">
										</div>
									</div>
									<div class="layui-form-item" style="max-width: 400px;">
										<label class="layui-form-label">金额</label>
										<div class="layui-input-block">
											<input type="text" name="money" required lay-verify="required" placeholder="请输入金额" autocomplete="off" class="layui-input">
										</div>
									</div>
									<div class="layui-form-item">
										<div class="layui-input-block">
											<button class="layui-btn" lay-submit lay-filter="formDemo">发起</button>
											<button type="reset" class="layui-btn layui-btn-primary">重置</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		

		<script>
			$(document).ready(function() {
			$.getJSON("message_init.action?userid="+${sessionScope.userSession.user_id }, function(datak) {
				if(datak.length==0){$("#mes2").html("");return;}
				else
					{	
						if(datak.length>99)
							$("#mes").html("99+");
						else
							$("#mes").html(datak.length);
					}
				})
			})
		
			//Demo
			layui.use('form', function() {
				var form = layui.form;

				//监听提交
				form.on('submit(formDemo)', function(data) {
					
					window.location.href="personal_init_so.html?money="+data.field.money+"&userid="+data.field.userid+"&blogid="+data.field.blogid;
					return false;
				});
			});
		</script>

		<script>
			layui.use('element', function() {
				var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

				//监听导航点击
			});
		</script>

		<div class="footer-section">
			<div class="container">
				<div class="contact-grids">
					<div class="col-md-3 contact-grid">
						<h5>关于我们</h5>
						<p></p>
						<a href="features.html" class="more">more about us<img src="images/arrow.png"></a>
					</div>
					<div class="col-md-3 contact-grid">
						<h5>联系我们</h5>
						<p>Sweeblog</p>
						<div class="icon2">
							<ul>
								<li><i class="indicate"></i></li>
								<li>
									<p class="label1">厦门市软件园二期2号楼</p>
								</li>
							</ul>
							<ul>
								<li><i class="phone"></i></li>
								<li>
									<p class="label1">13290982796</p>
								</li>
							</ul>
							<ul>
								<li><i class="message"></i></li>
								<li><a href="mailto:835036906@qq.com">835036906@qq.com</a></li>
							</ul>
						</div>
					</div>

					<div class="col-md-3 contact-grid">
						<h5>App</h5>


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
					<p>Sweeblog 版权所有 皖ICP备13019395号 Copyright © 2013 5imoban.net All Rights Reserved.</p>
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

