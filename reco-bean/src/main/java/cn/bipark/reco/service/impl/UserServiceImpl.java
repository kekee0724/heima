package cn.bipark.reco.service.impl;

import cn.bipark.reco.domain.User;
import cn.bipark.reco.mapper.UserMapper;
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
    private UserMapper userMapper;

    public UserServiceImpl() {
        System.out.println("初始化了");
    }

    /*public void setUserDao(UserDaoImpl userDao) {
        this.userDao = userDao;
        System.out.println("userService setUserDao");
    }*/

    @Override
    public void destroy() throws Exception {
        System.out.println("userService destroy...");
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("userService afterPropertiesSet init...");
    }

    @Override
    public void save(User user) {

    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public void update(User user) {

    }

    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }

    @Override
    public User findById(Long id) {
        return userMapper.findById(id);
    }

}
