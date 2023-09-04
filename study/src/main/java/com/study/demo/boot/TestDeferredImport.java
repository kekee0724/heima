package com.study.demo.boot;

import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.*;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.core.type.AnnotationMetadata;

public class TestDeferredImport {

    public static void main(String[] args) {
        GenericApplicationContext context = new GenericApplicationContext();
        DefaultListableBeanFactory beanFactory = context.getDefaultListableBeanFactory();
        beanFactory.setAllowBeanDefinitionOverriding(false); // 不允许同名定义覆盖
        AnnotationConfigUtils.registerAnnotationConfigProcessors(beanFactory);
        context.registerBean(MyConfig.class);
        context.refresh();

        System.out.println(context.getBean(MyBean.class));
        for (String name : context.getBeanDefinitionNames()) {
            System.out.println(name);
        }
    }

    //1。同一配置类中，@Import先解析 @Bean后解析
    //2。同名定义，默认后面解析的会覆盖前面解析的
    //3。不允许覆盖的情况下，如何能够让MyConfig(主配置类)的配置优先？（虽然覆盖方式能解决）
    //4。DeferredImportSelector最后工作，可以简单认为先解析@Bean，再Import
    @Configuration
//    @Import(OtherConfig.class)
    @Import(MySelector.class)
    static class MyConfig { // 主配置
        @Bean
        public MyBean myBean() {
            return new Bean1();
        }
    }

    @Configuration
    static class OtherConfig { // 从属配置 - 自动配置
        @Bean
        @ConditionalOnMissingBean
        public MyBean myBean() {
            return new Bean2();
        }
    }

    static class MySelector implements DeferredImportSelector {
        @Override
        public String[] selectImports(AnnotationMetadata importingClassMetadata) {
            return new String[]{OtherConfig.class.getName()};
        }
    }

    interface MyBean {

    }

    static class Bean1 implements MyBean {
    }

    static class Bean2 implements MyBean {
    }

    static class Bean3 {
    }

    static class Bean4 {
    }

    static class Bean5 {
    }
}