package com.study.demo.tx.app.service;

import com.study.demo.tx.app.mapper.AccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

@Service
public class Service1 {
    @Autowired
    private AccountMapper accountMapper;

    //   抛出检查异常导致事务不能正确回滚
    //    原因：Spring 默认只会回滚非检查异常
    //    解法：配置 rollbackFor 属性
    @Transactional(rollbackFor = Exception.class)
//    @Transactional
    public void transfer(int from, int to, int amount) throws FileNotFoundException {
        int fromBalance = accountMapper.findBalanceBy(from);
        if (fromBalance - amount >= 0) {
            accountMapper.update(from, -1 * amount);
            new FileInputStream("aaa");
            accountMapper.update(to, amount);
        }
    }

}