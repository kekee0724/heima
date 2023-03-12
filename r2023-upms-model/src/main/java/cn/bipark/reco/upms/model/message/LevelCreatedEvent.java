package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiLevel;

public class LevelCreatedEvent extends PersistentEvent<BiLevel> {
    public LevelCreatedEvent(BiLevel data) {
        super(data);
    }
}