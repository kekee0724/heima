package com.study.demo.tx.app.service;

import com.study.demo.tx.AppConfig;
import com.study.demo.tx.WebConfig;
import com.study.demo.tx.app.controller.AccountController;
import org.springframework.boot.context.properties.ConfigurationPropertiesBindingPostProcessor;
import org.springframework.context.annotation.AnnotationConfigUtils;
import org.springframework.context.support.GenericApplicationContext;

import java.io.FileNotFoundException;

//现在配置了父子容器，WebConfig 对应子容器，AppConfig 对应父容器，发现事务依然失效
//        原因：子容器扫描范围过大，把未加事务配置的 service 扫描进来
//        解法1：各扫描各的，不要图简便
//        解法2：不要用父子容器，所有 bean 放在同一容器
public class TestService5 {
    public static void main(String[] args) throws FileNotFoundException {
        GenericApplicationContext parent = new GenericApplicationContext();
        AnnotationConfigUtils.registerAnnotationConfigProcessors(parent.getDefaultListableBeanFactory());
        ConfigurationPropertiesBindingPostProcessor.register(parent.getDefaultListableBeanFactory());
        parent.registerBean(AppConfig.class);
        parent.refresh();

        GenericApplicationContext child = new GenericApplicationContext();
        AnnotationConfigUtils.registerAnnotationConfigProcessors(child.getDefaultListableBeanFactory());
        child.setParent(parent);
        child.registerBean(WebConfig.class);
        child.refresh();

        AccountController bean = child.getBean(AccountController.class);
        bean.transfer(1, 2, 500);
    }
}