package cn.bipark.reco.upms.web.handler;

import cn.bipark.reco.core.domain.dependency.DomainDependency;
import cn.bipark.reco.upms.model.message.SystemParamCreatedEvent;
import cn.bipark.reco.upms.model.message.SystemParamDeletedEvent;
import cn.bipark.reco.upms.model.message.SystemParamUpdatedEvent;
import org.axonframework.eventhandling.EventHandler;
import org.springframework.stereotype.Component;

@Component
public class SystemParamEventHandler implements DomainDependency {
    
    @EventHandler
    public void on(SystemParamCreatedEvent msg) {
        //TODO 涉及其他领域（模块）的新增操作后置处理
    }

    @EventHandler
    public void on(SystemParamUpdatedEvent msg) {
        //TODO 涉及其他领域（模块）的修改操作后置处理
    }

    @EventHandler
    public void on(SystemParamDeletedEvent msg) {
        //TODO 涉及其他领域（模块）的删除操作后置处理
    }
    
}
