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
		<meta name="keywords" content="ä¸ªäººä¸­å¿" />
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
		<title>ä¸ªäººä¸­å¿</title>
		<script type="text/javascript" src="layui.all.js"></script>
		<script type="text/javascript" src="layui.js"></script>
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script src="js/jquery-2.2.3.min.js"></script>

		<!-- //Jquery -->
		<!-- Jquery -->
		<script src="js/jquery-simple-validator.min.js"></script>
		<script>
			layui.use('layer', function() { //ç¬ç«ççlayeræ éæ§è¡è¿ä¸å¥
				var $ = layui.jquery,
					layer = layui.layer; //ç¬ç«ççlayeræ éæ§è¡è¿ä¸å¥

				var str =
					"<div class='container'>	<div class='row clearfix'>		<div class='col-md-12 column' style='margin:30px'>		<form role='form'>				<div class='form-group'>					 <label for='exampleInputEmail1'>ææºå·ç </label><input type='text' class='form-control' id='exampleInputEmail1' />				</div>				<div class='form-group'>					 <label for='exampleInputPassword1'>å¯ç </label><input type='password' class='form-control' id='exampleInputPassword1' />				</div>			</form>		</div>	</div></div>";
				//è§¦åäºä»¶
				var active = {
					notice: function() {
						//ç¤ºèä¸ä¸ªå¬åå±
						layer.open({
							type: 1,
							title: false //ä¸æ¾ç¤ºæ é¢æ 
								,
							closeBtn: false,
							area: '300px;',
							shade: 0.8,
							id: 'LAY_layuipro' //è®¾å®ä¸ä¸ªidï¼é²æ­¢éå¤å¼¹åº
								,
							btn: ['ç»å½', 'è¿å'],
							btnAlign: 'c',
							moveType: 1 //ææ½æ¨¡å¼ï¼0æè1
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

	<body style="min-width: 400px;">

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
			<div class="layui-row" style="height:auto;" id="lef">
				<div class="layui-col-xs3" style="max-width: 300px;height: 100%;">
					<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="height:100%;width: 100%; margin-right: 10px;">
						<li class="layui-nav-item active">
							<a href="javascript:;" style="text-decoration: none;">é¦é¡µ</a>
						</li>
						<li class="layui-nav-item">
							<a href="javascript:;" style="text-decoration: none;">äº¤æ</a>
							<dl class="layui-nav-child">
								<dd><a href="javascript:;" style="text-decoration: none;">åèµ·äº¤æ</a></dd>
								<dd><a href="javascript:;" style="text-decoration: none;">æ¥æ¶äº¤æ</a></dd>
							</dl>
						</li>
						<li class="layui-nav-item"><a href="javascript:;" style="text-decoration: none;">ä¸ªäººè®¢å</a></li>
						<li class="layui-nav-item"><a href="javascript:;" style="text-decoration: none;">åå®¢</a></li>
					</ul>
				</div>
				<div class="layui-col-xs9" id="rig">
					<div style="padding: 20px; background-color: #F2F2F2;">
						<div class="layui-card">
							<div class="layui-card-header">ç®ä»</div>
							<div class="layui-card-body">
								<form class="layui-form" action="">
									<div class="layui-form-item">
										<label class="layui-form-label">ç¨æ·å</label>
										<div class="layui-input-block">
											<input id="username" type="text" name="title" required lay-verify="required" placeholder="" autocomplete="off" class="layui-input"
											 disabled="disabled" style="max-width:450px">
										</div>
									</div>
									<div class="layui-upload" id="sctx" style="">
										<label class="layui-form-label">å¤´å</label>
										<!-- <button type="button" class="layui-btn" id="test1" style="float:left; margin-top:35px; margin-left:30px; margin-right:30px">ä¸ä¼ å¾ç</button> -->
										<div class="layui-upload-list" style="">
											<img class="layui-upload-img" id="demo1" width="150px" src="logo.png">
											<p id="demoText"></p>
										</div>
									</div>
									<div class="layui-form-item">
										<label class="layui-form-label">æ§å«</label>
										<div class="layui-input-block">
											<input id="nan" type="radio" name="sex" value="ç·" title="ç·" checked="checked" disabled>
											<input id="nv" type="radio" name="sex" value="å¥³" title="å¥³" disabled>
										</div>
									</div>
									<div class="layui-form-item">
										<label class="layui-form-label" style="width:auto;">çµè¯å·ç </label>
										<label class="layui-form-label" id="telephone">æ </label>
										<a class="layui-form-label" id="" href="javascript:" style="width: auto;color:#E74C3C;text-decoration: none;">åæ¶ç»å®</a>
									</div>
									<div class="layui-form-item">
										<label class="layui-form-label" style="width:auto;">è®¤è¯ç¶æ</label>
										<label class="layui-form-label" id="rz">0</label>
										<button id="btn_rz" type="button" class="layui-btn layui-btn-primary" onclick="">åå¾è®¤è¯>></button>
									</div>
									<div class="layui-form-item">
										<label class="layui-form-label">é®ç®±</label>
										<label class="layui-form-label" id="telephone">æ </label>
										<a class="layui-form-label" id="" href="javascript:" style="width: auto;color:#E74C3C;text-decoration: none;">åæ¶ç»å®</a>
									</div>
									<div class="layui-form-item">
										<div class="layui-input-block" id="bj">
											<button class="layui-btn" onclick="bj()">ç¼è¾</button>
											<!-- <button class="layui-btn" lay-submit lay-filter="formDemo">ç«å³æäº¤</button>
											<button type="reset" class="layui-btn layui-btn-primary">éç½®</button> -->
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
			function bj(){
				layui.use('form', function() {
					var form = layui.form;
					$("#username").removeAttr("disabled");
					$("#nan").removeAttr("disabled");
					$("#nv").removeAttr("disabled");
					$("#bj").html("<button class='layui-btn' lay-submit lay-filter='formDemo'>ç«å³æäº¤</button><button type='reset' class='layui-btn layui-btn-primary'>éç½®</button>");
					$("#sctx").html("")
					form.render(); 
				});
			}
			
			
		</script>

		<script>
			//Demo
			layui.use('form', function() {
				var form = layui.form;

				//çå¬æäº¤
				form.on('submit(formDemo)', function(data) {
					layer.msg(JSON.stringify(data.field));
					return false;
				});
			});
		</script>

		<script>
			layui.use('upload', function() {
				var $ = layui.jquery,
					upload = layui.upload;

				//æ®éå¾çä¸ä¼ 
				var uploadInst = upload.render({
					elem: '#test1',
					url: '/upload/',
					before: function(obj) {
						//é¢è¯»æ¬å°æä»¶ç¤ºä¾ï¼ä¸æ¯æie8
						obj.preview(function(index, file, result) {
							$('#demo1').attr('src', result); //å¾çé¾æ¥ï¼base64ï¼
						});
					},
					done: function(res) {
						//å¦æä¸ä¼ å¤±è´¥
						if (res.code > 0) {
							return layer.msg('ä¸ä¼ å¤±è´¥');
						}
						//ä¸ä¼ æå
					},
					error: function() {
						//æ¼ç¤ºå¤±è´¥ç¶æï¼å¹¶å®ç°éä¼ 
						var demoText = $('#demoText');
						demoText.html(
							'<span style="color: #FF5722;">ä¸ä¼ å¤±è´¥</span> <a class="layui-btn layui-btn-xs demo-reload">éè¯</a>');
						demoText.find('.demo-reload').on('click', function() {
							uploadInst.upload();
						});
					}
				});
			});
		</script>

		<script>
			layui.use('element', function() {
				var element = layui.element; //å¯¼èªçhoverææãäºçº§èåç­åè½ï¼éè¦ä¾èµelementæ¨¡å

				//çå¬å¯¼èªç¹å»
			});
		</script>

		<div class="footer-section">
			<div class="container">
				<div class="contact-grids">
					<div class="col-md-3 contact-grid">
						<h5>å³äºæä»¬</h5>
						<p></p>
						<a href="features.html" class="more">more about us<img src="images/arrow.png"></a>
					</div>
					<div class="col-md-3 contact-grid">
						<h5>èç³»æä»¬</h5>
						<p>Sweeblog</p>
						<div class="icon2">
							<ul>
								<li><i class="indicate"></i></li>
								<li>
									<p class="label1">å¦é¨å¸è½¯ä»¶å­äºæ2å·æ¥¼</p>
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
					<p>Sweeblog çæææ çICPå¤13019395å· Copyright Â© 2013 5imoban.net All Rights Reserved.</p>
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
