package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiTeamRank;
import cn.bipark.reco.upms.model.mapper.BiTeamRankMapper;
import cn.bipark.reco.upms.model.query.TeamRankQuery;
import cn.bipark.reco.upms.model.viewmodel.list.TeamRankListVM;
import org.springframework.stereotype.Component;

@Component
public class TeamRankRepository extends BaseRepository<BiTeamRank, BiTeamRankMapper>
        implements QueryHandler<TeamRankQuery, BiTeamRank> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<TeamRankListVM> findPaged(TeamRankQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiTeamRankMapper.class).findBy(query), query);
    }
}
