package cn.bipark.reco.upms.web.handler;

import cn.bipark.reco.core.domain.dependency.DomainDependency;
import cn.bipark.reco.upms.model.message.QuestionCreatedEvent;
import cn.bipark.reco.upms.model.message.QuestionDeletedEvent;
import cn.bipark.reco.upms.model.message.QuestionUpdatedEvent;
import org.axonframework.eventhandling.EventHandler;
import org.springframework.stereotype.Component;

@Component
public class QuestionEventHandler implements DomainDependency {
    
    @EventHandler
    public void on(QuestionCreatedEvent msg) {
        //TODO 涉及其他领域（模块）的新增操作后置处理
    }

    @EventHandler
    public void on(QuestionUpdatedEvent msg) {
        //TODO 涉及其他领域（模块）的修改操作后置处理
    }

    @EventHandler
    public void on(QuestionDeletedEvent msg) {
        //TODO 涉及其他领域（模块）的删除操作后置处理
    }
    
}
