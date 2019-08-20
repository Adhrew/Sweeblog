<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Login</title>
    
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
		<c:if test="${sessionScope.message == -1}" >
			<script>alert("账号或密码错误!");</script>
			<c:remove var="message" scope="session"/>
		</c:if>
		
		<form action="${pageContext.request.contextPath}/login.action" method="post">
			<p>
				账号:<input type="text" name="username">
			</p>
			<p>
				密码:<input type="password" name="password">
			</p>
			<input type="submit" value="登录">
		</form>
		
  </body>
</html>
