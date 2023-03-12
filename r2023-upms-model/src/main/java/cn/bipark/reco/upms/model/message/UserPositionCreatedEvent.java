package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUserPosition;

public class UserPositionCreatedEvent extends PersistentEvent<BiUserPosition> {
    public UserPositionCreatedEvent(BiUserPosition data) {
        super(data);
    }
}