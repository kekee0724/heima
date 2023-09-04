package com.study.service;

import com.study.pojo.User;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;

@Component
@EnableAspectJAutoProxy
public class UserService implements InitializingBean {
    @Autowired
    private TeamService teamService;
    @Autowired
    private JdbcTemplate jdbcTemplate;
    private User admin;

    @Override
    public void afterPropertiesSet() throws Exception {
        // mysql--->管理员的信息--->User对象--->admin
    }

    @Transactional
    public void test() {
        jdbcTemplate.execute("insert into t_user(id, username, password) values (13,'可乐','0724')");
        System.out.println(teamService);
        throw new NullPointerException();
    }
}
