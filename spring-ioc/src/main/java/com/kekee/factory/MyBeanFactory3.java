package com.kekee.factory;

import com.kekee.dao.UserDao;
import com.kekee.dao.impl.UserDaoImpl;
import org.springframework.beans.factory.FactoryBean;

public class MyBeanFactory3 implements FactoryBean<UserDao> {
    @Override
    public UserDao getObject() throws Exception {
//        Bean创建之前可以进行一些其他业务逻辑操作
        System.out.println("getObject被调用...");
        return new UserDaoImpl();
    }

    @Override
    public Class<?> getObjectType() {
        return UserDao.class;
    }
}
