package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.SystemParamEntity;
import cn.bipark.reco.upms.domain.repository.SystemParamRepository;
import cn.bipark.reco.upms.model.entity.BiSystemParam;
import cn.bipark.reco.upms.model.viewmodel.list.SystemParamListVM;
import cn.bipark.reco.upms.model.viewmodel.form.SystemParamFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.SystemParamDetailVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SystemParamService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiSystemParam create(SystemParamFormVM vm) {
        var entity = PageUtils.map(vm, BiSystemParam.class);
        actAs(entity, SystemParamEntity.class).init();
        resolve(SystemParamRepository.class).add(entity);
        actAs(entity, SystemParamEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(SystemParamFormVM vm, Long id) {
        var oldEntity = this.resolve(SystemParamRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiSystemParam.class);

        if(actAs(oldEntity, SystemParamEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(SystemParamRepository.class).modify(newEntity)){
                actAs(newEntity, SystemParamEntity.class).notifyUpdated();
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
    public boolean remove(BiSystemParam entity){
        if(actAs(entity, SystemParamEntity.class).isDeleteable()) {
            if(resolve(SystemParamRepository.class).remove(entity.getId())){
                actAs(entity, SystemParamEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
