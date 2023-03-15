package cn.bipark.reco.service;

import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public interface LogService {
    /**
     * Spring事务角色
     * ■ 事务管理员：发起事务方 ，在Spring中通常指代业务层开启事务的方法
     * ■ 事务协调员：加入事务方，在Spring中通常指代数据层方法，也可以是业务层方法
     *
     * 事务传播行为：事务协调员对事务管理员所携带事务的处理态度
     *     传播属性        | 事务管理员        |   事务协调员
     *     REQUIRED(默认) |    开启T       |         加入T
     *                   |      无       |           新建r2
     *     REQUIRES NEW  |     开启T      |          新建T2
     *                   |      无       |          新建T2
     *     SUPPORTS      |      开启T     |         加入T
     *                   |       无      |             无
     *     NOT SUPPORTED  |      开启T     |             无
     *                   |       无      |             无
     *     MANDATORY     |       开启T    |             加入T
     *                   |       无      |             ERROR
     *     NEVER         |       开启T    |             ERROR
     *                   |       无      |             无
     *     NESTED        | 设置savePoint,一旦事务回滚,事务将回滚到savePoint处,交由客户响应提交/回滚
     * 案例：转账业务追加日志
     * ①：在业务层接口上添加Spring事务，设置事务传播行为REQUIRES_NEW (需要新事务)
     * @param out
     * @param in
     * @param money
     */
    @Transactional(propagation = Propagation.REQUIRES_NEW)
    void transfer(String out, String in, Double money);
}

