<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <title>修改进货单信息</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/order-insert.css">
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
    <script src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
   <!-- <script type="text/javascript">
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
            if(value==""||value.length<6){
                $cname.next().removeAttr("class")
                        .addClass("onError")
                        .text("请输入6位以上的字符");
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
        </script> --> 
</head>
<body>
<%@ include file="top.jsp"%>
<%@ include file="left.jsp"%>
<div class="all">
<div class="level">
    <img src="${pageContext.request.contextPath}/images/house.png">
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;进货管理&nbsp;&gt;&nbsp;进货单&nbsp;&gt;&nbsp;修改</div>
</div>

<div class="content">
   <c:forEach items="${stt}" var="st">
<form action="updateStock.do?sid=${st.sid}" method="post">
<table>
		<tr>
            <td class="title">订&nbsp;单&nbsp;编&nbsp;号</td> 
            <td class="edit"><input
	type="text" class="txt" name="cname" value="${st.sid}" readonly="readonly"></td></tr>
<tr>
            <td class="title">客&nbsp;户&nbsp;名&nbsp;称</td> 
            <td class="edit">
<select name="customerid.cid"  id="clientname">
<c:forEach items="${Ocu}" var="Oc">
    <option value="${Oc.cid}" <c:if test="${Oc.cid eq st.customerid.cid}">selected</c:if> >${Oc.cname}</option>
 </c:forEach>
</select></td></tr>
<tr>
            <td class="title">商&nbsp;品&nbsp;名&nbsp;称</td>
            <td class="edit">
<select name="merchandiseid.mid"  id="goodsname">
<c:forEach items="${Om}" var="Om1">
    <option value="${Om1.mid}" <c:if test="${Om1.mid eq st.merchandiseid.mid}">selected</c:if> >${Om1.mname}</option>
 </c:forEach>
</select></td></tr>
<tr>
            <td class="title">员&nbsp;工&nbsp;名&nbsp;称</td>
            <td class="edit">
<select name="employeeid.eid"  id="employeename">
<c:forEach items="${Oe}" var="Oe1">
    <option value="${Oe1.eid}" <c:if test="${Oe1.eid eq st.employeeid.eid}">selected</c:if> >${Oe1.ename}</option>
 </c:forEach>
</select></td></tr>
<tr>
            <td class="title">商&nbsp;品&nbsp;数&nbsp;量</td> 
            <td class="edit"><input type="text" class="txt"
	name="amount" value="${st.amount}"></td></tr>
<tr>
            <td class="title">商&nbsp;品&nbsp;价&nbsp;格</td> 
            <td class="edit"><input type="text" class="txt"
	name="sprice" value="${st.sprice}"></td></tr>
<tr>
            <td class="title">进&nbsp;货&nbsp;时&nbsp;间</td> 
            <td class="edit"><input type="text" class="txt"
	name="stockindate" value="${st.stockindate}"  onClick="WdatePicker()"></td></tr></table><br>
</c:forEach>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</div>
</body>
</html>