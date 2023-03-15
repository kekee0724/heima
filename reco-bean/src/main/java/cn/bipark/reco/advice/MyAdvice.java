package cn.bipark.reco.advice;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyAdvice {

    @Pointcut("execution(void cn.bipark.reco.dao.UserDao.update())")
    private void pt() {
    }

    @Pointcut("execution(int cn.bipark.reco.dao.UserDao.select())")
    private void pt2() {
    }

//    @Before("pt()")
    public void before() {
        System.out.println("before advice ...");
    }

//    @After("pt()")
    public void after() {
        System.out.println("after advice ...");
    }

//    @Around("pt()")
    public void around(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        System.out.println("around before advice...");
        // 表示对原始操作的调用
        proceedingJoinPoint. proceed();
        System.out.println("around after advice...");
    }

//    @Around("pt2()")
    public Object around2(ProceedingJoinPoint proceedingJoinPoint) throws Throwable {
        System.out.println("around before advice...");
        // 表示对原始操作的调用
        Object obj = proceedingJoinPoint.proceed();
        System.out.println("around after advice...");
        return obj;
    }

    // 没有异常才会执行
//    @AfterReturning("pt2()")
    public void afterReturning() {
        System.out.println("afterReturning advice ...");
    }

    // 有异常才会执行
    @AfterThrowing("pt2()")
    public void afterThrowing() {
        System.out.println("afterThrowing advice ...");
    }
}
