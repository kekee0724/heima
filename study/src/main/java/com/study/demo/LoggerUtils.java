package com.study.demo;

import com.study.demo.tx.app.service.Service7;
//import org.apache.commons.logging.Log;
//import org.apache.commons.logging.LogFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.transaction.TransactionDefinition; //#withDefaults
//import org.springframework.aop.TruePointcut; //#INSTANCE
//import org.springframework.aop.interceptor.Exposelnvocationlnterceptor; //#ADVISOR

import org.springframework.beans.factory.support.BeanDefinitionBuilder;

public class LoggerUtils {
    //    private static Log log = LogFactory.getLog(LoggerUtils.class);
    private static final Logger logger = LoggerFactory.getLogger(Service7.class);

    //    public static Log get() {
//        return LogFactory.getLog(getClassName());
//    }
    public static Logger get() {
        return LoggerFactory.getLogger(getClassName());
    }

//    public static Log get(String name) {
////        LoggerUtils.get(name).debug("begin...");
//        return LogFactory.getLog(getClassName());
//    }

    public static Logger get(String name) {
//        LoggerUtils.get(name).debug("begin...");
        return LoggerFactory.getLogger(getClassName());
    }

    /**
     * 获取调用 error,info,debug静态类的类名
     */
    private static String getClassName() {
        return new SecurityManager() {
            public String getClassName() {
                return getClassContext()[3].getName();
            }
        }.getClassName();

    }
}
