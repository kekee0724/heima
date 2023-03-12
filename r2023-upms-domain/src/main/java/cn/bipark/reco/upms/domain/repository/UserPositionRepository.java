package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiUserPosition;
import cn.bipark.reco.upms.model.mapper.BiUserPositionMapper;
import cn.bipark.reco.upms.model.query.UserPositionQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserPositionListVM;
import org.springframework.stereotype.Component;

@Component
public class UserPositionRepository extends BaseRepository<BiUserPosition, BiUserPositionMapper>
        implements QueryHandler<UserPositionQuery, BiUserPosition> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<UserPositionListVM> findPaged(UserPositionQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiUserPositionMapper.class).findBy(query), query);
    }
}
