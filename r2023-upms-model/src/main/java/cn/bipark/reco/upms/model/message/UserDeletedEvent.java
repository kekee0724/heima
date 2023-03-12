package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUser;

public class UserDeletedEvent extends PersistentEvent<BiUser> {
    public UserDeletedEvent(BiUser data) {
        super(data);
    }
}
