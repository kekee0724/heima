package cn.bipark.reco.order.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.order.model.entity.BiOrder;

public class OrderUpdatedEvent extends PersistentEvent<BiOrder> {
    public OrderUpdatedEvent(BiOrder data) {
        super(data);
    }
}
