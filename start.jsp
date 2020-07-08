<%--
  Created by IntelliJ IDEA.
  User: Dell-pc
  Date: 2020/7/8
  Time: 13:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Guess the number</title>
    <style type="text/css">
        form{
            width: 500px;
            height:500px;
            margin: 0 auto;
            border-radius: 5%;
            border: 2px solid yellow;
            position:absolute;
            left:450px;
            top:150px;
            background:pink;
            text-align: center;
        }
    </style>
</head>
<body>
<form method="get" action="start.jsp">
    <h2>Guess the number</h2>

    <%
        int num =(int)(100*Math.random()+1);
        session.setAttribute("save", new Integer(num));
    %>
    <%-- 产生的随机数是:<%=num %> --%>

    <p>Please enter the guessed number:
    <p><input type="text" name="guess">
    <p><input type="submit" value="Click here to verify" >

</form>

</body>
</html>
