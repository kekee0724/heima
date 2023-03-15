package cn.bipark.reco.advice;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.util.Arrays;

//  AOP通知获取数据
//  1.获取切入点方法的参数
//  ■JoinPoint：适用于前置、后置、返回后、抛出异常后通知
//  ■ProceedJoinPoint：适用于环绕通知
//  2.获取切入点方法返回值
//  ■返回后通知
//  ■环绕通知
//  3获取切入点方法运行异常信息
//  ■抛出异常后通知
//  ■环绕通知
@Component
@Aspect
public class MyAdvice {

    @Pointcut("execution(* cn.bipark.reco.dao.UserDao.findName(..))")
    private void pt() {
    }

    @Pointcut("execution(int cn.bipark.reco.dao.UserDao.select())")
    private void pt2() {
    }

    //    @Before("pt()")
    public void before(JoinPoint jp) {
        Object[] args = jp.getArgs();
        System.out.println(Arrays.toString(args));
        System.out.println("before advice ...");
    }

    //    @After("pt()")
    public void after(JoinPoint jp) {
        Object[] args = jp.getArgs();
        System.out.println(Arrays.toString(args));
        System.out.println("after advice ...");
    }

    //    @Around("pt()")
    public void around(ProceedingJoinPoint pjp) throws Throwable {
        Object[] args = pjp.getArgs();
        System.out.println(Arrays.toString(args));
        System.out.println("around before advice...");
        // 表示对原始操作的调用
        pjp.proceed();
        System.out.println("around after advice...");
    }

    // 没有异常才会执行
//    @AfterReturning(value = "pt()", returning = "obj")
    //    public void afterReturning(Object obj) {
    public void afterReturning(JoinPoint jp, Object obj) {
        Object[] args = jp.getArgs();
        System.out.println(Arrays.toString(args));
        System.out.println("afterReturning advice ... " + obj);
    }

    // 有异常才会执行
    @AfterThrowing(value = "pt()", throwing = "t")
    public void afterThrowing(Throwable t) {
        System.out.println("afterThrowing advice ..." + t);
    }
}
