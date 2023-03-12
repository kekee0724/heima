package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiSystemParam;

public class SystemParamDeletedEvent extends PersistentEvent<BiSystemParam> {
    public SystemParamDeletedEvent(BiSystemParam data) {
        super(data);
    }
}
