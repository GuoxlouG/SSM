<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/register.css">
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script>
    $(document).ready(function(){
    	$("div").hide();
    	$("div").fadeIn(3000);
    	});
    </script>
</head>
<body>
<img src="${pageContext.request.contextPath}/images/0521.png" class="bcimg">
<form action="regaccess.do" method="post">
<div>
    <br>
    <span>REGISTER</span><br>
    <p>用户名：<input type="text" placeholder="用户名" id="username" name="username" class="txt"></p>
    <p>密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" placeholder="密&nbsp;&nbsp;码" id="password" name="password" class="txt"></p>
    	<p>性&nbsp;&nbsp;&nbsp;&nbsp;别：
    	<input type="radio" name="usex" value="男" checked>&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;
  		<input type="radio" name="usex" value="女">&nbsp;女</p>
  		<p>爱&nbsp;&nbsp;&nbsp;&nbsp;好：
	  	<input name="hobby" type="checkbox" value="音乐" />音乐
		<input name="hobby" type="checkbox" value="登山" />登山 
		<input name="hobby" type="checkbox" value="旅游" />旅游 
		<input name="hobby" type="checkbox" value="写作" />写作</p>
    <input type="submit" value="注册" class="button">
    <input type="reset" value="重置" class="button">
</div>
</form>
</body>
</html>