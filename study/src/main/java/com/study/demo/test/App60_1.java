package com.study.demo.test;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.aop.aspectj.annotation.AnnotationAwareAspectJAutoProxyCreator;
import org.springframework.beans.factory.ObjectFactory;
import org.springframework.beans.factory.ObjectProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.context.annotation.AnnotationConfigUtils;
import org.springframework.context.annotation.Lazy;
import org.springframework.context.support.GenericApplicationContext;

import javax.annotation.PostConstruct;

public class App60_1 {
    public static void main(String[] args) {
        GenericApplicationContext context = new GenericApplicationContext();
        context.registerBean("a", A.class);
        context.registerBean("b", B.class);
        context.registerBean(MyAspect.class);
        context.registerBean(AnnotationAwareAspectJAutoProxyCreator.class);
        DefaultListableBeanFactory factory = context.getDefaultListableBeanFactory();
        AnnotationConfigUtils.registerAnnotationConfigProcessors(factory);
        context.refresh();

        context.getBean(A.class).foo();
        System.out.println(context.getBean(A.class).getClass());

//        System.out.println(context.getBean(A.class).b.getObject());
        System.out.println(context.getBean(B.class).getClass());

    }

    static class A {
        private static final Logger log = LoggerFactory.getLogger("A");
        //        private B b;
//        private ObjectFactory<B> b;
        private ObjectProvider<B> b;

        //        public A(@Lazy B b) {
//            log.debug("A(B b) {}", b.getClass());
//            this.b = b;
//        }
        public A(ObjectProvider<B> b) {
            log.debug("A(B b) {}", b.getClass());
            this.b = b;
        }

        @PostConstruct
        public void init() {
            log.debug("init()");
        }

        public void foo() {
            System.out.println("foo()");
        }

    }

    static class B {
        private static final Logger log = LoggerFactory.getLogger("B");
        private A a;

        public B(A a) {
            log.debug("B(A a) {}", a.getClass());
            this.a = a;
        }

        @PostConstruct
        public void init() {
            log.debug("init()");
        }
    }

    @Aspect
    static class MyAspect {
        @Before("execution(* foo())")
        public void before() {
            System.out.println("before...");
        }
    }
}
