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
<%
    String message = (String) session.getAttribute("message");
    if (message != null)
        out.println(message);

        session.setAttribute("randomNumber", (int)(Math.random() * 100));
%>
<form action="guessing.jsp" method="post">
    <table border="200" align="center">
        <tr>
            <td>Welcome to play guessing numbers</td>
        </tr>
        <tr>
            <td>Please enter a random number from 0 to 99:</td>
        </tr>
        <tr>
            <td><input type="text" name="userNumber"></td>
        </tr>
        <tr>
            <td align="center"><input type="submit" value="Input"> <input
                    type="reset" value="Revocation"></td>
        </tr>
    </table>
</form>
</body>

</html>
