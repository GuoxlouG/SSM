<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>商品档案管理</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/table.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
<style type="text/css">
body {
	margin: 0;
	background: transparent;
}

#bc {
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
	<img alt="kanbujian"
		src="${pageContext.request.contextPath}/images/bc.jpg" id="bc">
	<%@ include file="top.jsp"%>
	<%@ include file="left.jsp"%>
	<div class="all">
		<div class="level">
			<img src="${pageContext.request.contextPath}/images/house.png">
			<div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;商品档案</div>
		</div>
		<form action="selectGoods.do" method="post">
			<div class="whole">
				<div class="littletitle">搜索查询</div>
				商品编号：<input type="text" placeholder="按商品编号查询" name="mcode"
					class="text">&nbsp;&nbsp; 商品名称：<input type="search"
					style="height: 30px" placeholder="按商品名称查询" name="mname"
					class="text">&nbsp;&nbsp; <img
					src="${pageContext.request.contextPath}/images/query.jpg"
					class="img1">&nbsp;<input type="submit" value="查询"
					class="button">&nbsp;&nbsp; <img
					src="${pageContext.request.contextPath}/images/add.png"
					class="img2">&nbsp;<a href="goods-insert.do">新增</a>&nbsp;&nbsp;
				<img src="${pageContext.request.contextPath}/images/reset.png"
					class="img3">&nbsp;<input type="reset" value="重置"
					class="button">
			</div>

			<div class="main">
				<table id="cs_table" border-color="blue" class="data-table">
					<thead>
						<tr class="head">
							<td>商品编号</td>
							<td>商品名称</td>
							<td>单价</td>
							<td>操作</td>
						</tr>
					</thead>
					<tbody id="group_one">
						<c:forEach items="${m}" var="m1">
							<tr>
								<td>${m1.mcode}</td>
								<td>${m1.mname}</td>
								<td>${m1.mprice}</td>
								<td><a
									href="${pageContext.request.contextPath}/deleteMer.do?mcode=${m1.mcode}">删除</a>
									<a
									href="${pageContext.request.contextPath}/goods-update.do?mcode=${m1.mcode}">修改</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>

				</table>
				<table id="cs_table2" class="data-table"></table>
				<hr>
			</div>
		</form>
	</div>

</body>
</html>