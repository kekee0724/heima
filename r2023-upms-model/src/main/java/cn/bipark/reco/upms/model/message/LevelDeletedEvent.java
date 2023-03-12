package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiLevel;

public class LevelDeletedEvent extends PersistentEvent<BiLevel> {
    public LevelDeletedEvent(BiLevel data) {
        super(data);
    }
}
