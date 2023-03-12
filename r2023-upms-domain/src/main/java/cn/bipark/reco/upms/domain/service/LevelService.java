package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.LevelEntity;
import cn.bipark.reco.upms.domain.repository.LevelRepository;
import cn.bipark.reco.upms.model.entity.BiLevel;
import cn.bipark.reco.upms.model.viewmodel.list.LevelListVM;
import cn.bipark.reco.upms.model.viewmodel.form.LevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.LevelDetailVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LevelService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiLevel create(LevelFormVM vm) {
        var entity = PageUtils.map(vm, BiLevel.class);
        actAs(entity, LevelEntity.class).init();
        resolve(LevelRepository.class).add(entity);
        actAs(entity, LevelEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(LevelFormVM vm, Long id) {
        var oldEntity = this.resolve(LevelRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiLevel.class);

        if(actAs(oldEntity, LevelEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(LevelRepository.class).modify(newEntity)){
                actAs(newEntity, LevelEntity.class).notifyUpdated();
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
    public boolean remove(BiLevel entity){
        if(actAs(entity, LevelEntity.class).isDeleteable()) {
            if(resolve(LevelRepository.class).remove(entity.getId())){
                actAs(entity, LevelEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
