package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiUserRank;

public class UserRankDeletedEvent extends PersistentEvent<BiUserRank> {
    public UserRankDeletedEvent(BiUserRank data) {
        super(data);
    }
}
