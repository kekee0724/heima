package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.RecordRepository;
import cn.bipark.reco.upms.domain.service.RecordService;
import cn.bipark.reco.upms.model.entity.BiRecord;
import cn.bipark.reco.upms.model.mapper.BiRecordColumn;
import cn.bipark.reco.upms.model.query.RecordQuery;
import cn.bipark.reco.upms.model.viewmodel.list.RecordListVM;
import cn.bipark.reco.upms.model.viewmodel.form.RecordFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.RecordDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.RecordImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.RecordExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class RecordAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiRecordColumn.BiRecord tc = BiRecordColumn.biRecord;

    /**
     *根据ID获取答题记录详情
     * @param id
     * @return  答题记录详情VM
     */
    public RecordDetailVM get(Long id) {
        var entity = resolve(RecordRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, RecordDetailVM.class);
        return vm;
    }

    /**
     * 分页查询答题记录
     * @param query 查询条件
     * @return  答题记录列表VM
     */
    public PagedList<RecordListVM> getPaged(RecordQuery query) {
        return PageUtils.map(resolve(RecordRepository.class).getPaged(getQueryDsl(query), query), RecordListVM.class);
    }

    /**
     * 获取全部答题记录-不分页
     * @param query 查询条件
     * @return  答题记录列表VM
     */
    public List<RecordListVM> getAll(RecordQuery query) {
        return PageUtils.map(resolve(RecordRepository.class).getAll(getQueryDsl(query)), RecordListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(RecordQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的答题记录数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(RecordQuery query) {
        return resolve(RecordRepository.class).count(query);
    }

    /**
     * 新增答题记录
     * @param vm    答题记录表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(RecordFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(RecordService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新答题记录
     * @param vm    答题记录表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(RecordFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(RecordService.class).modify(vm, id);
    }

    /**
     * 根据ID删除答题记录
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(RecordRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(RecordService.class).remove(entity);
    }

    /**
     * 批量删除答题记录
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
    public boolean importList(List<RecordImportVM> list) {
        return resolve(RecordRepository.class).add(PageUtils.map(list, BiRecord.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<RecordExportVM> export(RecordQuery query) {
        return PageUtils.map(resolve(RecordRepository.class).getAll(getQueryDsl(query)), RecordExportVM.class);
    }

}
