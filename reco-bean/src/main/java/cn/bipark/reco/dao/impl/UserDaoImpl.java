package cn.bipark.reco.dao.impl;

import cn.bipark.reco.dao.UserDao;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

@Repository
//@Scope("prototype")
public class UserDaoImpl implements UserDao {

    @PostConstruct
    private void init() {
        System.out.println(this + ": init...");
    }

    @PreDestroy
    private void destroy() {
        System.out.println(this + ": destroy...");
    }

    @Override
    public void update() {
        System.out.println("user dao update is running...");
    }

    @Override
    public int select() {
        return 100;
    }
}
