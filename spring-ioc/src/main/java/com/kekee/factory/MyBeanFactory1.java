package com.kekee.factory;

import com.kekee.dao.UserDao;
import com.kekee.dao.impl.UserDaoImpl;

public class MyBeanFactory1 {
    public static UserDao userDao(String name, int age) {
//        Bean创建之前可以进行一些其他业务逻辑操作
        return new UserDaoImpl();
    }

}
