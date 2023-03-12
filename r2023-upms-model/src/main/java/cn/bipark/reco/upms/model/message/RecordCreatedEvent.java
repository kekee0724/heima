package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiRecord;

public class RecordCreatedEvent extends PersistentEvent<BiRecord> {
    public RecordCreatedEvent(BiRecord data) {
        super(data);
    }
}