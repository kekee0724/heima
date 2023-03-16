package cn.bipark.reco.service.impl;

import cn.bipark.reco.dao.LogDao;
import cn.bipark.reco.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

@Service
public class LogServiceImpl implements LogService {
    @Autowired
    private LogDao logDao;

    @Override
    public void transfer(String out, String in, Double money) {
        logDao.log("转账操作由" + out + "到" + in + ",金额:" + money);
    }

    @PostConstruct
    private void init() {
        System.out.println(this + ": init...");
    }

    @PreDestroy
    private void destroy() {
        System.out.println(this + ": destroy...");
    }

}
