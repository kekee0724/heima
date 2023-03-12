package cn.bipark.reco.upms.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.upms.model.entity.BiQuestion;
import cn.bipark.reco.upms.model.mapper.BiQuestionMapper;
import cn.bipark.reco.upms.model.query.QuestionQuery;
import cn.bipark.reco.upms.model.viewmodel.list.QuestionListVM;
import org.springframework.stereotype.Component;

@Component
public class QuestionRepository extends BaseRepository<BiQuestion, BiQuestionMapper>
        implements QueryHandler<QuestionQuery, BiQuestion> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    public PagedList<QuestionListVM> findPaged(QuestionQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiQuestionMapper.class).findBy(query), query);
    }
}
