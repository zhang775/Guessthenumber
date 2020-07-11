<%--
  Created by IntelliJ IDEA.
  User: Dell-pc
  Date: 2020/7/6
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java"  import="java.util.*" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<html>
<head>
    <title>注册失败</title>
</head>
<body>
<h2>新增会员失败</h2>
<%
    String list = (String)request.getAttribute("errors");

%>
<%=list %><br/>

<a href="<%=request.getContextPath() %>/register.jsp">返回注册首页</a>
</body>
</html>
