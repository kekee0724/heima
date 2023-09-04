package com.study.demo.boot;

import com.study.demo.LoggerUtils;
import com.study.demo.boot.sub.Bean1;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.boot.autoconfigure.AutoConfigurationPackage;
import org.springframework.boot.autoconfigure.AutoConfigurationPackages;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.context.TypeExcludeFilter;
import org.springframework.context.annotation.*;
import org.springframework.context.support.GenericApplicationContext;
import org.springframework.core.io.support.ResourcePropertySource;
import org.springframework.core.type.classreading.MetadataReader;
import org.springframework.core.type.classreading.MetadataReaderFactory;

import java.io.IOException;

public class TestAutoConfiguration {
    public static void main(String[] args) throws IOException {
        GenericApplicationContext context = new GenericApplicationContext();
        DefaultListableBeanFactory beanFactory = context.getDefaultListableBeanFactory();
        AnnotationConfigUtils.registerAnnotationConfigProcessors(beanFactory);
//        context.getEnvironment().getPropertySources().addLast(new ResourcePropertySource("application.properties"));
        context.registerBean(MyConfig.class);
        context.refresh();

        System.out.println(AutoConfigurationPackages.get(beanFactory));

        for (String name : context.getBeanDefinitionNames()) {
            System.out.println(name);
        }
    }

    @Configuration
    @AutoConfigurationPackage
    @EnableAutoConfiguration(excludeName = {
            "org.springframework.boot.autoconfigure.admin.SpringApplicationAdminJmxAutoConfiguration",
            "org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration"
    })
    static class MyConfig {
    }

    @Configuration
    static class OtherConfig { // 从属配置 - 自动配置、默认配置
        @Bean
        public Bean1 bean1() {
            return new Bean1();
        }

        @Bean
        public Bean2 bean2() {
            return new Bean2();
        }


    }

    static class Bean1 {
    }

    static class Bean2 {
    }

}


