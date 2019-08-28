<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">

		<link rel="stylesheet" href="css/layui.css" type="text/css" media="all">
		<script type="text/javascript" src="layui.js"></script>
		<title></title>
	</head>
	<body style="min-width: 600px;">
		<div class="layui-fluid">
			<div class="layui-row">
				<form class="layui-form" action="">
					<div class="layui-form-item">
						<label for="username" class="layui-form-label">
							<span class="" style="color: red;">*</span>真实姓名
						</label>
						<div class="layui-input-inline">
							<input type="text" id="username" name="username" required="" lay-verify="required" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-mid layui-word-aux">
							<span class="" style="color: red;">*</span>请务必输入与身份证一致的内容
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">
							<span class="" style="color: red;">*</span>身份证号码
						</label>
						<div class="layui-input-inline">
							<input type="text" id="identity" name="identity" required="" lay-verify="identity" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-mid layui-word-aux">
							<span class="" style="color: red;">*</span>请务必输入与身份证一致的内容
						</div>
					</div>
					<div class="layui-upload" style="">
						<label class="layui-form-label">头像</label>
						<div id="sctx">
						</div>
						<div class="layui-upload-list" style="float:left;margin-left:30px">
							<img class="layui-upload-img" id="demo1" height="150px" width="150px" src=${sessionScope.userSession.user_img }>
							<p id="demoText"></p>
						</div>
					</div>
					<div class="layui-form-item" style="margin-left: 140px;">
						<button type="button" class="layui-btn" id="test1" style="float:left; margin-top:35px; margin-left:30px; margin-right:30px">上传图片</button>
					</div>
					<div class="layui-form-item">
					    <div class="layui-input-block">
					      <button class="layui-btn" lay-submit lay-filter="formDemo" id="xx">立即提交</button>
					      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
					    </div>
					</div>
				</form>
			</div>
		</div>
	</body>
</html>
<script>
	
	var time="";
	
	layui.use('upload', function() {
		var $ = layui.jquery,
			upload = layui.upload;

		//普通图片上传
		var uploadInst = upload.render({
			elem: '#test1',
			url: 'upload/headImg.action',
			auto: false,
			bindAction: '#xx',
			size: 102400,
			choose: function(obj) {
				//预读本地文件示例，不支持ie8
				obj.preview(function(index, file, result) {
					var day2 = new Date();
					day2.setTime(day2.getTime());
					time = day2.getFullYear() + "" + (day2.getMonth() + 1) + "" + day2.getDate() + "" + day2.getSeconds();
					$('#demo1').attr('src', result); //图片链接（base64）
					obj.resetFile(index, file, time + "_" + file.name);
				});
				var demoText = $('#demoText');
				demoText.html(
					'<span style="color: lightgrey;margin-left:50px">已选择</span>');
			},
			done: function(res) {
				//如果上传失败
				if (res.code > 0) {
					return layer.msg('上传失败');
				}
				//上传成功
			},
			error: function() {
				//演示失败状态，并实现重传
				var demoText = $('#demoText');
				demoText.html(
					'<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
				demoText.find('.demo-reload').on('click', function() {
					uploadInst.upload();
				});
			}
		});
	});
	
	layui.use('form', function(){
	  var form = layui.form;
	  
	  //监听提交
	  form.on('submit(formDemo)', function(data){
	    if(time != "")
			data.field.file = "_"+time+ "_" +data.field.file.substring(data.field.file.lastIndexOf('\\')+1);
		console.log(data.field.file);
		window.location.href="renzheng.html?file="+data.field.file+"&username="+data.field.username+"&identity="+data.field.identity;
	    return false;
	  });
	});
</script>
