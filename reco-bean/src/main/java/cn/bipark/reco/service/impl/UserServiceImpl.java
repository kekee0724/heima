package cn.bipark.reco.service.impl;

import cn.bipark.reco.domain.User;
import cn.bipark.reco.dao.UserDao;
import cn.bipark.reco.service.LogService;
import cn.bipark.reco.service.UserService;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Lazy
public class UserServiceImpl implements UserService, InitializingBean, DisposableBean {

//    UserDao userDao;

    /*final UserMapper userMapper;
    public UserServiceImpl(UserMapper userMapper) {
        System.out.println("初始化了");
        this.userMapper = userMapper;
    }*/

    @Autowired
    private UserDao userDao;

    @Autowired
    private LogService logService;
    public UserServiceImpl() {
        System.out.println("初始化了");
    }

    /*public void setUserDao(UserDaoImpl userDao) {
        this.userDao = userDao;
        System.out.println("userService setUserDao");
    }*/

    @Override
    public boolean save(User user) {
        userDao.save(user);
        return true;
    }

    @Override
    public boolean update(User user) {
        userDao.update(user);
        return true;
    }

    @Override
    public boolean delete(Long id) {
        userDao.delete(id);
        return true;
    }

    @Override
    public User getById(Long id) {
        return userDao.getById(id);
    }

    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }

    @Override
    public boolean openURL(String url, String password) {
        return "root".equals(password);
    }

    @Override
    public void transfer(String out, String in, Double money) {
        try {
            userDao.outMoney(out, money);
            int i = 1 / 0;
            userDao.inMoney(in, money);
        } finally {
            logService.transfer(out, in, money);
        }
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
