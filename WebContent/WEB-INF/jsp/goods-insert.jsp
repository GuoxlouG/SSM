<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
    <title>新增商品信息</title>
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
            //3.商品名事件绑定
            $("input[name='mname']").bind("focus keydown",function(){
                checkUserName();
            })
            $("input[name='mcode']").bind("focus keydown",function(){
                checkcode();
            })
        })

        //验证商品名的函数
        function checkUserName(){
            var $mname = $("input[name='mname']");
            var value = $mname.val();
            if(value==""||value.length>6){
                $mname.next().removeAttr("class")
                        .addClass("onError")
                        .text("请输入6位以下的字符");
                return false;
            }else{
                $mname.next().removeAttr("class")
                        .addClass("onSuccess")
                        .text("输入正确");
                return true;
            }
        }
  //验证员工编号的函数
    function checkcode(){
        var $mcode = $("input[name='mcode']");
        var value = $mcode.val();
        if(value==""||value.length>10){
            $mcode.next().removeAttr("class")
                    .addClass("onError")
                    .text("请输入3位以下的字符");
            return false;
        }else{
            $mcode.next().removeAttr("class")
                    .addClass("onSuccess")
                    .text("输入正确");
            return true;
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
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;商品档案&nbsp;&gt;&nbsp;新增</div>
</div>

<div class="content">
    <form action="addGoods.do" method="post" id="form">
        <table>
            <tr>
                <td class="title">商品编号：</td>
                <td class="edit"><input type="text" class="text" autofocus name="mcode"></td>
            </tr>
            <tr>
                <td class="title">商品名称：</td>
                <td class="edit"><input type="text" class="text" name="mname"></td>
            </tr>
            <tr>
                <td class="title">单价：</td>
                <td class="edit"><input type="text" class="text" name="mprice"></td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</div>
</body>
</html>