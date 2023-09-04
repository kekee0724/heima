package com.kekee.service.impl;

import com.kekee.dao.UserDao;
import com.kekee.mapper.UserMapper;
import com.kekee.pojo.User;
import com.kekee.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

//@Component("userService")
@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired //根据类型进行注入,如果同一类型的Bean有多个，尝试根据名字进行二次匹配
//    @Qualifier("userDao") // 在此，结合@Autowired一起使用，作用是根据名称注入相应的Bean
//    @Resource // 不指定名称参数时，根据类型注入，指定name就根据名称注入
    private UserDao userDao;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    void xxx(UserDao userDao) {
//        System.out.println("xxx:" + userDao);
    }

    @Autowired
    void yyy(List<UserDao> userDaos) {
//        System.out.println("yyy:" + userDaos);
    }

    @Override
    public void show() {
        List<User> users = userMapper.findAll();
        for (User user : users) {
            System.out.println(user);
        }
//        System.out.println(userDao);
    }
}
