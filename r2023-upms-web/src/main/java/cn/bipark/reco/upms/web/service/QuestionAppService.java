package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.QuestionRepository;
import cn.bipark.reco.upms.domain.service.QuestionService;
import cn.bipark.reco.upms.model.entity.BiQuestion;
import cn.bipark.reco.upms.model.mapper.BiQuestionColumn;
import cn.bipark.reco.upms.model.query.QuestionQuery;
import cn.bipark.reco.upms.model.viewmodel.list.QuestionListVM;
import cn.bipark.reco.upms.model.viewmodel.form.QuestionFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.QuestionDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class QuestionAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiQuestionColumn.BiQuestion tc = BiQuestionColumn.biQuestion;

    /**
     *根据ID获取题目详情
     * @param id
     * @return  题目详情VM
     */
    public QuestionDetailVM get(Long id) {
        var entity = resolve(QuestionRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, QuestionDetailVM.class);
        return vm;
    }

    /**
     * 分页查询题目
     * @param query 查询条件
     * @return  题目列表VM
     */
    public PagedList<QuestionListVM> getPaged(QuestionQuery query) {
        return PageUtils.map(resolve(QuestionRepository.class).getPaged(getQueryDsl(query), query), QuestionListVM.class);
    }

    /**
     * 获取全部题目-不分页
     * @param query 查询条件
     * @return  题目列表VM
     */
    public List<QuestionListVM> getAll(QuestionQuery query) {
        return PageUtils.map(resolve(QuestionRepository.class).getAll(getQueryDsl(query)), QuestionListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(QuestionQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的题目数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(QuestionQuery query) {
        return resolve(QuestionRepository.class).count(query);
    }

    /**
     * 新增题目
     * @param vm    题目表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(QuestionFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(QuestionService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新题目
     * @param vm    题目表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(QuestionFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(QuestionService.class).modify(vm, id);
    }

    /**
     * 根据ID删除题目
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(QuestionRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(QuestionService.class).remove(entity);
    }

    /**
     * 批量删除题目
     * @param ids   对象ID数组
     * @return  成功数量
     */
    public int batchDelete(Long[] ids) {
        //TODO 应分别记录成功和失败的数据并返回给调用方
        int success = 0;
        for (Long id : ids) {
            if (this.delete(id)){
                success++;
            }
        }
        return success;
    }

    /**
     * 导入对象列表
     * @param list
     * @return
     */
    public boolean importList(List<QuestionImportVM> list) {
        return resolve(QuestionRepository.class).add(PageUtils.map(list, BiQuestion.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<QuestionExportVM> export(QuestionQuery query) {
        return PageUtils.map(resolve(QuestionRepository.class).getAll(getQueryDsl(query)), QuestionExportVM.class);
    }

}
