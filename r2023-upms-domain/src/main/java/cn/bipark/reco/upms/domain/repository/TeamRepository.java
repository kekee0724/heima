package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiTeam;
import cn.bipark.reco.upms.model.mapper.BiTeamMapper;
import cn.bipark.reco.upms.model.query.TeamQuery;
import cn.bipark.reco.upms.model.viewmodel.list.TeamListVM;
import org.springframework.stereotype.Component;

@Component
public class TeamRepository extends BaseRepository<BiTeam, BiTeamMapper>
        implements QueryHandler<TeamQuery, BiTeam> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<TeamListVM> findPaged(TeamQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiTeamMapper.class).findBy(query), query);
    }
}