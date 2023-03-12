package cn.bipark.reco.upms.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.upms.model.entity.BiRecord;

public class RecordDeletedEvent extends PersistentEvent<BiRecord> {
    public RecordDeletedEvent(BiRecord data) {
        super(data);
    }
}
