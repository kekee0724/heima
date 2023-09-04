package com.kekee.service.impl;

import com.kekee.dao.UserDao;
import com.kekee.mapper.UserMapper;
import com.kekee.pojo.User;
import com.kekee.service.UserService;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.web.context.ServletConfigAware;

import javax.servlet.ServletConfig;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

//import org.springframework.stereotype.Service;

//@Service
public class UserServiceImpl implements UserService, InitializingBean, ServletConfigAware, ApplicationContextAware, BeanFactoryAware, BeanNameAware {

    private UserDao userDao;

    private List<String> stringList;

    private Set<String> stringSet;

    private List<UserDao> userDaoList;

    private Properties properties;

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public void show() {
        List<User> users = userMapper.findAll();
        for (User user : users) {
            System.out.println(user);
        }
    }

    public void setProperties(Properties properties) {
        this.properties = properties;
        System.out.println("UserService：执行注入properties的操作：setProperties方法执行 -> " + properties);
    }

    public void setUserDaoMap(Map<String, UserDao> userDaoMap) {
        this.userDaoMap = userDaoMap;
        System.out.println(userDaoMap);
    }

    private Map<String, UserDao> userDaoMap;

    public void setUserDaoList(List<UserDao> userDaoList) {
        this.userDaoList = userDaoList;
        System.out.println(userDaoList);
    }

    public void setStringSet(Set<String> stringSet) {
        this.stringSet = stringSet;
        System.out.println(stringSet);
    }

    public void setStringList(List<String> stringList) {
        this.stringList = stringList;
        System.out.println(stringList);
    }

    //BeanFactory去调用该方法从容器中获得serDao设置到此处
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
        System.out.println("UserService：属性注入,需要UserDao,从缓存中获取,没有UserDao -> UserService注入UserDao -> " + userDao);
    }

    public UserServiceImpl() {
        System.out.println("UserService：实例化 无参构造");
    }

    public UserServiceImpl(String name) {
        System.out.println("UserService：实例化 有参构造：" + name);
    }

    public UserServiceImpl(String name, int age) {
        System.out.println("UserService：实例化对象,但尚未初始化,将UserService存储到三级缓存 -> 有参构造：" + name + " " + age);
    }

    public void init() {
        System.out.println("UserService：init初始化方法执行...");
    }

    public void destroy() {
        System.out.println("UserService：destroy销毁方法执行...");
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("UserService：执行其他生命周期过程，最终成为一个完成Bean，存储到一级缓存，删除二三级缓存；");
        System.out.println("UserService：InitializingBean初始化：属性设置之后执行...");
    }

    @Override
    public void setServletConfig(ServletConfig servletConfig) {
        System.out.println(servletConfig);
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        System.out.println(applicationContext);
    }

    @Override
    public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
        System.out.println(beanFactory);
    }

    @Override
    public void setBeanName(String name) {
        System.out.println(name);
    }
}
