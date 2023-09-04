package com.kekee.service.impl;

import com.kekee.mapper.AccountMapper;
import com.kekee.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service("accountService")
public class AccountServiceImpl implements AccountService {

    @Autowired
    private AccountMapper accountMapper;

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED,propagation = Propagation.REQUIRED,timeout = 3 ,readOnly = false)
    public void transferMoney(String outAccount, String inAccount, Integer money) {
        accountMapper.decrMoney(outAccount, money);
//        int i = 1 / 0;
        accountMapper.incrMoney(inAccount, money);
    }
}
