package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiQuestionLevel;

public class QuestionLevelCreatedEvent extends PersistentEvent<BiQuestionLevel> {
    public QuestionLevelCreatedEvent(BiQuestionLevel data) {
        super(data);
    }
}