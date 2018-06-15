<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <title>新增客户信息</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/insert.css">
     <style type="text/css">
        .onError {
            background: url("${pageContext.request.contextPath}/images/error.gif") no-repeat left;
            text-indent: 20px;
            display: inline-block;
            color: red;
        }

        .onSuccess {
            background: url("${pageContext.request.contextPath}/images/success.gif") no-repeat left;
            text-indent: 20px;
            color: green;
            display: inline-block;
        }

        .colorRed {
            color: red;
            vertical-align: top;
        }
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript">
    $(function() {
            //1.为每一个输入框添加星号
            $("#form .text").each(function () {
                $(this).after("<span class='colorRed'> * </span>");
            })
            //3.用户名事件绑定
            $("input[name='cname']").bind("focus keydown",function(){
                checkUserName();
            })
            $("input[name='ccode']").bind("focus keydown",function(){
                checkcode();
            })
            $("input[name='ctelephone']").bind("focus keydown",function(){
                checktel();
            })
        })

        //验证用户名的函数
        function checkUserName(){
            var $cname = $("input[name='cname']");
            var value = $cname.val();
            if(value==""||value.length>4){
                $cname.next().removeAttr("class")
                        .addClass("onError")
                        .text("请输入4位以下的字符");
                return false;
            }else{
                $cname.next().removeAttr("class")
                        .addClass("onSuccess")
                        .text("输入正确");
                return true;
            }
        }
  //验证客户编号的函数
    function checkcode(){
        var $ccode = $("input[name='ccode']");
        var value = $ccode.val();
        if(value==""||value.length>10){
            $ccode.next().removeAttr("class")
                    .addClass("onError")
                    .text("请输入3位以下的字符");
            return false;
        }else{
            $ccode.next().removeAttr("class")
                    .addClass("onSuccess")
                    .text("输入正确");
            return true;
        }
    }
  //验证电话号码的函数
    function checktel(){
        var $ctelephone = $("input[name='ctelephone']");
        var value = $ctelephone.val();
       if(value.length==10||value.length==11){
            $ctelephone.next().removeAttr("class")
                    .addClass("onSuccess")
                    .text("输入正确");
            return true;
        }
       else{
           $ctelephone.next().removeAttr("class")
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
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;客户档案&nbsp;&gt;&nbsp;新增</div>
</div>

<div class="content">
    <form action="addCustomer.do" method="post"  id="form">
        <table>
            <tr>
                <td class="title">客户编号：</td>
                <td class="edit"><input type="text" class="text" autofocus name="ccode"></td>
            </tr>
            <tr>
                <td class="title">客户名称：</td>
                <td class="edit"><input type="text" class="text" name="cname"></td>
            </tr>
            <tr>
                <td class="title">地址：</td>
                <td class="edit"><input type="text" class="text" name="address"></td>
            </tr>
            <tr>
                <td class="title">电话：</td>
                <td class="edit"><input type="tel" class="text" name="ctelephone"></td>
            </tr>
            <tr>
                <td class="title">电子邮件：</td>
                <td class="edit"><input type="email" class="text" name="cemail"></td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</div>
</body>
</html>