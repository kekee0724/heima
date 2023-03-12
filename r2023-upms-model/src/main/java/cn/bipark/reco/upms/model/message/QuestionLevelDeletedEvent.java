package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiQuestionLevel;

public class QuestionLevelDeletedEvent extends PersistentEvent<BiQuestionLevel> {
    public QuestionLevelDeletedEvent(BiQuestionLevel data) {
        super(data);
    }
}
