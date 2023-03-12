package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiQuestionLevel;

public class QuestionLevelUpdatedEvent extends PersistentEvent<BiQuestionLevel> {
    public QuestionLevelUpdatedEvent(BiQuestionLevel data) {
        super(data);
    }
}
