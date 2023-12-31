package com.kekee.advice;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.springframework.aop.AfterReturningAdvice;
import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;

public class MyAdvice3 implements MethodInterceptor {
    @Override
    public Object invoke(MethodInvocation methodInvocation) throws Throwable {
        System.out.println("环绕前******");
        // 执行目标方法
        Object obj = methodInvocation.getThis();
        Object[] arguments = methodInvocation.getArguments();
        Object result = methodInvocation.getMethod().invoke(obj, arguments);
        System.out.println("环绕后******");
        return result;
    }
}
