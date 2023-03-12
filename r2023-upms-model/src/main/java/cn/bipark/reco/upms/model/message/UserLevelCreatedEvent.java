package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUserLevel;

public class UserLevelCreatedEvent extends PersistentEvent<BiUserLevel> {
    public UserLevelCreatedEvent(BiUserLevel data) {
        super(data);
    }
}