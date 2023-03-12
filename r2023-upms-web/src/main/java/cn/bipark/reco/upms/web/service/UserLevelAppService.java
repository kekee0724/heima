package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.UserLevelRepository;
import cn.bipark.reco.upms.domain.service.UserLevelService;
import cn.bipark.reco.upms.model.entity.BiUserLevel;
import cn.bipark.reco.upms.model.mapper.BiUserLevelColumn;
import cn.bipark.reco.upms.model.query.UserLevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserLevelListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserLevelFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserLevelDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserLevelImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserLevelExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class UserLevelAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiUserLevelColumn.BiUserLevel tc = BiUserLevelColumn.biUserLevel;

    /**
     *根据ID获取用户等级详情
     * @param id
     * @return  用户等级详情VM
     */
    public UserLevelDetailVM get(Long id) {
        var entity = resolve(UserLevelRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, UserLevelDetailVM.class);
        return vm;
    }

    /**
     * 分页查询用户等级
     * @param query 查询条件
     * @return  用户等级列表VM
     */
    public PagedList<UserLevelListVM> getPaged(UserLevelQuery query) {
        return PageUtils.map(resolve(UserLevelRepository.class).getPaged(getQueryDsl(query), query), UserLevelListVM.class);
    }

    /**
     * 获取全部用户等级-不分页
     * @param query 查询条件
     * @return  用户等级列表VM
     */
    public List<UserLevelListVM> getAll(UserLevelQuery query) {
        return PageUtils.map(resolve(UserLevelRepository.class).getAll(getQueryDsl(query)), UserLevelListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(UserLevelQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的用户等级数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(UserLevelQuery query) {
        return resolve(UserLevelRepository.class).count(query);
    }

    /**
     * 新增用户等级
     * @param vm    用户等级表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(UserLevelFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(UserLevelService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新用户等级
     * @param vm    用户等级表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(UserLevelFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(UserLevelService.class).modify(vm, id);
    }

    /**
     * 根据ID删除用户等级
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(UserLevelRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(UserLevelService.class).remove(entity);
    }

    /**
     * 批量删除用户等级
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
    public boolean importList(List<UserLevelImportVM> list) {
        return resolve(UserLevelRepository.class).add(PageUtils.map(list, BiUserLevel.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<UserLevelExportVM> export(UserLevelQuery query) {
        return PageUtils.map(resolve(UserLevelRepository.class).getAll(getQueryDsl(query)), UserLevelExportVM.class);
    }

}
