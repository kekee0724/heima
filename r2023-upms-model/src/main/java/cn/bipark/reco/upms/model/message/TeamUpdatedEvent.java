package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiTeam;

public class TeamUpdatedEvent extends PersistentEvent<BiTeam> {
    public TeamUpdatedEvent(BiTeam data) {
        super(data);
    }
}
