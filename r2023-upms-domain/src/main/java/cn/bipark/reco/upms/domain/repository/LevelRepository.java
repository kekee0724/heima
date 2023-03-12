package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiLevel;
import cn.bipark.reco.upms.model.mapper.BiLevelMapper;
import cn.bipark.reco.upms.model.query.LevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.LevelListVM;
import org.springframework.stereotype.Component;

@Component
public class LevelRepository extends BaseRepository<BiLevel, BiLevelMapper>
        implements QueryHandler<LevelQuery, BiLevel> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<LevelListVM> findPaged(LevelQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiLevelMapper.class).findBy(query), query);
    }
}
