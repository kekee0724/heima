package com.study.demo.test.sub;

import com.study.demo.test.sub.A;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.aspectj.annotation.AnnotationAwareAspectJAutoProxyCreator;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.context.annotation.AnnotationConfigUtils;
import org.springframework.context.annotation.ClassPathBeanDefinitionScanner;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.context.support.GenericApplicationContext;

import javax.annotation.PostConstruct;

public class App60_3 {
    public static void main(String[] args) {
        GenericApplicationContext context = new GenericApplicationContext();
//        context.registerBean("a", A.class);
//        context.registerBean("b", B.class);
//        context.registerBean(MyAspect.class);
        context.registerBean(AnnotationAwareAspectJAutoProxyCreator.class);
        DefaultListableBeanFactory factory = context.getDefaultListableBeanFactory();
//        AnnotationConfigUtils.registerAnnotationConfigProcessors(factory);

        ClassPathBeanDefinitionScanner scanner = new ClassPathBeanDefinitionScanner(factory);
        scanner.scan("com.study.demo.test.sub");

        context.refresh();

        context.getBean(A.class).foo();
        System.out.println(context.getBean(A.class).getClass());


    }

}
