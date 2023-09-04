package com.kekee;


import com.kekee.config.SpringConfig;
import com.kekee.service.AccountService;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ApplicationContextTest {

    public static void main(String[] args) {
        System.setProperty("spring.profiles.active", "test");

        // xml方式的Spring容器
        ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");
        // 注解方式去加载Spring的核心配置类
//        AnnotationConfigApplicationContext applicationContext = new AnnotationConfigApplicationContext(SpringConfig.class);

        AccountService accountService = applicationContext.getBean(AccountService.class);
        accountService.transferMoney("tom", "lucy", 50);


        applicationContext.close();
    }
}