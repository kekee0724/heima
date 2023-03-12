package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUser;

public class UserCreatedEvent extends PersistentEvent<BiUser> {
    public UserCreatedEvent(BiUser data) {
        super(data);
    }
}