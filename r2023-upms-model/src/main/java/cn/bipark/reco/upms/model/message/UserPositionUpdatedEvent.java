package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUserPosition;

public class UserPositionUpdatedEvent extends PersistentEvent<BiUserPosition> {
    public UserPositionUpdatedEvent(BiUserPosition data) {
        super(data);
    }
}
