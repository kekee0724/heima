package com.study.demo.tx.app.service;

import com.study.demo.LoggerUtils;
import org.springframework.aop.framework.AopContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.io.FileNotFoundException;

@Service
public class Service6 {
    //    调用本类方法导致传播行为失效
    //    原因：本类方法调用不经过代理，因此无法增强
    //    解法1：依赖注入自己（代理）来调用
    @Autowired
    private Service6 proxy; // 本质上是一种循环依赖

    //    解法2：通过 AopContext 拿到代理对象，来调用
    //    解法3：通过 CTW，LTW 实现功能增强（修改字节码，来进行的功能增强，CTW是在编译时期，LTW是在加载时期）
    @Transactional(propagation = Propagation.REQUIRED, rollbackFor = Exception.class)  // 默认的传播行为
    public void foo() throws FileNotFoundException {
        LoggerUtils.get().debug("log:{}", "foo");

        System.out.println(proxy.getClass());
        proxy.bar();

        //        还需要在 AppConfig 上添加 @EnableAspectJAutoProxy(exposeProxy = true)
//        ((Service6) AopContext.currentProxy()).bar();

//        System.out.println(this.getClass());
//        bar();
    }

    @Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = Exception.class)  // 不管之前有没有开启事务，它总会开启一个新的事务
    public void bar() throws FileNotFoundException {
        LoggerUtils.get().debug("log:{}", "bar");
    }
}