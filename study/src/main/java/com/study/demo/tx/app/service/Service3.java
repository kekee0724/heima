package com.study.demo.tx.app.service;

import com.study.demo.tx.app.mapper.AccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

@Service
public class Service3 {

    @Autowired
    private AccountMapper accountMapper;

//    aop 切面顺序导致导致事务不能正确回滚
//    原因：事务切面优先级最低，但如果自定义的切面优先级和他一样，则还是自定义切面在内层，这时若自定义切面没有正确抛出异常…
//    解法1、2：同情况2 中的解法:1、2
//    解法3：调整切面顺序，在 MyAspect 上添加 @Order(Ordered.LOWEST_PRECEDENCE - 1) （不推荐）数值越小优先级越高
    @Transactional(rollbackFor = Exception.class)
    public void transfer(int from, int to, int amount) throws FileNotFoundException {
        int fromBalance = accountMapper.findBalanceBy(from);
        if (fromBalance - amount >= 0) {
            accountMapper.update(from, -1 * amount);
            new FileInputStream("aaa");
            accountMapper.update(to, amount);
        }
    }
}