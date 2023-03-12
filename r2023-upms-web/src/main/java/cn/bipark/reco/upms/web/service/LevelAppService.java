package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.LevelRepository;
import cn.bipark.reco.upms.domain.service.LevelService;
import cn.bipark.reco.upms.model.entity.BiLevel;
import cn.bipark.reco.upms.model.mapper.BiLevelColumn;
import cn.bipark.reco.upms.model.query.LevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.LevelListVM;
import cn.bipark.reco.upms.model.viewmodel.form.LevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.LevelDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.LevelImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.LevelExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class LevelAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiLevelColumn.BiLevel tc = BiLevelColumn.biLevel;

    /**
     *根据ID获取等级详情
     * @param id
     * @return  等级详情VM
     */
    public LevelDetailVM get(Long id) {
        var entity = resolve(LevelRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, LevelDetailVM.class);
        return vm;
    }

    /**
     * 分页查询等级
     * @param query 查询条件
     * @return  等级列表VM
     */
    public PagedList<LevelListVM> getPaged(LevelQuery query) {
        return PageUtils.map(resolve(LevelRepository.class).getPaged(getQueryDsl(query), query), LevelListVM.class);
    }

    /**
     * 获取全部等级-不分页
     * @param query 查询条件
     * @return  等级列表VM
     */
    public List<LevelListVM> getAll(LevelQuery query) {
        return PageUtils.map(resolve(LevelRepository.class).getAll(getQueryDsl(query)), LevelListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(LevelQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的等级数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(LevelQuery query) {
        return resolve(LevelRepository.class).count(query);
    }

    /**
     * 新增等级
     * @param vm    等级表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(LevelFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(LevelService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新等级
     * @param vm    等级表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(LevelFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(LevelService.class).modify(vm, id);
    }

    /**
     * 根据ID删除等级
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(LevelRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(LevelService.class).remove(entity);
    }

    /**
     * 批量删除等级
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
    public boolean importList(List<LevelImportVM> list) {
        return resolve(LevelRepository.class).add(PageUtils.map(list, BiLevel.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<LevelExportVM> export(LevelQuery query) {
        return PageUtils.map(resolve(LevelRepository.class).getAll(getQueryDsl(query)), LevelExportVM.class);
    }

}
