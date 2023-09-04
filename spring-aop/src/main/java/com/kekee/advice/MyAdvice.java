package com.kekee.advice;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

//增强类，内部提供增强方法
@Component
@Aspect
public class MyAdvice {
    @Pointcut("execution(void com.kekee.service..*.*(..))")
    public void myPointCut() {
    }

    //     <aop:before method="beforeAdvice" pointcut="execution(void com.kekee.service..*.*(..))"/>
    @Before("execution(* com.kekee.service.impl.*.*(..))")
    public void beforeAdvice(JoinPoint joinPoint) {
        System.out.println("当前目标对象是: " + joinPoint.getTarget());
        System.out.println("表达式: " + joinPoint.getStaticPart());
        System.out.println("前置的增强...");
    }

    @AfterReturning("execution(* com.kekee.service.impl.*.*(..))")
    public void afterReturningAdvice() {
        System.out.println("后置的增强...");
    }

    @After("execution(* com.kekee.service.impl.*.*(..))")
    public void afterAdvice() {
        System.out.println("最终的增强...");
    }

    @Around("MyAdvice.myPointCut()")
    public Object aroundAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        System.out.println("环绕前的增强...");
        //环绕目标方法
        Object result = proceedingJoinPoint.proceed();
        System.out.println("环绕后的增强...");
        return result;
    }

    //    <aop:after-throwing method="afterThrowingAdvice" pointcut-ref="myPointCut" throwing="e"/>
    @AfterThrowing(value = "execution(* com.kekee.service.impl.*.*(..))", throwing = "e")
    public void afterThrowingAdvice(Throwable e) {
        System.out.println("当前异常信息是: " + e);
        System.out.println("异常抛出通知...报异常才执行");
    }
}
