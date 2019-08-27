<%@page import="com.clay.entity.User"%>
<%@page import="com.clay.tools.Constants"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
			str += "<label class='layui-form-label'>积分:"+ "${sessionScope.userSession.user_credit }" +"</label>";
			str += "<label class='layui-form-label'><a href='personal.html' style='text-decoration:none'>"+ "${sessionScope.userSession.user_name }" +"</a></label>";
			str += "<label class='layui-form-label'><a href='zhuxiao.html' style='text-decoration:none;color:#9AC0CD'>注销</a></label>";
			if(user_tel!=null)
				$("#layerDemo").html(str);
			
		})
	</script>

	<body style="min-width: 800px;">

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


		<div class="container" style="height: 100%;" id="c">
			<div class="layui-row" style="height:1200px;" id="lef">
				<div class="layui-col-xs3" style="max-width: 300px;height: 100%;">
					<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="height:100%;width: 100%; margin-right: 10px;">
						<li class="layui-nav-item">
							<a href="personal.html" style="text-decoration: none;">首页</a>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;" style="text-decoration: none;">交易</a>
							<dl class="layui-nav-child">
								<dd><a href="personal_init.html" style="text-decoration: none;">发起交易</a></dd>
								<dd><a href="personal_acc.html" class="" style="text-decoration: none;">接收交易</a></dd>
							</dl>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;" style="text-decoration: none;">订单</a>
							<dl class="layui-nav-child">
								<dd><a id="fq" class="" href="personal_record.html?status=1" style="text-decoration: none;">发起的交易</a></dd>
								<dd><a id="js" class="" href="personal_record.html?status=2" style="text-decoration: none;">接受的交易</a></dd>
							</dl>
						</li>
						<li class="layui-nav-item"><a href="personal_blog.html" style="text-decoration: none;">博客</a></li>
						<li class="layui-nav-item layui-this">
							<a href="personal.html" style="text-decoration: none;">消息</a><div align="right" style="margin-right: 35px;"><span class="layui-badge">1</span></div>
						</li>
					</ul>
				</div>
				<div class="layui-col-xs9" id="rig" style="">
					<div style="padding: 20px; background-color: #F2F2F2;height: 1200px;" id="my_data">
						<div class="layui-card">
							<div class="layui-card-header">消息</div>
							<div class="layui-card-body">
								<div class="layui-form-item" id="tabledata">
								</div>
							</div>
						</div>
					</div>
					<div id="demo20" align="center" style="margin-top:-60px"></div>
				</div>
			</div>
		</div>

		<script>
		$(document).ready(function() {
			$.get("acc_init.action?userid="+${sessionScope.userSession.user_id }, function(datak) {
				layui.use([ 'laypage', 'layer' ], function() {
					var laypage = layui.laypage;
					var layer = layui.layer;
					console.log(datak)
					if(datak==0){
						$("#lef").css("height","350px");
						$("#my_data").css("height","350px");
						$("#tabledata").html("<div align='center'><label class='layui-form-label' style='width:auto;'>暂未有交易记录</label></div>");
						return;
					}
					if (datak >= 3)
						//调用分页
						laypage.render({
							elem : 'demo20',
							count : datak,
							limit : 3,
							jump : function(obj,first) {
								//模拟渲染
								if((3*obj.curr)>datak){
									$("#lef").css("height",(datak-(3*(obj.curr-1)))*400+"px");
									$("#my_data").css("height",(datak-(3*(obj.curr-1)))*400+"px");
								}
								else{
									$("#lef").css("height","1200px");
									$("#my_data").css("height","1200px");
								}
								$.getJSON("acc_page.action?curr="+ obj.curr+"&userid="+${sessionScope.userSession.user_id }, function(data) {
									var str = "";
									$.each(data.data,function(i,item){
										console.log(item);
										str+="<div class='layui-card'><div class='layui-card-header'>接收交易</div><div class='layui-card-body'><div class='layui-form-item' id='tabledata'><div class='col-md-12 column'><table class='table'><thead><tr><th>发起人姓名</th><th>博客名</th><th>金额</th><th>发起时间</th></tr></thead><tbody><tr><td>"
										str+=item.blog_id.user_id.user_name + "</td><td>";
										str+=item.blog_id.blog_title + "</td><td>";
										str+=item.record_money + "</td><td>";
										str+=item.record_starttime + "</td></tr><tr><td>";
										str+="</td></tr></tbody></table></div></div></div></div>";
									})
									$("#my_data").html(str);
								})
							}
						});
					else{
						$("#lef").css("height",datak*400+"px");
						$("#my_data").css("height",datak*400+"px");
						$.getJSON("acc_page.action?curr=1&userid="+${sessionScope.userSession.user_id }, function(data) {
							var str = "";
							$.each(data.data,function(i,item){
							console.log(item);
							str+="<div class='layui-card'><div class='layui-card-header'>接收交易</div><div class='layui-card-body'><div class='layui-form-item' id='tabledata'><div class='col-md-12 column'><table class='table'><thead><tr><th>发起人姓名</th><th>博客名</th><th>金额</th><th>发起时间</th></tr></thead><tbody><tr><td>"
							str+=item.blog_id.user_id.user_name + "</td><td>";
							str+=item.blog_id.blog_title + "</td><td>";
							str+=item.record_money + "</td><td>";
							str+=item.record_starttime + "</td></tr><tr><td>";
							str+="</td></tr></tbody></table></div></div></div></div>";
							})
							$("#my_data").html(str);
						})
					}
				});
			})
		})

	</script>

		<script>
			//Demo
			layui.use('form', function() {
				var form = layui.form;

				//监听提交
				form.on('submit(formDemo)', function(data) {
					layer.msg(JSON.stringify(data.field));
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
				<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
			</div>
		</div>
	</body>



</html>


