package cn.bipark.reco.advice;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

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
