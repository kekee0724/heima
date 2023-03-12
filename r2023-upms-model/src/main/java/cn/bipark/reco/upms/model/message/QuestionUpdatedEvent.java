package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiQuestion;

public class QuestionUpdatedEvent extends PersistentEvent<BiQuestion> {
    public QuestionUpdatedEvent(BiQuestion data) {
        super(data);
    }
}
