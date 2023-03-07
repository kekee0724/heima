package cn.bipark.reco.order.domain.entity;

import cn.bipark.reco.core.domain.entity.BaseAggregate;
import cn.bipark.reco.order.model.entity.BiOrder;
import cn.bipark.reco.order.model.message.*;
import org.springframework.stereotype.Component;

@Component
public class OrderEntity extends BaseAggregate<BiOrder> {
    /**
     * 通知未知对象被创建
     */
    public void notifyCreated() {
        publish(new OrderCreatedEvent(getData()));
    }

    /**
     * 通知未知对象被更新
     */
    public void notifyUpdated() {
        publish(new OrderUpdatedEvent(getData()));
    }

    /**
     * 通知未知对象被删除
     */
    public void notifyDeleted() {
        publish(new OrderDeletedEvent(getData()));
    }

	/**
	 * 新对象初始化逻辑
	 */
	public void init() {
        //TODO 初始化逻辑
	}

	/**
	 * 当前对象是否可修改
	 * @return
	 */
	public boolean isModifiable(){
		var entity = this.getData();
        //TODO 修改检查
		return true;
	}

	/**
	 * 当前对象是否可删除
	 * @return
	 */
	public boolean isDeleteable(){
		var entity = this.getData();
        //TODO 删除检查
		return true;
	}


}
