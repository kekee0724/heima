package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiQuestion;

public class QuestionCreatedEvent extends PersistentEvent<BiQuestion> {
    public QuestionCreatedEvent(BiQuestion data) {
        super(data);
    }
}