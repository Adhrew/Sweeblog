<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

	<head>
		<title>Validator Signup Form Responsive Widget Template :: w3layouts</title>
		<!-- Meta tag Keywords -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta charset="UTF-8" />
		<meta name="keywords" content="Validator Signup Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
		<script>
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<!-- Meta tag Keywords -->
		<!-- css file -->
		<link rel="stylesheet" href="css/style_r.css" type="text/css" media="all" />

		<!-- Style-CSS -->
		<!-- //css file -->
		<!-- web-fonts -->
		<link href="//fonts.googleapis.com/css?family=Cuprum:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext,vietnamese" rel="stylesheet">
		<!-- //web-fonts -->
		<style>
			.yanzhengma {
				position: absolute;
				right: 10px;
				top: 5px;
				z-index: 100;
				display: inline-block;
				padding: 0.5rem 0.8rem;
				font-size: 14px;
				border: none;
				background-color: #e21945;
				color: #fff;
				border-radius: 8px;
			}
			
			.yanzhengma:disabled {
				background-color: #ddd;
			}
			
			.myyanzhengma {
				position: relative;
			}
			
			.search {
				position: absolute;
				top: 2px;
				right: -5px;
				z-index: 99;
			}
		</style>
	</head>

	<body>
		<!-- title -->
		<h1>
		<span>S</span>wee
		<span>B</span>log
	</h1>
		<!-- //title -->
		<!-- content -->
		<div class="sub-main-w3">
			<form validate="true" action="#" method="post">
				<div class="form-group">
					<label for="exampleInputText">昵称</label>
					<input type="text" class="form-control" name="name" id="exampleInputText" placeholder="请输入昵称" required>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">密码</label>
					<input maxlength="16" minlength="5" type="password" name="name" class="form-control" id="exampleInputPassword1" placeholder="请输入密码" required>
				</div>
				<div class="form-group">
					<label for="exampleConfirmPassword1">确认密码</label>
					<input type="password" class="form-control" id="exampleConfirmPassword1" name="name" placeholder="确认密码" required data-match="password" data-match-field="#exampleInputPassword1">
				</div>
				<div class="form-group">
					<label for="exampleMobile1">手机号</label>
					<input type="mobile" class="form-control" name="name" id="exampleMobile1" placeholder="请输入手机号" required>
				</div>
				<div class="form-group">
					<div class="myyanzhengma">
						<label for="exampleInputEmail1">验证码</label><br/>
						<input type="text" class="form-control" style="width: 300px;" name="name" id="" aria-describedby="emailHelp" placeholder="请输入验证码" required>
						<div class="search">
							<button class="yanzhengma" style="height: 45px;padding-top:8px;padding-left:8px;padding-right:8px;width: auto;white-space:nowrap;">获取验证码</button>
						</div>
					</div>
				</div>
				<button type="submit" class="btn btn-primary">注册</button>
			</form>
		</div>
		<!-- //content -->

		<!-- copyright -->
		<div class="footer">
			<p>&copy; 2019 User Signup . All rights reserved | clay
			</p>
		</div>
		<!-- //copyright -->

		<!-- Jquery -->
		<script src="js/jquery-2.2.3.min.js"></script>
		<!-- //Jquery -->
		<!-- Jquery -->
		<script src="js/jquery-simple-validator.min.js"></script>
		<!-- //Jquery -->

	</body>
	<script>
		var times = 60;

		function roof() {
			if(times == 0) {
				$('.yanzhengma').prop('disabled', false);
				$('.yanzhengma').text('发送验证码');
				times = 60;
				return
			}
			$('.yanzhengma').text('发送验证码(' + times + 's)');
			times--;
			setTimeout(roof, 1000);
		};

		$('.yanzhengma').on('click', function() {
			$(this).prop('disabled', true);
			roof();
		});
	</script>

</html>