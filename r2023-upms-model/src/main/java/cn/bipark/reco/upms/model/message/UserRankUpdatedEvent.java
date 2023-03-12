package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUserRank;

public class UserRankUpdatedEvent extends PersistentEvent<BiUserRank> {
    public UserRankUpdatedEvent(BiUserRank data) {
        super(data);
    }
}
