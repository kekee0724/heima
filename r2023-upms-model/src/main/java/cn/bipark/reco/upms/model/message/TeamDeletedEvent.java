package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiTeam;

public class TeamDeletedEvent extends PersistentEvent<BiTeam> {
    public TeamDeletedEvent(BiTeam data) {
        super(data);
    }
}
