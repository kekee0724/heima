package com.kekee.processor;

import com.kekee.dao.impl.UserDaoImpl;
import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;

public class MyBeanPostProcessor implements BeanPostProcessor {
    @Override
    public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
        if (bean instanceof UserDaoImpl) {
            UserDaoImpl dao = (UserDaoImpl) bean;
            dao.setUsername("可喜可贺");
        }
        System.out.println(beanName + ": BeanPostProcessor的before方法");
        return bean;
//        return BeanPostProcessor.super.postProcessBeforeInitialization(bean, beanName);
    }

    @Override
    public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
        System.out.println(beanName + ": BeanPostProcessor的after方法");
        return bean;
//        return BeanPostProcessor.super.postProcessAfterInitialization(bean, beanName);
    }
}
