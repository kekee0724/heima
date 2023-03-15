package cn.bipark.reco.service.impl;

import cn.bipark.reco.mapper.LogMapper;
import cn.bipark.reco.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LogServiceImpl implements LogService {
    @Autowired
    private LogMapper logMapper;

    @Override
    public void transfer(String out, String in, Double money) {
        logMapper.log("转账操作由" + out + "到" + in + ",金额:" + money);
    }
}
