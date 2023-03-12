package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiLevel;

public class LevelUpdatedEvent extends PersistentEvent<BiLevel> {
    public LevelUpdatedEvent(BiLevel data) {
        super(data);
    }
}
