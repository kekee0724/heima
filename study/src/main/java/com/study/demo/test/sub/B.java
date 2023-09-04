package com.study.demo.test.sub;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

/**
 * @Scope 创建代理对象
 */
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
@Component
public class B {
    private static final Logger log = LoggerFactory.getLogger("B");
    private A a;

    public B(A a) {
        log.debug("B(A a) {}", a.getClass());
        this.a = a;
    }

    @PostConstruct
    public void init() {
        log.debug("init()");
    }
}

