package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiUserLevel;
import cn.bipark.reco.upms.model.mapper.BiUserLevelMapper;
import cn.bipark.reco.upms.model.query.UserLevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserLevelListVM;
import org.springframework.stereotype.Component;

@Component
public class UserLevelRepository extends BaseRepository<BiUserLevel, BiUserLevelMapper>
        implements QueryHandler<UserLevelQuery, BiUserLevel> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<UserLevelListVM> findPaged(UserLevelQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiUserLevelMapper.class).findBy(query), query);
    }
}
