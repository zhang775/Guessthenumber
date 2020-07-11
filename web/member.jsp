<%--
  Created by IntelliJ IDEA.
  User: Dell-pc
  Date: 2020/7/6
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" import="java.util.*" %>
<html>
<head>
    <title>会员登录成功</title>
</head>
<body>
<h2>会员<%=request.getParameter("username")%>，您好</h2>
<a href="<%=request.getContextPath()%>/HomePage.jsp">返回首页登录</a>
</body>
</html>
