package cn.bipark.reco.order.model.message;

import cn.bipark.reco.core.model.message.PersistentEvent;
import cn.bipark.reco.order.model.entity.BiOrder;

public class OrderCreatedEvent extends PersistentEvent<BiOrder> {
    public OrderCreatedEvent(BiOrder data) {
        super(data);
    }
}