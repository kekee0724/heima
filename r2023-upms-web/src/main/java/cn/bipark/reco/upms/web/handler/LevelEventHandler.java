package cn.bipark.reco.upms.web.handler;

import cn.bipark.reco.core.domain.dependency.DomainDependency;
import cn.bipark.reco.upms.model.message.LevelCreatedEvent;
import cn.bipark.reco.upms.model.message.LevelDeletedEvent;
import cn.bipark.reco.upms.model.message.LevelUpdatedEvent;
import org.axonframework.eventhandling.EventHandler;
import org.springframework.stereotype.Component;

@Component
public class LevelEventHandler implements DomainDependency {
    
    @EventHandler
    public void on(LevelCreatedEvent msg) {
        //TODO 涉及其他领域（模块）的新增操作后置处理
    }

    @EventHandler
    public void on(LevelUpdatedEvent msg) {
        //TODO 涉及其他领域（模块）的修改操作后置处理
    }

    @EventHandler
    public void on(LevelDeletedEvent msg) {
        //TODO 涉及其他领域（模块）的删除操作后置处理
    }
    
}
