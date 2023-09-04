package com.kekee.dao.impl;

import com.kekee.dao.UserDao;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Repository;

@Repository("userDao2")
@Primary
@Profile("test")
public class UserDaoImpl2 implements UserDao {

    @Override
    public void show() {

    }
}

