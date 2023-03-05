package cn.bipark.reco.order.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.order.domain.entity.OrderEntity;
import cn.bipark.reco.order.domain.repository.OrderRepository;
import cn.bipark.reco.order.model.entity.BiOrder;
import cn.bipark.reco.order.model.viewmodel.list.OrderListVM;
import cn.bipark.reco.order.model.viewmodel.form.OrderFormVM;
import cn.bipark.reco.order.model.viewmodel.detail.OrderDetailVM;
import lombok.var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiOrder create(OrderFormVM vm) {
        var entity = PageUtils.map(vm, BiOrder.class);
        actAs(entity, OrderEntity.class).init();
        resolve(OrderRepository.class).add(entity);
        actAs(entity, OrderEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(OrderFormVM vm, Long id) {
        var oldEntity = this.resolve(OrderRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiOrder.class);

        if(actAs(oldEntity, OrderEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(OrderRepository.class).modify(newEntity)){
                actAs(newEntity, OrderEntity.class).notifyUpdated();
                return true;
            }
        }
        return false;
    }

    /**
     * 删除聚合实体
     * @param entity
     * @return
     */
    public boolean remove(BiOrder entity){
        if(actAs(entity, OrderEntity.class).isDeleteable()) {
            if(resolve(OrderRepository.class).remove(entity.getId())){
                actAs(entity, OrderEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
