package cn.bipark.reco.order.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.order.model.entity.BiOrder;

public class OrderDeletedEvent extends PersistentEvent<BiOrder> {
    public OrderDeletedEvent(BiOrder data) {
        super(data);
    }
}
