package cn.bipark.reco.factory;

import cn.bipark.reco.service.impl.UserServiceImpl;
import org.springframework.beans.factory.FactoryBean;

@Deprecated
public class UserServiceFactoryBean implements FactoryBean {

    @Override
    public Object getObject() throws Exception {
        return new UserServiceImpl();
    }

    @Override
    public Class<?> getObjectType() {
        return UserServiceImpl.class;
    }
}
