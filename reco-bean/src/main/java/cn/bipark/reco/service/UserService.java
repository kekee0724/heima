package cn.bipark.reco.service;

import cn.bipark.reco.domain.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface UserService {
    void save(User user);

    void delete(Long id);

    void update(User user);

    List<User> findAll();

    User findById(Long id);

    boolean openURL(String url, String password);

    /**
     * 转账操作
     *
     * @param out   传出方
     * @param in    转入方
     * @param money 金额
     *
     *①：在业务层接口上添加Spring事务管理
     *  Spring注解式事务通常添加在业务层接口中而不会添加到业务层实现类中，降低耦合
     *  注解式事务可以添加到业务方法上表示当前方法开启事务，也可以添加到接口上表示当前接口所有方法开启事务
     */
    @Transactional
    void transfer(String out, String in, Double money);
}
