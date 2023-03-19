package cn.bipark.reco.service.impl;

import cn.bipark.reco.exctption.Code;
import cn.bipark.reco.domain.User;
import cn.bipark.reco.dao.UserDao;
import cn.bipark.reco.exctption.BusinessException;
import cn.bipark.reco.service.LogService;
import cn.bipark.reco.service.UserService;
import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Lazy
public class UserServiceImpl implements UserService, InitializingBean, DisposableBean {

    @Autowired
    private UserDao userDao;

    @Autowired
    private LogService logService;

    @Override
    public boolean save(User user) {
        userDao.save(user);
        return true;
    }

    @Override
    public boolean update(User user) {
        userDao.update(user);
        return true;
    }

    @Override
    public boolean delete(Long id) {
        userDao.delete(id);
        return true;
    }

    @Override
    public User getById(Long id) {
        if (id == 1L) {
            throw new BusinessException(Code.BUSINESS_ERR, "请不要使用你的技术挑战我的耐性!");
        }
        return userDao.getById(id);
    }

    @Override
    public List<User> getAll() {
        return userDao.getAll();
    }

    @Override
    public boolean openURL(String url, String password) {
        return "root".equals(password);
    }

    @Override
    public void transfer(String out, String in, Double money) {
        try {
            userDao.outMoney(out, money);
            int i = 1 / 0;
            userDao.inMoney(in, money);
        } finally {
            logService.transfer(out, in, money);
        }
    }

    @Override
    public void destroy() throws Exception {
        System.out.println("userService destroy...");
    }

    @Override
    public void afterPropertiesSet() throws Exception {
        System.out.println("userService afterPropertiesSet init...");
    }
}
