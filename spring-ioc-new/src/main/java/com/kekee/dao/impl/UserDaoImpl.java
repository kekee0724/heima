package com.kekee.dao.impl;

import com.kekee.dao.UserDao;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

//<bean id="userDao"class="com.kekee.dao.impl.UserDaoImpl"/>
//@Component("userDao")
@Repository("userDao")
@Scope("singleton")
@Lazy(true)
public class UserDaoImpl implements UserDao {

//    @Value("${jdbc.username}")
//    public void setUsername(String username) {
//        this.username = username;
//    }

    @Value("${jdbc.username}")
    private String username;

    public UserDaoImpl() {
//        System.out.println("userDao创建...");
    }

    @PostConstruct
    public void init(){
//        System.out.println("userDao初始化方法...");
    }

    @PreDestroy
    public void destroy(){
//        System.out.println("userDao销毁方法...");
    }

    @Override
    public void show() {
        System.out.println(username);
    }
}

