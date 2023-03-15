package cn.bipark.reco;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Application {
    public static void main(String[] args) {
        ClassPathXmlApplicationContext ctx =new ClassPathXmlApplicationContext("application-context.xml");
        ctx.registerShutdownHook(); // 注册关闭钩子
        Object userService = ctx.getBean("userService");
        System.out.println(userService);
        Object userDao = ctx.getBean("userDao");
        System.out.println(userDao);
//        ctx.close(); // 手工关闭容器
    }
}
