package cn.bipark.reco.upms.web.handler;

import cn.bipark.reco.core.domain.dependency.DomainDependency;
import cn.bipark.reco.upms.model.message.UserPositionCreatedEvent;
import cn.bipark.reco.upms.model.message.UserPositionDeletedEvent;
import cn.bipark.reco.upms.model.message.UserPositionUpdatedEvent;
import org.axonframework.eventhandling.EventHandler;
import org.springframework.stereotype.Component;

@Component("userPositionsEventHandler")
public class UserPositionEventHandler implements DomainDependency {
    
    @EventHandler
    public void on(UserPositionCreatedEvent msg) {
        //TODO 涉及其他领域（模块）的新增操作后置处理
    }

    @EventHandler
    public void on(UserPositionUpdatedEvent msg) {
        //TODO 涉及其他领域（模块）的修改操作后置处理
    }

    @EventHandler
    public void on(UserPositionDeletedEvent msg) {
        //TODO 涉及其他领域（模块）的删除操作后置处理
    }
    
}
