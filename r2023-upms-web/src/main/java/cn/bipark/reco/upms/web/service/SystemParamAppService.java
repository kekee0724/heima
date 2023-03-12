package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.SystemParamRepository;
import cn.bipark.reco.upms.domain.service.SystemParamService;
import cn.bipark.reco.upms.model.entity.BiSystemParam;
import cn.bipark.reco.upms.model.mapper.BiSystemParamColumn;
import cn.bipark.reco.upms.model.query.SystemParamQuery;
import cn.bipark.reco.upms.model.viewmodel.list.SystemParamListVM;
import cn.bipark.reco.upms.model.viewmodel.form.SystemParamFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.SystemParamDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.SystemParamImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.SystemParamExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class SystemParamAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiSystemParamColumn.BiSystemParam tc = BiSystemParamColumn.biSystemParam;

    /**
     *根据ID获取系统参数详情
     * @param id
     * @return  系统参数详情VM
     */
    public SystemParamDetailVM get(Long id) {
        var entity = resolve(SystemParamRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, SystemParamDetailVM.class);
        return vm;
    }

    /**
     * 分页查询系统参数
     * @param query 查询条件
     * @return  系统参数列表VM
     */
    public PagedList<SystemParamListVM> getPaged(SystemParamQuery query) {
        return PageUtils.map(resolve(SystemParamRepository.class).getPaged(getQueryDsl(query), query), SystemParamListVM.class);
    }

    /**
     * 获取全部系统参数-不分页
     * @param query 查询条件
     * @return  系统参数列表VM
     */
    public List<SystemParamListVM> getAll(SystemParamQuery query) {
        return PageUtils.map(resolve(SystemParamRepository.class).getAll(getQueryDsl(query)), SystemParamListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(SystemParamQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的系统参数数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(SystemParamQuery query) {
        return resolve(SystemParamRepository.class).count(query);
    }

    /**
     * 新增系统参数
     * @param vm    系统参数表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(SystemParamFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(SystemParamService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新系统参数
     * @param vm    系统参数表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(SystemParamFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(SystemParamService.class).modify(vm, id);
    }

    /**
     * 根据ID删除系统参数
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(SystemParamRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(SystemParamService.class).remove(entity);
    }

    /**
     * 批量删除系统参数
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
    public boolean importList(List<SystemParamImportVM> list) {
        return resolve(SystemParamRepository.class).add(PageUtils.map(list, BiSystemParam.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<SystemParamExportVM> export(SystemParamQuery query) {
        return PageUtils.map(resolve(SystemParamRepository.class).getAll(getQueryDsl(query)), SystemParamExportVM.class);
    }

}
