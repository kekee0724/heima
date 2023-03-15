package cn.bipark.reco.advice;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class ProjectAdvice {

    // 匹配业务层所有方法
    @Pointcut("execution(* cn.bipark.reco.service.*Service.*(..))")
    private void servicePt() {
    }

    @Around("servicePt()")
    public Object runSpeed(ProceedingJoinPoint pjp) throws Throwable {
        Signature signature = pjp.getSignature();
        String className = signature.getDeclaringTypeName();
        String methodName = signature.getName();
        System.out.println(signature.toShortString());
        Object obj = null;
        long start = System.currentTimeMillis();
        for (int i = 0; i < 10000; i++) {
            obj = pjp.proceed();
        }
        long end = System.currentTimeMillis();
        System.out.println("万次执行：" + className + "." + methodName + "---->" + (end - start) + "ms");
        return obj;
    }
}
