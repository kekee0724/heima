package com.kekee.processor;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.BeanFactoryPostProcessor;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.support.RootBeanDefinition;

public class MyBeanFactoryPostProcessor implements BeanFactoryPostProcessor {
    @Override
    public void postProcessBeanFactory(ConfigurableListableBeanFactory beanFactory) throws BeansException {
        System.out.println("beanDefinitionMap填充完毕后回调该方法");
        // 注册一个beanDefinition
        RootBeanDefinition definition = new RootBeanDefinition();
        definition.setBeanClassName("com.kekee.dao.impl.PersonDaoImpl");
        // 强转为defaultListableBeanFactory
        DefaultListableBeanFactory defaultListableBeanFactory = (DefaultListableBeanFactory) beanFactory;
        defaultListableBeanFactory.registerBeanDefinition("personDao", definition);
        // 修改某个beanDefinition
        BeanDefinition beanDefinition = beanFactory.getBeanDefinition("userService1");
        beanDefinition.setBeanClassName("com.kekee.dao.impl.UserDaoImpl");
    }
}
