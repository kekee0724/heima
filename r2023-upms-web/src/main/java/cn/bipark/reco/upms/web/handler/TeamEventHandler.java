package cn.bipark.reco.upms.web.handler;

import cn.bipark.reco.core.domain.dependency.DomainDependency;
import cn.bipark.reco.upms.model.message.TeamCreatedEvent;
import cn.bipark.reco.upms.model.message.TeamDeletedEvent;
import cn.bipark.reco.upms.model.message.TeamUpdatedEvent;
import org.axonframework.eventhandling.EventHandler;
import org.springframework.stereotype.Component;

@Component
public class TeamEventHandler implements DomainDependency {
    
    @EventHandler
    public void on(TeamCreatedEvent msg) {
        //TODO 涉及其他领域（模块）的新增操作后置处理
    }

    @EventHandler
    public void on(TeamUpdatedEvent msg) {
        //TODO 涉及其他领域（模块）的修改操作后置处理
    }

    @EventHandler
    public void on(TeamDeletedEvent msg) {
        //TODO 涉及其他领域（模块）的删除操作后置处理
    }
    
}
