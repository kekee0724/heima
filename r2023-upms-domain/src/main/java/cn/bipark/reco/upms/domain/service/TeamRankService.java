package cn.bipark.reco.upms.domain.service;

import cn.bipark.reco.core.domain.service.BaseDomainService;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.domain.entity.TeamRankEntity;
import cn.bipark.reco.upms.domain.repository.TeamRankRepository;
import cn.bipark.reco.upms.model.entity.BiTeamRank;
import cn.bipark.reco.upms.model.viewmodel.list.TeamRankListVM;
import cn.bipark.reco.upms.model.viewmodel.form.TeamRankFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.TeamRankDetailVM;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TeamRankService extends BaseDomainService {

    /**
     * 处理聚合实体创建过程的领域内逻辑
     * @param vm
     * @return
     */
    public BiTeamRank create(TeamRankFormVM vm) {
        var entity = PageUtils.map(vm, BiTeamRank.class);
        actAs(entity, TeamRankEntity.class).init();
        resolve(TeamRankRepository.class).add(entity);
        actAs(entity, TeamRankEntity.class).notifyCreated();
        return entity;
    }

    /**
     * 修改聚合实体
     * @param vm 修改内容
     * @param id 对象id
     * @return
     */
    public boolean modify(TeamRankFormVM vm, Long id) {
        var oldEntity = this.resolve(TeamRankRepository.class).get(id);
        if (oldEntity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false; 
        }
        var newEntity = PageUtils.map(vm, BiTeamRank.class);

        if(actAs(oldEntity, TeamRankEntity.class).isModifiable()) {
            newEntity.setId(oldEntity.getId());
           if(resolve(TeamRankRepository.class).modify(newEntity)){
                actAs(newEntity, TeamRankEntity.class).notifyUpdated();
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
    public boolean remove(BiTeamRank entity){
        if(actAs(entity, TeamRankEntity.class).isDeleteable()) {
            if(resolve(TeamRankRepository.class).remove(entity.getId())){
                actAs(entity, TeamRankEntity.class).notifyDeleted();
                return true;
            }
        }
        return false;
    }
}
