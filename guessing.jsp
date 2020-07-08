<%--
  Created by IntelliJ IDEA.
  User: Dell-pc
  Date: 2020/7/8
  Time: 13:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=GBK"
         pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="GBK">
    <title>guess</title>
</head>
<body>
<%
    request.setCharacterEncoding("GBK");
    response.setCharacterEncoding("GBK");

    int num1= (int)session.getAttribute("save");//获取产生的随机数
    String guess1 = request.getParameter("guess");//获取用户猜测的数字
    session.setAttribute("guess", guess1);
    String guess2 = (String)session.getAttribute("guess");
    int guess3 = Integer.parseInt(guess2);
    if(guess2!=null){
        if(guess3>num1){
            //response.sendRedirect("large.jsp");
            request.getRequestDispatcher("large.jsp").forward(request,response);
        }else if(guess3<num1){
            response.sendRedirect("small.jsp");
        }else{
            response.sendRedirect("right.jsp");
        }
    }
%>
</body>
</html>
</html>
