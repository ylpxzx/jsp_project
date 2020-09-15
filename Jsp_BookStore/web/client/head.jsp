<%--
  Created by IntelliJ IDEA.
  User: acer
  Date: 2020/9/8
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>首页头</title>
</head>
<body style="text-align: center">
    <h1>网上书店</h1>
    <br/>
    <div>
        <a href="${pageContext.request.contextPath }/client/IndexServlet?method=getAll" target="body">首页</a>
        <a href="${pageContext.request.contextPath }/client/listcart.jsp" target="body">查看购物车</a>
        <a href="${pageContext.request.contextPath }/client/ClientListOrderServlet?userid=${user.id}" target="body">查看订单</a>
    </div>
    <div style="float:right;">
        <c:if test="${ user == null }">
            <form action="${pageContext.request.contextPath }/client/LoginServlet" method="post">
                用户名：<input type="text" name="username" style="width:60px;">
                密码：<input type="password" name="password" style="width:60px;">
                <input type="submit" value="登陆">
                <input type="button" value="注册" onclick="javascript:window.parent.body.location.href='${pageContext.request.contextPath }/client/register.jsp'">
            </form>
        </c:if>
        
        <c:if test="${user!=null }">
            欢迎您：${user.username } <a href="${pageContext.request.contextPath }/client/LoginOutServlet">注销</a>
        </c:if>
    </div>


</body>
</html>
