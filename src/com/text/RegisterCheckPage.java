package com.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@WebServlet(urlPatterns= {"/register.check"},name="registerCheckPage")
public class RegisterCheckPage extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterCheckPage() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String passwd = request.getParameter("passwd");
        String checkPasswd = request.getParameter("checkPasswd");
        String email = request.getParameter("email");
        List<String> errors = new ArrayList<String>();	//存储出错的提示信息

        if(isValidUsername(username)) {
            errors.add("用户名已存在或为空");
            System.out.println("1");
        }
        if(isValidPasswd(passwd,checkPasswd)) {
            errors.add("密码为空或不一致或长度不够");
            System.out.println("2");
        }
        if(!isValidEmail(email)) {
            errors.add("邮箱错误或为空");
            System.out.println("3");
        }
        if(!errors.isEmpty()) {
            request.setAttribute("errors", errors);	//添加到request属性
            request.getRequestDispatcher("/failedRegister.jsp").forward(request,response);	//跳转到失败页面
        }else {
            User user = com.test.User.getInstance();
            Map<String,String>map=user.getUserMap();
            map.put(username,passwd+"##"+email);
            request.getRequestDispatcher("/successRegister.jsp").forward(request,response);	//跳转到成功页面
        }

    }

    public boolean isValidUsername(String username) {
        User user = com.test.User.getInstance();	//模拟连接数据库
        Map<String,String> map = user.getUserMap();
        if(username!=null&&!username.equals("")) {
            if(map.get(username)!=null&&!map.get(username).equals("")) {
                //判断用户名是否为空，是否已存在该用户
                return true;
            }else {
                return false;
            }
        }
        if(username==null|username.equals("")) {
            return true;
        }
        return true;
    }

    public boolean isValidPasswd(String passwd,String checkPasswd) {
        return passwd==null||checkPasswd==null||
                passwd.length()<6||checkPasswd.length()<6||
                !passwd.equals(checkPasswd);
        //判断长度是否大于等于6，是否为空
    }

    public boolean isValidEmail(String email) {
        boolean flag = false;
        if(email==null||"".equals(email)) {
            flag = false;
        }
        //用正则表达式判断格式
        if(email!=null&&!"".equals(email)) {
            flag = email.matches("^[\\w-]+(\\.[\\w-]+)*@[\\w-]+(\\.[\\w-]+)+$");
        }
        return flag;
    }
}


