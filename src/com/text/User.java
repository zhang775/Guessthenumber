package com.test;

import java.util.HashMap;
import java.util.Map;

public class User {
    private Map<String,String> acount = new HashMap<String,String>();
    private static User user = null;

    //模拟数据库内数据
    private User() {
        acount.put("zhangsan","111111##zhangsan@sian.com");
        acount.put("lisi","222222##lisi@sian.com");
        acount.put("wangeu","333333##wangwu@sian.com");
        acount.put("zhaoliu","444444##zhaoliu@sian.com");
    }

    //可以理解为连接数据库
    public static User getInstance() {
        if(user==null) {
            user=new User();
        }
        return user;
    }

    //获取数据库的表
    public Map<String,String> getUserMap(){
        return acount;
    }

}

