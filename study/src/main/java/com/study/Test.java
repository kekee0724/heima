package com.study;

import com.study.service.UserService;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Test {
    // 1、Spring是如何创建一个Bean对象的？
// 2、什么是单例池？作用是什么？
// 3、Bean对象和普通对象之间的区别是什么？
// 4、依赖注入是怎么实现的？
// 5、@PostConstruct注解是如何工作的？
// 6、Bean的初始化是如何工作的？
// 7、Bean的初始化和实例化区别是什么？
// 8、推断构造方法是什么意思？
// 9、单例Bean和单例模式之间有什么关系
// 10、什么是先byType再byName？
// 11、Spring AOP底层是怎么工作的？
// 12、Spring事务底层是怎么工作的？
// 13、同类方法调用为什么会事务失效？
// 14、@Configuration，注解的作用是什么？
// 15、Spring为什么要用三级缓存来解决循环依赖？
    public static void main(String[] args) {
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        UserService userService = (UserService) context.getBean("userService");
        UserService userService1 = (UserService) context.getBean("userService");
        UserService userService2 = (UserService) context.getBean("userService");
//        UserService userService = new UserService();
        userService.test();
    }
}
