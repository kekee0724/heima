package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiQuestion;

public class QuestionDeletedEvent extends PersistentEvent<BiQuestion> {
    public QuestionDeletedEvent(BiQuestion data) {
        super(data);
    }
}
