<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <title>新增员工信息</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/insert.css">
    
     <style type="text/css">
        .onError {
            background: url("${pageContext.request.contextPath}/images/error.gif") no-repeat left;
            text-indent: 20px;
            display: inline-block;
            color: red;
            float:right;
        }

        .onSuccess {
            background: url("${pageContext.request.contextPath}/images/success.gif") no-repeat left;
            text-indent: 20px;
            color: green;
            display: inline-block;
            float:right;
        }

        .colorRed {
            color: red;
            vertical-align: top;
        }
    </style>
    <script src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
     <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">
    $(function() {
            //1.为每一个输入框添加星号
            $("#form .text").each(function () {
                $(this).after("<span class='colorRed'> * </span>");
            })
            //3.用户名事件绑定
            $("input[name='ename']").bind("focus keydown",function(){
                checkUserName();
            })
            $("input[name='ecode']").bind("focus keydown",function(){
                checkcode();
            })
            $("input[name='etelephone']").bind("focus keydown",function(){
                checktel();
            })
        })

        //验证用户名的函数
        function checkUserName(){
            var $ename = $("input[name='ename']");
            var value = $ename.val();
            if(value==""||value.length>10){
                $ename.next().removeAttr("class")
                        .addClass("onError")
                        .text("请输入10位以下的字符");
                return false;
            }else{
                $ename.next().removeAttr("class")
                        .addClass("onSuccess")
                        .text("输入正确");
                return true;
            }
        }
    //验证员工编号的函数
    function checkcode(){
        var $ecode = $("input[name='ecode']");
        var value = $ecode.val();
        if(value==""||value.length>10){
            $ecode.next().removeAttr("class")
                    .addClass("onError")
                    .text("请输入3位以下的字符");
            return false;
        }else{
            $ecode.next().removeAttr("class")
                    .addClass("onSuccess")
                    .text("输入正确");
            return true;
        }
    }
    //验证电话号码的函数
    function checktel(){
        var $etelephone = $("input[name='etelephone']");
        var value = $etelephone.val();
       if(value.length==10||value.length==11){
            $etelephone.next().removeAttr("class")
                    .addClass("onSuccess")
                    .text("输入正确");
            return true;
        }
       else{
           $etelephone.next().removeAttr("class")
                   .addClass("onError")
                   .text("请输入11位或12位的数字");
           return false;
       }
    }
    </script>
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
    <form action="addEmployee.do" method="post" id="form">
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
                <td class="edit">&nbsp;<input type="radio" name="sex" value="男" checked>&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="sex" value="女">&nbsp;女</td>
            </tr>
            <tr>
                <td class="title">出生年月日：</td>
                <td class="edit"><input type="datetime" class="text" name="birthday" onClick="WdatePicker()"></td>
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