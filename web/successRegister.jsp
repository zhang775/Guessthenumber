<%--
  Created by IntelliJ IDEA.
  User: Dell-pc
  Date: 2020/7/6
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="java.util.*"  pageEncoding="utf-8"  %>
<html>
<head>
    <title>注册成功</title>
</head>
<body>
<h2>会员<%=request.getParameter("username") %>注册成功</h2>
密码为：<%=request.getParameter("passwd") %><br/>
<a href="<%=request.getContextPath() %>/HomePage.jsp">返回首页登录</a>
</body>
</html>
