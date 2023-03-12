package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUserRank;

public class UserRankCreatedEvent extends PersistentEvent<BiUserRank> {
    public UserRankCreatedEvent(BiUserRank data) {
        super(data);
    }
}