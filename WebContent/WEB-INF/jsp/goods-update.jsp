<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
    <title>修改商品信息</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/insert.css">
</head>
<body>
<%@ include file="top.jsp"%>
<%@ include file="left.jsp"%>
<div class="all">
<div class="level">
    <img src="${pageContext.request.contextPath}/images/house.png">
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;商品档案&nbsp;&gt;&nbsp;修改</div>
</div>

<div class="content">
    <form action="updateGoods.do" method="post">
        <table>
            <tr>
                <td class="title">商品编号：</td>
                <td class="edit"><input type="text" class="text" autofocus name="mcode" value="${mer.mcode }" readonly="readonly"></td>
            </tr>
            <tr>
                <td class="title">商品名称：</td>
                <td class="edit"><input type="text" class="text" name="mname"  value="${mer.mname }"></td>
            </tr>
            <tr>
                <td class="title">单价：</td>
                <td class="edit"><input type="text" class="text" name="mprice"  value="${mer.mprice }" ></td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</div>
</body>
</html>