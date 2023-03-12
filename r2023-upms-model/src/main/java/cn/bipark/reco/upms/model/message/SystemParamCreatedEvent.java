package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiSystemParam;

public class SystemParamCreatedEvent extends PersistentEvent<BiSystemParam> {
    public SystemParamCreatedEvent(BiSystemParam data) {
        super(data);
    }
}