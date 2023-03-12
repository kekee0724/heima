package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiSystemParam;

public class SystemParamUpdatedEvent extends PersistentEvent<BiSystemParam> {
    public SystemParamUpdatedEvent(BiSystemParam data) {
        super(data);
    }
}
