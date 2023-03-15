package cn.bipark.reco.factory;

import cn.bipark.reco.service.impl.UserServiceImpl;

public class UserServiceFactory {
    public UserServiceImpl getUserService(){
        return new UserServiceImpl();
    }
}
