package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.UserRankEntity;
import cn.bipark.reco.upms.domain.repository.UserRankRepository;
import cn.bipark.reco.upms.model.entity.BiUserRank;
import cn.bipark.reco.upms.model.viewmodel.list.UserRankListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserRankFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserRankDetailVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserRankService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiUserRank create(UserRankFormVM vm) {
        var entity = PageUtils.map(vm, BiUserRank.class);
        actAs(entity, UserRankEntity.class).init();
        resolve(UserRankRepository.class).add(entity);
        actAs(entity, UserRankEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(UserRankFormVM vm, Long id) {
        var oldEntity = this.resolve(UserRankRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiUserRank.class);

        if(actAs(oldEntity, UserRankEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(UserRankRepository.class).modify(newEntity)){
                actAs(newEntity, UserRankEntity.class).notifyUpdated();
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
    public boolean remove(BiUserRank entity){
        if(actAs(entity, UserRankEntity.class).isDeleteable()) {
            if(resolve(UserRankRepository.class).remove(entity.getId())){
                actAs(entity, UserRankEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
