<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css">
    <head>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
    window.onload=function(){
        var nosound = document.getElementById("bgvideo");
        nosound.muted = true;
    }
    </script>
    <script>
    $(document).ready(function(){
    	$("#logindiv").hide();
    	$("#logindiv").fadeIn(3000);
    	});
    </script>
</head>
<body>
        
		<video src="${pageContext.request.contextPath}/video/0521.mp4" autoplay loop id="bgvideo">
		放不出来
		</video>
<form action="loginaccess.do" method="post">
<div id="logindiv">
    <span>进销存管理系统</span><br><br><span>LOGIN</span>
    <input type="text" placeholder="用户名" id="username" name="username">
    <input type="password" placeholder="密&nbsp;&nbsp;码" id="password" name="password">
    <input type="submit" value="登录" class="button">
    	<p>还没注册？点击<a href="register.do">这里</a>！<p>
</div>
</form>
</body>
</html>