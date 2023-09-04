package com.study;

import com.study.config.MybatisConfig;
import com.study.mapper.UserMapper;
import com.study.pojo.Team;
import com.study.pojo.User;
import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class UserMapperTest {
    @Test
    public void getUserList() {
        SqlSession session = MybatisConfig.getSqlSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        List<User> users = mapper.getUserList();
        for (User u : users) {
            System.out.println(u);
        }
    }

    @Test
    public void getUserPage() {
        SqlSession session = MybatisConfig.getSqlSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        List<User> users = mapper.getUserPage(1, 10);
        for (User u : users) {
            System.out.println(u);
        }
    }

    @Test
    public void addUser() {
        SqlSession session = MybatisConfig.getSqlSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        int flag = mapper.addUser(new User("1", "可可", "0724", new Team(), ""));
        System.out.println(flag);
        session.commit();
    }

    @Test
    public void getUser() {
        SqlSession session = MybatisConfig.getSqlSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        User user = mapper.getUser("1");
        System.out.println(user);
    }

    @Test
    public void getUserBy() {
        SqlSession session = MybatisConfig.getSqlSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        HashMap<String, Object> map = new HashMap<>();
//        map.put("id", "1");
//        map.put("username", "admin");
//        map.put("nick", "可可");
        ArrayList list = new ArrayList();
//        list.add("1");
        map.put("ids", list);
        List<User> user = mapper.getUserBy(map);
        System.out.println(user);
    }

    @Test
    public void updateUser() {
        SqlSession session = MybatisConfig.getSqlSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        int flag = mapper.updateUser(new User("1", "可可Levi", "0724", new Team(), "1"));
        System.out.println(flag);
        session.commit();
    }

    @Test
    public void delUser() {
        SqlSession session = MybatisConfig.getSqlSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        int flag = mapper.delUser("1");
        System.out.println(flag);
        session.commit();
    }
}
