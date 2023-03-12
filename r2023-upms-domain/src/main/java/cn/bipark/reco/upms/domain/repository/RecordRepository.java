package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiRecord;
import cn.bipark.reco.upms.model.mapper.BiRecordMapper;
import cn.bipark.reco.upms.model.query.RecordQuery;
import cn.bipark.reco.upms.model.viewmodel.list.RecordListVM;
import org.springframework.stereotype.Component;

@Component
public class RecordRepository extends BaseRepository<BiRecord, BiRecordMapper>
        implements QueryHandler<RecordQuery, BiRecord> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<RecordListVM> findPaged(RecordQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiRecordMapper.class).findBy(query), query);
    }
}
