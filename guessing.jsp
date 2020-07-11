<%--
  Created by IntelliJ IDEA.
  User: Dell-pc
  Date: 2020/7/8
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>guess</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String userNum = request.getParameter("userNumber");
    int userNumber = (Integer) Integer.parseInt(userNum);
    int randomNumber = (Integer)session.getAttribute("randomNumber");
    if (userNumber <= 99 && userNumber >= 0) {


        if(userNumber>randomNumber){
            //response.sendRedirect("test1large.jsp");
            request.getRequestDispatcher("large.jsp").forward(request,response);
        }else if(userNumber<randomNumber){
            response.sendRedirect("small.jsp");
        }else{
            response.sendRedirect("right.jsp");
        }
    }else{
        response.sendRedirect("start.jsp");
    }
%>
</body>
</html>
