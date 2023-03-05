package cn.bipark.reco.order.web.handler;

import cn.bipark.reco.core.domain.dependency.DomainDependency;
import cn.bipark.reco.order.model.message.OrderCreatedEvent;
import cn.bipark.reco.order.model.message.OrderDeletedEvent;
import cn.bipark.reco.order.model.message.OrderUpdatedEvent;
import org.axonframework.eventhandling.EventHandler;
import org.springframework.stereotype.Component;

@Component
public class OrderEventHandler implements DomainDependency {
    
    @EventHandler
    public void on(OrderCreatedEvent msg) {
        //TODO 涉及其他领域（模块）的新增操作后置处理
    }

    @EventHandler
    public void on(OrderUpdatedEvent msg) {
        //TODO 涉及其他领域（模块）的修改操作后置处理
    }

    @EventHandler
    public void on(OrderDeletedEvent msg) {
        //TODO 涉及其他领域（模块）的删除操作后置处理
    }
    
}
