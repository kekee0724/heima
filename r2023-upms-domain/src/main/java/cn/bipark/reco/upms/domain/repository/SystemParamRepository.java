package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiSystemParam;
import cn.bipark.reco.upms.model.mapper.BiSystemParamMapper;
import cn.bipark.reco.upms.model.query.SystemParamQuery;
import cn.bipark.reco.upms.model.viewmodel.list.SystemParamListVM;
import org.springframework.stereotype.Component;

@Component
public class SystemParamRepository extends BaseRepository<BiSystemParam, BiSystemParamMapper>
        implements QueryHandler<SystemParamQuery, BiSystemParam> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<SystemParamListVM> findPaged(SystemParamQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiSystemParamMapper.class).findBy(query), query);
    }
}
