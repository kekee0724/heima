package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiTeamRank;

public class TeamRankDeletedEvent extends PersistentEvent<BiTeamRank> {
    public TeamRankDeletedEvent(BiTeamRank data) {
        super(data);
    }
}
