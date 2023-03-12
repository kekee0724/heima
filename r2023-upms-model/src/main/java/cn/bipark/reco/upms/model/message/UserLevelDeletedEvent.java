package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUserLevel;

public class UserLevelDeletedEvent extends PersistentEvent<BiUserLevel> {
    public UserLevelDeletedEvent(BiUserLevel data) {
        super(data);
    }
}
