<%--
  Created by IntelliJ IDEA.
  User: Dell-pc
  Date: 2020/7/6
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="java.util.*" pageEncoding="utf-8" %>
<html>
<head>
    <title>RegisterPage</title>
</head>
<body>
<center>
    注册页面
    <hr>
    <form action="<%=request.getContextPath() %>/register.check" method="post">
     <table border="1">
         <tr>
             <td>用户名：</td>
             <td><input name="username" /></td>
         </tr>
         <tr>
             <td>密码:</td>
             <td><input type="password" name="passwd"/></td>
         </tr>
         <tr>
             <td>密码确认：</td>
             <td><input type="password" name="checkPasswd"/></td>
         </tr>
         <tr>
             <td>邮箱：</td>
             <td><input name="email" /></td>
         </tr>
         <tr>
          <td colspan="2" align="center"><input type="submit" value="提交"/>&nbsp;&nbsp;<input type="reset" value="重置"></td>
         </tr>
         <tr>
             <td colspan="2" align="center"><a href="<%=request.getContextPath()%>/HomePage.jsp">返回主页</a></td>
         </tr>
     </table>
    </form>
</center>
</body>
</html>
