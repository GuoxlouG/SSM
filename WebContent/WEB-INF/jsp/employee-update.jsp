<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <title>修改员工信息</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/insert.css">
</head>
<body>
<%@ include file="top.jsp"%>
<%@ include file="left.jsp"%>
<div class="all">
<div class="level">
    <img src="${pageContext.request.contextPath}/images/house.png">
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;员工档案&nbsp;&gt;&nbsp;修改</div>
</div>

<div class="content">
    <form action="updateEmployee.do" method="post">
        <table>
            <tr>
                <td class="title">员工编号：</td>
                <td class="edit"><input type="text" class="text" autofocus name="ecode" value="${emp.ecode }" readonly="readonly"></td>
            </tr>
            <tr>
                <td class="title">员工姓名：</td>
                <td class="edit"><input type="text" class="text" name="ename"  value="${emp.ename }"></td>
            </tr>
            <tr>
                <td class="title">出生年月日：</td>
                <td class="edit"><input type="datetime" class="text" name="birthday"  value="${emp.birthday }"></td>
            </tr>
            <tr>
                <td class="title">员工电话：</td>
                <td class="edit"><input type="tel" class="text" name="etelephone"  value="${emp.etelephone }"></td>
            </tr>
            <tr>
                <td class="title">员工Email：</td>
                <td class="edit"><input type="email" class="text" name="eemail"  value="${emp.eemail }"></td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</div>
</body>
</html>