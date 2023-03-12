package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.RecordEntity;
import cn.bipark.reco.upms.domain.repository.RecordRepository;
import cn.bipark.reco.upms.model.entity.BiRecord;
import cn.bipark.reco.upms.model.viewmodel.list.RecordListVM;
import cn.bipark.reco.upms.model.viewmodel.form.RecordFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.RecordDetailVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecordService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiRecord create(RecordFormVM vm) {
        var entity = PageUtils.map(vm, BiRecord.class);
        actAs(entity, RecordEntity.class).init();
        resolve(RecordRepository.class).add(entity);
        actAs(entity, RecordEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(RecordFormVM vm, Long id) {
        var oldEntity = this.resolve(RecordRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiRecord.class);

        if(actAs(oldEntity, RecordEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(RecordRepository.class).modify(newEntity)){
                actAs(newEntity, RecordEntity.class).notifyUpdated();
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
    public boolean remove(BiRecord entity){
        if(actAs(entity, RecordEntity.class).isDeleteable()) {
            if(resolve(RecordRepository.class).remove(entity.getId())){
                actAs(entity, RecordEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
