package com.study.demo.tx.app.service;

import com.study.demo.tx.app.mapper.AccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionInterceptor;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

@Service
public class Service2 {

    @Autowired
    private AccountMapper accountMapper;

//    业务方法内自己 try-catch 异常导致事务不能正确回滚
//    原因：事务通知只有捉到了目标抛出的异常，才能进行后续的回滚处理，如果目标自己处理掉异常，事务通知无法知悉
//    解法1：异常原样抛出
//    在 catch 块添加 throw new RuntimeException(e);
//    解法2：手动设置 TransactionStatus.setRollbackOnly()
//    在 catch 块添加 TransactionInterceptor.currentTransactionStatus().setRollbackOnly();
    @Transactional(rollbackFor = Exception.class)
    public void transfer(int from, int to, int amount)  {
        try {
            int fromBalance = accountMapper.findBalanceBy(from);
            if (fromBalance - amount >= 0) {
                accountMapper.update(from, -1 * amount);
                new FileInputStream("aaa");
                accountMapper.update(to, amount);
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
//            throw new RuntimeException(e);
            TransactionInterceptor.currentTransactionStatus().setRollbackOnly();
        }
    }
}