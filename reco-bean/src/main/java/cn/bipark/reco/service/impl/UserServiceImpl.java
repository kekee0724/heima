package cn.bipark.reco.service.impl;

import cn.bipark.reco.dao.UserDao;
import cn.bipark.reco.dao.impl.UserDaoImpl;
import cn.bipark.reco.service.UserService;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

@Service
@Lazy
public class UserServiceImpl implements UserService, InitializingBean, DisposableBean {

    UserDao userDao;

    public UserServiceImpl() {
        System.out.println("初始化了");
    }

    public void setUserDao(UserDaoImpl userDao) {
        this.userDao = userDao;
        System.out.println("userService setUserDao");
    }

    @Override
    public void destroy() throws Exception {
        System.out.println("userService destroy...");
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("userService afterPropertiesSet init...");
    }
}
