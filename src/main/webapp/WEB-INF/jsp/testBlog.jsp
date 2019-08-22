<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>  
 <body>
    <div id="editor">
        <p>欢迎使用 Sweeblog 博客</p>
    </div>
    <button id="button">点击</button>
	<script type="text/javascript" src="wangEditor/release/wangEditor.js"></script>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        var E = window.wangEditor
        var editor = new E('#editor')
        editor.customConfig.uploadImgServer = 'uploadImg'
        editor.customConfig.uploadFileName = 'FileName'
        editor.customConfig.uploadImgTimeout = 30000   //默认10秒
        editor.customConfig.uploadImgHooks={
            before:function (xhr, editor, files) {
                // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，files 是选择的图片文件
            },
            success:function (xhr, editor, result) {
                //result 是服务器端返回的结果
            },
            fail: function (xhr, editor, result) {
                //图片上传并返回结果，但图片插入错误时触发
            },
            error:function () {
                // 图片上传出错时触发
            },
            timeout: function (xhr, editor) {
                // 图片上传超时时触发
            },
            customInsert: function (insertImg, result, editor) {
                var url = result.url
                insertImg(url)
            }
        }
        editor.create()
        $("#button").click(function () {
        var a = $("#editor").html();
        	alert(a);
    	});
    </script>
</html>
