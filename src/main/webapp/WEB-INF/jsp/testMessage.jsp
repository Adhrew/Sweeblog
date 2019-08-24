<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="message">暂无消息</div>
</body>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		getApi();
	});
    //假设每隔5秒发送一次请求
    window.onload = function () {
        getApi();
    }
    function getApi() {
        //设置时间 5-秒  1000-毫秒  这里设置你自己想要的时间 
        setTimeout(getApi,5*1000);
        $.ajax({
            url: 'haveMessage.action?accept_id=2',
            type: 'get',
            dataType: 'json',
            success: function (data) {
               if(data>0){
               $("#message").html("有"+data+"条消息")
               }else{
               $("#message").html("暂无消息")
               }
            }
        })
    }
</script>
</html>