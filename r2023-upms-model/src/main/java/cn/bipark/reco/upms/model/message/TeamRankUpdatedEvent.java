package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiTeamRank;

public class TeamRankUpdatedEvent extends PersistentEvent<BiTeamRank> {
    public TeamRankUpdatedEvent(BiTeamRank data) {
        super(data);
    }
}
