package cn.bipark.reco.upms.web.handler;

import cn.bipark.reco.core.domain.dependency.DomainDependency;
import cn.bipark.reco.upms.model.message.QuestionLevelCreatedEvent;
import cn.bipark.reco.upms.model.message.QuestionLevelDeletedEvent;
import cn.bipark.reco.upms.model.message.QuestionLevelUpdatedEvent;
import org.axonframework.eventhandling.EventHandler;
import org.springframework.stereotype.Component;

@Component
public class QuestionLevelEventHandler implements DomainDependency {
    
    @EventHandler
    public void on(QuestionLevelCreatedEvent msg) {
        //TODO 涉及其他领域（模块）的新增操作后置处理
    }

    @EventHandler
    public void on(QuestionLevelUpdatedEvent msg) {
        //TODO 涉及其他领域（模块）的修改操作后置处理
    }

    @EventHandler
    public void on(QuestionLevelDeletedEvent msg) {
        //TODO 涉及其他领域（模块）的删除操作后置处理
    }
    
}
