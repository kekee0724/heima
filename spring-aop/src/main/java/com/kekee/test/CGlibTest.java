package com.kekee.test;

import org.springframework.cglib.proxy.Enhancer;
import org.springframework.cglib.proxy.MethodInterceptor;
import org.springframework.cglib.proxy.MethodProxy;

import java.lang.reflect.Method;

public class CGlibTest {
    public static void main(String[] args) {
        // CG1ib基于父类（目标类）生成Proxy
        // 目标对象
        Target target = new Target();
        // 通知对象（增强对象）
        Advices advices = new Advices();
        //编写CGlib的代码
        Enhancer enhancer = new Enhancer();
        // 设置父类
        enhancer.setSuperclass(Target.class); //生成的代理对象就是Target的子类
        // 设置回调
        //intercept方法相当于JDK的Proxy.的invoke.方法
        enhancer.setCallback((MethodInterceptor) (o, method, objects, methodProxy) -> {
            advices.before();
            //执行目标方法
            Object result = method.invoke(target, objects);
            advices.after();
            return result;
        });
        //生成代理对象
        Target proxy = (Target) enhancer.create();
        // 测试
        proxy.show();
    }
}
