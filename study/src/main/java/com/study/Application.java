package com.study;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.config.AutowireCapableBeanFactory;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.support.AbstractBeanFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.ClassPathBeanDefinitionScanner;
import org.springframework.context.support.AbstractApplicationContext;
import java.util.Arrays;

//阶段1：处理名称，检查缓存
//阶段2：检查父工厂
//阶段3：检查DependsOn
//阶段4：按Scope创建bean
//        创建singleton 创建prototype 创建其它scope
//阶段5：创建bean
//        创建bean实例 依赖注入 初始化 登记可销毁bean
//阶段6：类型转换
//阶段7：销毁bean
@SpringBootApplication
public class Application {
    public static void main(String[] args) {
        ConfigurableApplicationContext context = SpringApplication.run(Application.class);
//        ConfigurableListableBeanFactory factory = context.getBeanFactory();
//        BeanFactory factory = context.getParentBeanFactory();
//        AutowireCapableBeanFactory factory = context.getAutowireCapableBeanFactory();

//        Class<?>[] primarySources = new Class<?>[]{Application.class};
//        new SpringApplication(primarySources).run(args);
    }
}
