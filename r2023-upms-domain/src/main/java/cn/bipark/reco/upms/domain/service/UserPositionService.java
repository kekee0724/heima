package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.UserPositionEntity;
import cn.bipark.reco.upms.domain.repository.UserPositionRepository;
import cn.bipark.reco.upms.model.entity.BiUserPosition;
import cn.bipark.reco.upms.model.viewmodel.list.UserPositionListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserPositionFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserPositionDetailVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserPositionService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiUserPosition create(UserPositionFormVM vm) {
        var entity = PageUtils.map(vm, BiUserPosition.class);
        actAs(entity, UserPositionEntity.class).init();
        resolve(UserPositionRepository.class).add(entity);
        actAs(entity, UserPositionEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(UserPositionFormVM vm, Long id) {
        var oldEntity = this.resolve(UserPositionRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiUserPosition.class);

        if(actAs(oldEntity, UserPositionEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(UserPositionRepository.class).modify(newEntity)){
                actAs(newEntity, UserPositionEntity.class).notifyUpdated();
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
    public boolean remove(BiUserPosition entity){
        if(actAs(entity, UserPositionEntity.class).isDeleteable()) {
            if(resolve(UserPositionRepository.class).remove(entity.getId())){
                actAs(entity, UserPositionEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
