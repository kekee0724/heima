package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiTeamRank;

public class TeamRankCreatedEvent extends PersistentEvent<BiTeamRank> {
    public TeamRankCreatedEvent(BiTeamRank data) {
        super(data);
    }
}