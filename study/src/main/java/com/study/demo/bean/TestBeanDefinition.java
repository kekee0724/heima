package com.study.demo.bean;

import org.springframework.beans.factory.support.BeanDefinitionBuilder;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ClassPathBeanDefinitionScanner;
import org.springframework.context.annotation.ConfigurationClassPostProcessor;
import org.springframework.core.io.ClassPathResource;

import java.util.Arrays;

//BeanFactory的作用是负责bean的创建、依赖注入和初始化
//BeanDefinition作为bean的设计蓝图，规定了bean的特征，如单例多例、依赖关系、初始销毁方法等
//BeanDefinition的来源有多种多样，可以是通过Xml获得、通过配置类获得、通过组件扫描获得，也可以是编程添加
//演示各种BeanDefinition的来源 
public class TestBeanDefinition {

    public static void main(String[] args) {
        System.out.println("===========>一开始");
        DefaultListableBeanFactory beanFactory = new DefaultListableBeanFactory();
        System.out.println(Arrays.toString(beanFactory.getBeanDefinitionNames()));

        System.out.println("=============>1)从xml获取");
        XmlBeanDefinitionReader reader1 = new XmlBeanDefinitionReader(beanFactory);
        reader1.loadBeanDefinitions(new ClassPathResource("bd.xml"));
        System.out.println(Arrays.toString(beanFactory.getBeanDefinitionNames()));

        System.out.println("=============>2)从配置类获取");
        beanFactory.registerBeanDefinition("config1", BeanDefinitionBuilder.genericBeanDefinition(Config1.class).getBeanDefinition());
        ConfigurationClassPostProcessor postProcessor = new ConfigurationClassPostProcessor();
        postProcessor.postProcessBeanDefinitionRegistry(beanFactory);
        System.out.println(Arrays.toString(beanFactory.getBeanDefinitionNames()));

        System.out.println("=============>3)扫描获取");
        ClassPathBeanDefinitionScanner scanner = new ClassPathBeanDefinitionScanner(beanFactory);
        scanner.scan("com.study.demo.boot.sub");
        System.out.println(Arrays.toString(beanFactory.getBeanDefinitionNames()));

    }

    static class Bean1 {

    }

    static class Bean2 {

    }

    static class Config1 {
        @Bean
        public Bean2 bean2() {
            return new Bean2();
        }
    }
}