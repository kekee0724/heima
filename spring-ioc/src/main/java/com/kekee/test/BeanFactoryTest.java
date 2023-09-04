package com.kekee.test;

import com.kekee.dao.UserDao;
import com.kekee.service.UserService;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;

import java.util.Arrays;

public class BeanFactoryTest {
    public static void main(String[] args) {
        // 创建工厂对象
        DefaultListableBeanFactory beanFactory = new DefaultListableBeanFactory();
        // 创建读取器（xml文件）
        XmlBeanDefinitionReader reader = new XmlBeanDefinitionReader(beanFactory);
        // 读取配置文件给工厂
        reader.loadBeanDefinitions("dao.xml");
        // 根据id获取bean实例
        UserService userService = (UserService) beanFactory.getBean("userService");
        System.out.println(userService);
        System.out.println(beanFactory.getBean(UserService.class));
        System.out.println(beanFactory.getBean(UserDao.class));
        System.out.println(Arrays.toString(beanFactory.getBeanDefinitionNames()));
    }
}
