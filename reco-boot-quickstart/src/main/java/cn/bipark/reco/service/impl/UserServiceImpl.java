package cn.bipark.reco.service.impl;

import cn.bipark.reco.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Override
    public void save() {
        System.out.println("userService save running...");
    }
}
