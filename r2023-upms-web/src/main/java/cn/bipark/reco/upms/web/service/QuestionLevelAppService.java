package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.QuestionLevelRepository;
import cn.bipark.reco.upms.domain.service.QuestionLevelService;
import cn.bipark.reco.upms.model.entity.BiQuestionLevel;
import cn.bipark.reco.upms.model.mapper.BiQuestionLevelColumn;
import cn.bipark.reco.upms.model.query.QuestionLevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.QuestionLevelListVM;
import cn.bipark.reco.upms.model.viewmodel.form.QuestionLevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.QuestionLevelDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionLevelImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.QuestionLevelExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class QuestionLevelAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiQuestionLevelColumn.BiQuestionLevel tc = BiQuestionLevelColumn.biQuestionLevel;

    /**
     *根据ID获取题目等级详情
     * @param id
     * @return  题目等级详情VM
     */
    public QuestionLevelDetailVM get(Long id) {
        var entity = resolve(QuestionLevelRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, QuestionLevelDetailVM.class);
        return vm;
    }

    /**
     * 分页查询题目等级
     * @param query 查询条件
     * @return  题目等级列表VM
     */
    public PagedList<QuestionLevelListVM> getPaged(QuestionLevelQuery query) {
        return PageUtils.map(resolve(QuestionLevelRepository.class).getPaged(getQueryDsl(query), query), QuestionLevelListVM.class);
    }

    /**
     * 获取全部题目等级-不分页
     * @param query 查询条件
     * @return  题目等级列表VM
     */
    public List<QuestionLevelListVM> getAll(QuestionLevelQuery query) {
        return PageUtils.map(resolve(QuestionLevelRepository.class).getAll(getQueryDsl(query)), QuestionLevelListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(QuestionLevelQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的题目等级数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(QuestionLevelQuery query) {
        return resolve(QuestionLevelRepository.class).count(query);
    }

    /**
     * 新增题目等级
     * @param vm    题目等级表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(QuestionLevelFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(QuestionLevelService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新题目等级
     * @param vm    题目等级表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(QuestionLevelFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(QuestionLevelService.class).modify(vm, id);
    }

    /**
     * 根据ID删除题目等级
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(QuestionLevelRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(QuestionLevelService.class).remove(entity);
    }

    /**
     * 批量删除题目等级
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
    public boolean importList(List<QuestionLevelImportVM> list) {
        return resolve(QuestionLevelRepository.class).add(PageUtils.map(list, BiQuestionLevel.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<QuestionLevelExportVM> export(QuestionLevelQuery query) {
        return PageUtils.map(resolve(QuestionLevelRepository.class).getAll(getQueryDsl(query)), QuestionLevelExportVM.class);
    }

}
