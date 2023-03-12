package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiTeam;

public class TeamCreatedEvent extends PersistentEvent<BiTeam> {
    public TeamCreatedEvent(BiTeam data) {
        super(data);
    }
}