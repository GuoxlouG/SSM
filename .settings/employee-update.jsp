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
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;员工档案&nbsp;&gt;&nbsp;新增</div>
</div>

<div class="content">
    <form action="addEmployee.do" method="post">
        <table>
            <tr>
                <td class="title">员工编号：</td>
                <td class="edit"><input type="text" class="text" autofocus name="ecode"></td>
            </tr>
            <tr>
                <td class="title">员工姓名：</td>
                <td class="edit"><input type="text" class="text" name="ename"></td>
            </tr>
            <tr>
                <td class="title">员工性别：</td>
                <td class="edit">&nbsp;<input type="radio" name="sex" value="1" checked>&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="sex" value="0">&nbsp;女</td>
            </tr>
            <tr>
                <td class="title">出生年月日：</td>
                <td class="edit"><input type="datetime" class="text" name="birthday"></td>
            </tr>
            <tr>
                <td class="title">员工电话：</td>
                <td class="edit"><input type="tel" class="text" name="etelephone"></td>
            </tr>
            <tr>
                <td class="title">员工Email：</td>
                <td class="edit"><input type="email" class="text" name="eemail"></td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</div>
</body>
</html>