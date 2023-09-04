package com.kekee;

import com.kekee.config.SpringConfig;
import com.kekee.service.UserService;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ApplicationContextTest {

    public static void main(String[] args) {
        System.setProperty("spring.profiles.active","test");

        // xml方式的Spring容器
//         ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext2.xml");
        // 注解方式去加载Spring的核心配置类
        AnnotationConfigApplicationContext applicationContext = new AnnotationConfigApplicationContext(SpringConfig.class);
        /*UserDao userDao = applicationContext.getBean(UserDao.class);
        userDao.show();*/

        UserService userService = applicationContext.getBean(UserService.class);
        userService.show1();

//         System.out.println(applicationContext.getBean(OtherBean3.class));

        applicationContext.close();
    }
}