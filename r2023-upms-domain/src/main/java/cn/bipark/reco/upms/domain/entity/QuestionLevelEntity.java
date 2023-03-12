package cn.bipark.reco.upms.domain.entity;

import cn.bipark.reco.core.domain.entity.BaseAggregate;
import cn.bipark.reco.upms.model.entity.BiQuestionLevel;
import cn.bipark.reco.upms.model.message.*;
import org.springframework.stereotype.Component;

@Component
public class QuestionLevelEntity extends BaseAggregate<BiQuestionLevel> {
    /**
     * 通知题目等级被创建
     */
    public void notifyCreated() {
        publish(new QuestionLevelCreatedEvent(getData()));
    }

    /**
     * 通知题目等级被更新
     */
    public void notifyUpdated() {
        publish(new QuestionLevelUpdatedEvent(getData()));
    }

    /**
     * 通知题目等级被删除
     */
    public void notifyDeleted() {
        publish(new QuestionLevelDeletedEvent(getData()));
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