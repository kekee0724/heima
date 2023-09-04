package com.study.demo.tx.app.service;

import com.study.demo.tx.app.mapper.AccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.AnnotationTransactionAttributeSource;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAttributeSource;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

@Service
public class Service4 {

    @Autowired
    private AccountMapper accountMapper;

//    非 public 方法导致的事务失效
//    原因：Spring 为方法创建代理、添加事务通知、前提条件都是该方法是 public 的
//    解法1：改为 public 方法
//    解法2：添加 bean 配置如下（不推荐）
//    @Bean
//    public TransactionAttributeSource transactionAttributeSource() {
//        return new AnnotationTransactionAttributeSource(false);
//    }

    @Transactional(rollbackFor = Exception.class)
    void transfer(int from, int to, int amount) throws FileNotFoundException {
        int fromBalance = accountMapper.findBalanceBy(from);
        if (fromBalance - amount >= 0) {
            accountMapper.update(from, -1 * amount);
            accountMapper.update(to, amount);
            new FileInputStream("aaa");
        }
    }
}