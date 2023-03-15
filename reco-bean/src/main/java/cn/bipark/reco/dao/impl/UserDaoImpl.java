package cn.bipark.reco.dao.impl;

import cn.bipark.reco.dao.UserDao;

public class UserDaoImpl implements UserDao {
    private void init() {
        System.out.println("userDao init...");
    }

    private void destroy() {
        System.out.println("userDao destroy...");
    }
}
