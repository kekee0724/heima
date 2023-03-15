package cn.bipark.reco;

import cn.bipark.reco.config.SpringConfig;
import cn.bipark.reco.dao.UserDao;
import cn.bipark.reco.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Application {
    public static void main(String[] args) {
        ConfigurableApplicationContext ctx = new AnnotationConfigApplicationContext(SpringConfig.class);
//        ClassPathXmlApplicationContext ctx =new ClassPathXmlApplicationContext("application-context.xml");
        ctx.registerShutdownHook(); // 注册关闭钩子
        UserService userService = ctx.getBean(UserService.class);
//        System.out.println(userService.getClass());
//        UserDao userDao = ctx.getBean(UserDao.class);
//        userDao.update();
//        System.out.println(userDao.select());
//        System.out.println(userDao.toString() + ": " + userDao.getClass());
//        System.out.println(userDao.findName(100));
//        System.out.println(userService.openURL("http", "root "));
        userService.transfer("shinelymi", "admin", 100D);
//        ctx.close(); // 手工关闭容器
    }
}
