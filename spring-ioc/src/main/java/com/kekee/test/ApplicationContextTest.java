package com.kekee.test;

import com.kekee.service.UserService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.lang.reflect.Constructor;

public class ApplicationContextTest {

    public static void main(String[] args) throws Exception {
        //指定环境
//        System.setProperty("spring.profiles.active","dev");
        ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext("applicationContext.xml");

//        Class.forName("com.mysql.jdbc.Driver");
//        DriverManager.getConnection("jdbc:mysql://localhost:3306/mybatis", "root", "");

//        var simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        var date = simpleDateFormat.parse("2022-12-10 02:56:59");

//        /*静态工厂方法方式*/
//        InputStream stream = Resources.getResourceAsStream("mybatis-config.xml");
//        /*无参构造实例化*/
//        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
//        /*实例工厂方法*/
//        SqlSessionFactory factory = builder.build(stream);

//        SqlSessionFactory factory= (SqlSessionFactory) applicationContext.getBean("factory");
//        System.out.println(factory.openSession());

        UserService obj = applicationContext.getBean(UserService.class);
//        obj.getClass().getMethod("show", Long.class).invoke(obj, 3000L);
        obj.show();
        System.out.println(obj);

        Class<?> clazz = Class.forName("com.kekee.dao.impl.UserDaoImpl");
        Constructor<?> constructor = clazz.getDeclaredConstructor(String.class, int.class);
        constructor.setAccessible(true);
        Object o = constructor.newInstance("kekee", 18);
        clazz.getMethod("show", Long.class).invoke(o, 3000L);

        applicationContext.close();
    }
}