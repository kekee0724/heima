package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.UserEntity;
import cn.bipark.reco.upms.domain.repository.UserRepository;
import cn.bipark.reco.upms.model.entity.BiUser;
import cn.bipark.reco.upms.model.viewmodel.list.UserListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserDetailVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiUser create(UserFormVM vm) {
        var entity = PageUtils.map(vm, BiUser.class);
        actAs(entity, UserEntity.class).init();
        resolve(UserRepository.class).add(entity);
        actAs(entity, UserEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(UserFormVM vm, Long id) {
        var oldEntity = this.resolve(UserRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiUser.class);

        if(actAs(oldEntity, UserEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(UserRepository.class).modify(newEntity)){
                actAs(newEntity, UserEntity.class).notifyUpdated();
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
    public boolean remove(BiUser entity){
        if(actAs(entity, UserEntity.class).isDeleteable()) {
            if(resolve(UserRepository.class).remove(entity.getId())){
                actAs(entity, UserEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
