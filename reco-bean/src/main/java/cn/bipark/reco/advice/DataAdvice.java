package cn.bipark.reco.advice;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

//■AOP总结
//    ■概念：AOP(Aspect Oriented Programming)面向切面编程，一种编程范式
//    ■作用：在不惊动原始设计的基础上为方法进行功能增强
//    ■核心概念
//        ■代理(Proxy)：SpringAOP的核心本质是采用代理模式实现的
//        ■连接点(JoinPoint)：在SpringAOP中，理解为任意方法的执行
//        ■切入点(Pointcut)：匹配连接点的式子，也是具有共性功能的方法描述
//        ■通知(Advice)：若干个方法的共性功能，在切入点处执行，最终体现为一个方法
//        ■切面(Aspect)：描述通知与切入点的对应关系
//        ■目标对象(Target)：被代理的原始对象成为目标对象
//    ■切入点表达式标准格式：动作关键字（访问修饰符 返回值 包名.类/接口名.方法名（参数)异常名)
//        execution(* com.itheima.ervice.*Service.*(..))
//    ■切入点表达式描述通配符：
//        ■ 作用 ：用于快速描述，范围描述
//        ■ * ：匹配任意符号（常用）
//        ■ .. ：匹配多个连续的任意符号（常用)
//        ■ + ：匹配子类类型

@Component
@Aspect
public class DataAdvice {
    @Pointcut("execution(boolean cn.bipark.reco.service.*Service.*(*,*))")
    public void servicePt() {
    }

    @Around("servicePt()")
    public Object trimStr(ProceedingJoinPoint pjp) throws Throwable {
        Object[] args = pjp.getArgs();
        // 对原始参数的每一个参数进行操作
        for (int i = 0; i < args.length; i++) {
            // 判断是否String
            if (args[i].getClass().equals(String.class)) {
                args[i] = args[i].toString().trim();
            }
        }
        Object obj = pjp.proceed(args);
        return obj;
    }
}
