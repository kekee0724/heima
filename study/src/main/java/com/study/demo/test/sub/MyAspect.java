package com.study.demo.test.sub;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class MyAspect {
    @Before("execution(* foo())")
    public void before() {
        System.out.println("before...");
    }
}
