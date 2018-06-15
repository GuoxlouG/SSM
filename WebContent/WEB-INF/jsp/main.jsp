<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>欢迎进入进销存管理系统！</title>
    <style type="text/css">
    body{
    	width:100%;
    	margin: 0;
	    background: transparent;
    }
    #bc{
	position: fixed;
	right: 0;
	bottom: 0;
	min-width: 100%;
	min-height: 100%;
	width: auto;
	height: auto;
	z-index: -100;
	background-size: cover;
    }
    </style>
    
</head>
<body>
<img alt="kanbujian" src="${pageContext.request.contextPath}/images/bc.jpg" id="bc">
<%@ include file="top.jsp"%>
<%@ include file="left.jsp"%>
<%@ include file="introduce.jsp"%>
</body>
</html>