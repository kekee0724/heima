package cn.bipark.reco.service;

import cn.bipark.reco.domain.User;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface UserService {
    /**
     * 保存
     * @param user
     * @return
     */
    boolean save(User user);

    /**
     * 修改
     * @param user
     * @return
     */
    boolean  update(User user);

    /**
     * 根据id删除
     * @param id
     * @return
     */
    boolean delete(Long id);

    /**
     * 根据id查询
     * @param id
     * @return
     */
    User getById(Long id);

    /**
     * 查询全部
     * @return
     */
    List<User> getAll();

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
     * Spring事务角色
     * ■ 事务管理员：发起事务方 ，在Spring中通常指代业务层开启事务的方法
     * ■ 事务协调员：加入事务方，在Spring中通常指代数据层方法，也可以是业务层方法
     */
    @Transactional
    void transfer(String out, String in, Double money);
}
