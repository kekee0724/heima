package cn.bipark.reco.factory;

import cn.bipark.reco.service.impl.UserServiceImpl;

@Deprecated
public class UserServiceStaticFactory {
    public static UserServiceImpl getUserService(){
        return new UserServiceImpl();
    }
}
