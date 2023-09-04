package com.kekee.service.impl;

import com.kekee.service.UserService;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {


    @Override
    public void show1() {
        System.out.println("show1...");
//        int i = 1 / 0;
    }

    @Override
    public void show2() {
        System.out.println("show2...");
    }
}
