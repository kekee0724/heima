package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.TeamEntity;
import cn.bipark.reco.upms.domain.repository.TeamRepository;
import cn.bipark.reco.upms.model.entity.BiTeam;
import cn.bipark.reco.upms.model.viewmodel.list.TeamListVM;
import cn.bipark.reco.upms.model.viewmodel.form.TeamFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.TeamDetailVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeamService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiTeam create(TeamFormVM vm) {
        var entity = PageUtils.map(vm, BiTeam.class);
        actAs(entity, TeamEntity.class).init();
        resolve(TeamRepository.class).add(entity);
        actAs(entity, TeamEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(TeamFormVM vm, Long id) {
        var oldEntity = this.resolve(TeamRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiTeam.class);

        if(actAs(oldEntity, TeamEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(TeamRepository.class).modify(newEntity)){
                actAs(newEntity, TeamEntity.class).notifyUpdated();
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
    public boolean remove(BiTeam entity){
        if(actAs(entity, TeamEntity.class).isDeleteable()) {
            if(resolve(TeamRepository.class).remove(entity.getId())){
                actAs(entity, TeamEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
