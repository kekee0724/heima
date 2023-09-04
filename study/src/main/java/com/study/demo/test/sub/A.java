package com.study.demo.test.sub;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;

@Component
public class A {
    private static final Logger log = LoggerFactory.getLogger("A");
    private B b;

    public A(B b) {
        log.debug("A(B b) {}", b.getClass());
        this.b = b;
    }


    @PostConstruct
    public void init() {
        log.debug("init()");
    }

    public void foo() {
        System.out.println("foo()");
    }



}
