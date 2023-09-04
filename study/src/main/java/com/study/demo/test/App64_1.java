//package com.study.demo.test;
package org.springframework.aop.framework.autoproxy;

import org.aopalliance.intercept.MethodInterceptor;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.aop.aspectj.AspectJExpressionPointcut;
import org.springframework.aop.aspectj.annotation.AnnotationAwareAspectJAutoProxyCreator;
import org.springframework.aop.framework.ProxyFactory;
import org.springframework.aop.support.DefaultPointcutAdvisor;
import org.springframework.context.support.GenericApplicationContext;
//import org.springframework.aop.support.DefaultPointcutAdvisor;
import com.study.demo.test.App64_2.*;
import org.springframework.util.StringUtils;

public class App64_1 {
    public static void main(String[] args) {
        GenericApplicationContext context = new GenericApplicationContext();
        context.registerBean("aspect1", Aspect1.class);
        context.registerBean("aspect2", Aspect2.class);
        context.registerBean("aspect3", Aspect3.class);
        context.registerBean(AnnotationAwareAspectJAutoProxyCreator.class);//自动代理后处理器
//        StringUtils
//        context.registerBean("target1", Target1.class);
//        context.registerBean("target2", Target2.class);
        context.refresh();
//        Target1 target1 = context.getBean(Target1.class);
//        Target2 target2 = context.getBean(Target2.class);

//        target1.foo();
//        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
//        target2.bar();
        AnnotationAwareAspectJAutoProxyCreator creator = context.getBean(AnnotationAwareAspectJAutoProxyCreator.class);
        Object o = creator.wrapIfNecessary(new Target1(), "target1", "target1");
        System.out.println(o.getClass());
    }


    static class Target1 {
        public void foo() {
            System.out.println("target1 foo");
        }
    }

    static class Target2 {
        public void bar() {
            System.out.println("target2 bar");
        }
    }

    static class Target3 {
        public void biz() {
            System.out.println("target3 biz");
        }
    }

    @Aspect
    static class Aspect1 {
        @Around("execution(* foo())") // -> 一个 advisor切面
        public Object around(ProceedingJoinPoint pjp) throws Throwable {
            System.out.println("aspect1 around");
            return pjp.proceed();
        }
    }

    @Aspect
    static class Aspect2 {
        @Before("execution(* foo())")
        public void before() {
            System.out.println("aspect2 before");
        }
        @After("execution(* foo())")
        public void after() {
            System.out.println("aspect2 after");
        }
    }

    @Aspect
    static class Aspect3 {
        @Before("execution(* bar())")
        public void before() {
            System.out.println("aspect3 before");
        }
    }
}