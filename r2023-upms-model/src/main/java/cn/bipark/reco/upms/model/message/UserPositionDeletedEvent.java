package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUserPosition;

public class UserPositionDeletedEvent extends PersistentEvent<BiUserPosition> {
    public UserPositionDeletedEvent(BiUserPosition data) {
        super(data);
    }
}
