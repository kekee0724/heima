package com.study.demo.test;

import org.aopalliance.aop.Advice;
import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.aop.aspectj.AspectJExpressionPointcut;
import org.springframework.aop.framework.ProxyFactory;
import org.springframework.aop.support.DefaultPointcutAdvisor;
//import org.springframework.aop.support.DefaultPointcutAdvisor;

public class App64_2 {
    public static void main(String[] args) {
        // aspect = 通知(advice) + 切点(pointcut), 一个切面类中可能有一到多个通知方法
        // advisor = 更细粒度的切面,包含一个通知和切点
        ProxyFactory proxyFactory = new ProxyFactory();
        proxyFactory.setTarget(new Target1()); //设置目标对象

        /*proxyFactory.addAdvice((MethodInterceptor) invocation -> { // 添加通知,MethodInterceptor是环绕通知
            try {
                System.out.println("before...");
                return invocation.proceed(); // 调用目标
            } finally {
                System.out.println("after...");
            }
        });*/

        AspectJExpressionPointcut pointcut = new AspectJExpressionPointcut();
        pointcut.setExpression("execution(* foo())");

        proxyFactory.addAdvisor(new DefaultPointcutAdvisor(pointcut, (MethodInterceptor) invocation -> { // 添加通知,MethodInterceptor是环绕通知
            try {
                System.out.println("before...");
                return invocation.proceed(); // 调用目标
            } finally {
                System.out.println("after...");
            }
        }));
        proxyFactory.addInterface(I1.class);
        proxyFactory.setProxyTargetClass(true);

        I1 proxy = (I1) proxyFactory.getProxy(); // 创建代理对象
//        Target1 proxy = (Target1) proxyFactory.getProxy(); // 创建代理对象
        System.out.println(proxy.getClass());
        proxy.foo();
        proxy.bar();
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

    interface I1 {
        void foo();

        void bar();
    }

    static class Target1 implements I1 {
        public void foo() {
            System.out.println("target1 foo");
        }

        public void bar() {
            System.out.println("target1 bar");
        }
    }

}