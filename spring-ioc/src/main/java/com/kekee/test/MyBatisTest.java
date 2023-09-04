package com.kekee.test;

import com.kekee.mapper.UserMapper;
import com.kekee.pojo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;
import java.util.List;

public class MyBatisTest {
    public static void main(String[] args) throws Exception {
        /*静态工厂方法方式*/
        InputStream stream = Resources.getResourceAsStream("mybatis-config.xml");
        /*无参构造实例化*/
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        /*实例工厂方法*/
        SqlSessionFactory sqlSessionFactory = builder.build(stream);
        SqlSession session = sqlSessionFactory.openSession();
        UserMapper mapper = session.getMapper(UserMapper.class);
        List<User> users = mapper.findAll();
        System.out.println(users);
    }
}
