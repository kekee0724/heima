package com.kekee.processor;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.BeanDefinitionRegistryPostProcessor;

import java.util.Map;

import com.kekee.utils.BaseClassScanUtils;
import org.springframework.beans.factory.support.RootBeanDefinition;

public class MyComponentBeanFactoryPostProcessor implements BeanDefinitionRegistryPostProcessor {

    @Override
    public void postProcessBeanDefinitionRegistry(BeanDefinitionRegistry registry) throws BeansException {
        //通过扫描工具去扫描指定包及其子包下的所有类，收集使用MyComponent，的注解的类
        Map<String, Class> myComponentAnnotationMap = BaseClassScanUtils.scanMyComponentAnnotation("com.kekee");
        //遍历Map,组装BeanDefinition.进行注册
        myComponentAnnotationMap.forEach((beanName, clazz) -> registry.registerBeanDefinition(beanName, new RootBeanDefinition(clazz.getName())));
//        System.out.println(stringClassMap);
    }

    @Override
    public void postProcessBeanFactory(ConfigurableListableBeanFactory beanFactory) throws BeansException {

    }
}
