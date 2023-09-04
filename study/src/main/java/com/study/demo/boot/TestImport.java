package com.study.demo.boot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.support.BeanDefinitionBuilder;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.context.annotation.*;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.core.type.AnnotationMetadata;

public class TestImport {

    public static void main(String[] args) {
        GenericApplicationContext context = new GenericApplicationContext();
        AnnotationConfigUtils.registerAnnotationConfigProcessors(context.getDefaultListableBeanFactory());
        context.registerBean(MyConfig.class);
        context.refresh();

        for (String name : context.getBeanDefinitionNames()) {
            System.out.println(name);
        }
    }

    @Configuration
//    @Import({Bean1.class})
//    @Import(Bean1.class)//1.引入单个bean
//    @Import(OtherConfig.class)//2.引入一个配置类
//    @Import(MySelector.class)//3.通过Selector引入多个
    @Import(MyRegistrar.class)//4。通过beanDefinition注册器
    static class MyConfig {

    }

    @Configuration
    static class OtherConfig {
        @Bean
        public Bean2 bean2() {
            System.out.println("bean2()");
            return new Bean2();
        }
    }

    static class MySelector implements ImportSelector {
        @Override
        public String[] selectImports(AnnotationMetadata importingClassMetadata) {
            return new String[]{Bean3.class.getName(), Bean4.class.getName()};
        }
    }

    static class MyRegistrar implements ImportBeanDefinitionRegistrar {
        @Override
        public void registerBeanDefinitions(AnnotationMetadata importingClassMetadata, BeanDefinitionRegistry registry) {
            registry.registerBeanDefinition("bean5", BeanDefinitionBuilder.genericBeanDefinition(Bean5.class).getBeanDefinition());
        }

    }

    static class Bean1 {
    }

    static class Bean2 {
    }

    static class Bean3 {
    }

    static class Bean4 {
    }

    static class Bean5 {
    }
}