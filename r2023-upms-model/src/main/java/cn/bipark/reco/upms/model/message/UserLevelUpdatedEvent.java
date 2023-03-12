package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUserLevel;

public class UserLevelUpdatedEvent extends PersistentEvent<BiUserLevel> {
    public UserLevelUpdatedEvent(BiUserLevel data) {
        super(data);
    }
}
