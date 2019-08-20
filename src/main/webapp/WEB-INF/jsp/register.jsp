<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${sessionScope.message == -1}" >
		<script>alert("注册失败!");</script>
		<c:remove var="message" scope="session"/>
	</c:if>
	<form action="${pageContext.request.contextPath}/register.action" method="post">
			<p>
				账号:<input type="text" name="user_name">
			</p>
			<p>
				密码:<input type="password" name="user_pwd">
			</p>
			<input type="submit" value="注册">
		</form>
</body>
</html>