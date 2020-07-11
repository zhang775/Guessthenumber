package com.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet(urlPatterns={"/login.htm"},name="loginCheck")
public class LoginCheck extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public LoginCheck() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String passwd = request.getParameter("passwd");
        String failLogin="登录失败请检查用户名和密码";
        if(checkLogin(username,passwd)){
            request.getRequestDispatcher("/member.jsp").forward(request,response);
        }else {
            request.setAttribute("failLogin", failLogin);	//若出错则把失败信息加入request属性
            request.getRequestDispatcher("/login.jsp").forward(request,response);
        }
    }

    //检查用户名密码是否为空，库中是否存在用户，若存在密码是否一致
    public boolean checkLogin(String username,String passwd) {
        User user = com.test.User.getInstance();
        Map<String,String>map=user.getUserMap();
        if(username!=null&&!"".equals(username)&&		//检测用户名密码是否为空
                passwd!=null&&!"".equals(passwd)) {
            if(map.get("username")!=null) {						//判断是否存在该用户若是
                String[] arr = map.get(username).split("##");	//提取密码
                if(arr[0].equals(passwd)){			//检查是否一致
                    return true;
                }else {
                    return false;
                }
            }else {
                return false;
            }
        }else {
            return false;
        }
    }
}

