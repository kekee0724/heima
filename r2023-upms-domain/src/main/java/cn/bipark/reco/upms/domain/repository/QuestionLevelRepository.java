package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiQuestionLevel;
import cn.bipark.reco.upms.model.mapper.BiQuestionLevelMapper;
import cn.bipark.reco.upms.model.query.QuestionLevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.QuestionLevelListVM;
import org.springframework.stereotype.Component;

@Component
public class QuestionLevelRepository extends BaseRepository<BiQuestionLevel, BiQuestionLevelMapper>
        implements QueryHandler<QuestionLevelQuery, BiQuestionLevel> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<QuestionLevelListVM> findPaged(QuestionLevelQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiQuestionLevelMapper.class).findBy(query), query);
    }
}
