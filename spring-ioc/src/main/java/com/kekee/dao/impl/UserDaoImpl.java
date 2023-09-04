package com.kekee.dao.impl;

import com.kekee.dao.UserDao;
import com.kekee.service.UserService;
import org.springframework.beans.factory.InitializingBean;

public class UserDaoImpl implements UserDao, InitializingBean {
    private String username;

    private UserService userService;

    public void setUsername(String username) {
        System.out.println("UserDao：setUsername " + username);
        this.username = username;
    }

    public UserDaoImpl() {
        System.out.println("UserDao：实例化对象，但尚未初始化，将UserDao存储到到三级缓存 -> 无参构造");
    }

    //设置构造方法私有
    private UserDaoImpl(String name, int age) {
        System.out.println("UserDao：有参构造：" + name + " " + age);
    }

    public void init() {
        System.out.println("UserDao：init初始化方法执行...");
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("UserDao：执行其他生命周期过程，最终成为一个完成Bean，存储到一级缓存，删除二三级缓存；");
        System.out.println("UserDao：InitializingBean初始化: 属性设置之后执行...");
    }

    @Override
    public void show(Long l) {
        try {
            Thread.sleep(l);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        System.out.println("show...");
    }

    public void setUserService(UserService userService) {
        this.userService = userService;
        System.out.println("UserDao：属性注入,需要UserService,从三级缓存获取UserService,UserService从三级缓存移入二级缓存 -> " + userService);
    }
}

