package com.kekee.beans;

import com.alibaba.druid.pool.DruidDataSource;
import com.kekee.dao.UserDao;
import com.kekee.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;

//@Component
public class OtherBean {

    @Value("${jdbc.url}")
    private String url;

    @Value("${jdbc.username}")
    private String username;

    @Value("${jdbc.password}")
    private String password;

    @Bean
    public DataSource dataSource(
            @Value("${jdbc.driver}") String driverClassName,
            @Autowired @Qualifier("userDao") UserDao userDao,
//            @Qualifier("userDao2") UserDao userDao2,
            UserService userService
    ) {
        System.out.println(userDao);
//        System.out.println(userDao2);
//        System.out.println(userService);
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setDriverClassName(driverClassName);
        dataSource.setUrl(url);
        dataSource.setUsername(username);
        dataSource.setPassword(password);
        return dataSource;
    }

}
