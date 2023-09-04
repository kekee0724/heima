package com.study.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class MyAspect {
    @Before("execution(public void com.study.service.UserService.test())")
    public void myBefore(JoinPoint joinPoint) {
        System.out.println("myBefore");
    }
}
