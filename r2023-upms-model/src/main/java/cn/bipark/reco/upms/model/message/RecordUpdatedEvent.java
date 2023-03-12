package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiRecord;

public class RecordUpdatedEvent extends PersistentEvent<BiRecord> {
    public RecordUpdatedEvent(BiRecord data) {
        super(data);
    }
}
