<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script src="js/jquery-3.2.1.min.js"></script>
  <body>
  	<div id="count">0</div>
  </body>
  <script>
	    //假设每隔1秒发送一次请求
	    window.onload = function () {
	        getApi();
	    }	    
	    function getApi() {
	        setTimeout(getApi,1*1000);
	        $.ajax({
	            url: '',
	            type: 'post',
	            dataType: 'json',
	            success: function (data) {
	                
	            }
	        })
	    }
	</script>

</html>
