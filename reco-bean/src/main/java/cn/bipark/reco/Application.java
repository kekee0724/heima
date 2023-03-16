package cn.bipark.reco;

import cn.bipark.reco.config.SpringConfig;
import cn.bipark.reco.dao.UserDao;
import cn.bipark.reco.service.UserService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * SSM整合流程
 *    1.创建工程
 *    2.SSM整合
 *    ● Spring
 *        ■ SpringConfig
 *    ● MyBatis
 *        ■ MybatisConfig
 *        ■ JdbcConfig
 *        ■ jdbc.properties
 *    ● SpringMVC
 *        ■ ServletConfig
 *        ■ SpringMvcConfig
 *    3.功能模块
 *    ● 表与实体类
 *    ● dao(接口+自动代理)
 *    ● service（接口+实现类)
 *        ■ 业务层接口测试（整合JUnit)
 *    ●controller
 *        ■ 表现层接口测试(PostMan)
 */
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
