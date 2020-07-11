<%--
  Created by IntelliJ IDEA.
  User: Dell-pc
  Date: 2020/7/9
  Time: 18:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>large</title>
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
<form method="get" action="guessing.jsp">
    <h3>The number you guessed is<%=session.getAttribute("userNumber") %></h3>
    <h3>Big guess!</h3><br>
    <p>Please re-enter the guessed number:<input type="text" name="userNumber">
    <p><input type="submit" value="Verification" >

</form>
</body>
</html>

