package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiUserRank;
import cn.bipark.reco.upms.model.mapper.BiUserRankMapper;
import cn.bipark.reco.upms.model.query.UserRankQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserRankListVM;
import org.springframework.stereotype.Component;

@Component
public class UserRankRepository extends BaseRepository<BiUserRank, BiUserRankMapper>
        implements QueryHandler<UserRankQuery, BiUserRank> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<UserRankListVM> findPaged(UserRankQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiUserRankMapper.class).findBy(query), query);
    }
}
