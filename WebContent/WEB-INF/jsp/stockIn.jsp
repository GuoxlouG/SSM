<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>进货管理</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/stockIn-table.css" />
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
			<div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;进货管理&nbsp;&gt;&nbsp;进货单</div>
		</div>
		<form action="seleStock.do" method="post">
			<div class="whole">
				<div class="littletitle">搜索查询</div>
				进货单编号：<input type="text" placeholder="按进货单编号查询" class="text">&nbsp;&nbsp;
				经办人：<input type="search" style="height: 30px" placeholder="按员工编号查询"
					class="text">&nbsp;&nbsp; <img
					src="${pageContext.request.contextPath}/images/query.jpg"
					class="img1">&nbsp;<input type="submit" value="查询"
					class="button">&nbsp;&nbsp; <img
					src="${pageContext.request.contextPath}/images/add.png"
					class="img2">&nbsp;<a href="stockinInsert.do">新增</a>&nbsp;&nbsp;
				<img src="${pageContext.request.contextPath}/images/reset.png"
					class="img3">&nbsp;<input type="reset" value="重置"
					class="button">
			</div>

			<div class="main">
				<table id="cs_table" border-color="blue" class="data-table">
					<thead>
						<tr class="head">
							<td>进货单编号</td>
							<td>客户名称</td>
							<td>商品名称</td>
							<td>进货日期</td>
							<td>进货数量</td>
							<td>进货单价</td>
							<td>经手人</td>
							<td>操作</td>
						</tr>
					</thead>
					<tbody id="group_one">

						<c:forEach items="${stock}" var="s">
							<tr>
								<td>${s.sid}</td>
								<td>${s.customerid.cname}</td>
								<td>${s.merchandiseid.mname}</td>
								<td>${s.stockindate}</td>
								<td>${s.amount}</td>
								<td>${s.sprice}</td>
								<td>${s.employeeid.ename}</td>
								<td><a
									href="${pageContext.request.contextPath}/deleteStock.do?sid=${s.sid}">删除</a>&nbsp;
									<a
									href="${pageContext.request.contextPath}/stock-update.do?sid=${s.sid}">修改</a>
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