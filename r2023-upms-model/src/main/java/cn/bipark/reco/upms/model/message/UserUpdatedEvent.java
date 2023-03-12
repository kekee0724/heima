package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUser;

public class UserUpdatedEvent extends PersistentEvent<BiUser> {
    public UserUpdatedEvent(BiUser data) {
        super(data);
    }
}
