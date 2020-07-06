<%--
  Created by IntelliJ IDEA.
  User: Dell-pc
  Date: 2020/7/6
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java"  import="java.util.*" import="java.lang.String" import="com.test.User" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>

<html>
<head>
    <title>会员登录</title>
</head>
<body>
<center>
    会员登录<br/>
    <form action="<%=request.getContextPath() %>/login.htm" method="post">
        <table border="1">
            <tr>
                <td>登录名：</td>
                <td><input name="username" /></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input name="passwd" type="password"/></td>
            </tr>
            <tr align="center">
                <td colspan="2"><input type="submit" value="提交"/>&nbsp;&nbsp;&nbsp;
            <input type="button" onclick="window.location.href='register.jsp'" value="注册"/>
            </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <a href="<%=request.getContextPath()%>/HomePage.jsp">返回</a>
                </td>
            </tr>
        </table>
    </form>
    <%
        String failLogin=(String)request.getAttribute("failLogin");
    %>
    <%=failLogin %>
</center>
</body>
</html>
