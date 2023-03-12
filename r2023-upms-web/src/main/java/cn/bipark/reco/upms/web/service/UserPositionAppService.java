package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.UserPositionRepository;
import cn.bipark.reco.upms.domain.service.UserPositionService;
import cn.bipark.reco.upms.model.entity.BiUserPosition;
import cn.bipark.reco.upms.model.mapper.BiUserPositionColumn;
import cn.bipark.reco.upms.model.query.UserPositionQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserPositionListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserPositionFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserPositionDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserPositionImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserPositionExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class UserPositionAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiUserPositionColumn.BiUserPosition tc = BiUserPositionColumn.biUserPosition;

    /**
     *根据ID获取用户定位详情
     * @param id
     * @return  用户定位详情VM
     */
    public UserPositionDetailVM get(Long id) {
        var entity = resolve(UserPositionRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, UserPositionDetailVM.class);
        return vm;
    }

    /**
     * 分页查询用户定位
     * @param query 查询条件
     * @return  用户定位列表VM
     */
    public PagedList<UserPositionListVM> getPaged(UserPositionQuery query) {
        return PageUtils.map(resolve(UserPositionRepository.class).getPaged(getQueryDsl(query), query), UserPositionListVM.class);
    }

    /**
     * 获取全部用户定位-不分页
     * @param query 查询条件
     * @return  用户定位列表VM
     */
    public List<UserPositionListVM> getAll(UserPositionQuery query) {
        return PageUtils.map(resolve(UserPositionRepository.class).getAll(getQueryDsl(query)), UserPositionListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(UserPositionQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的用户定位数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(UserPositionQuery query) {
        return resolve(UserPositionRepository.class).count(query);
    }

    /**
     * 新增用户定位
     * @param vm    用户定位表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(UserPositionFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(UserPositionService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新用户定位
     * @param vm    用户定位表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(UserPositionFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(UserPositionService.class).modify(vm, id);
    }

    /**
     * 根据ID删除用户定位
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(UserPositionRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(UserPositionService.class).remove(entity);
    }

    /**
     * 批量删除用户定位
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
    public boolean importList(List<UserPositionImportVM> list) {
        return resolve(UserPositionRepository.class).add(PageUtils.map(list, BiUserPosition.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<UserPositionExportVM> export(UserPositionQuery query) {
        return PageUtils.map(resolve(UserPositionRepository.class).getAll(getQueryDsl(query)), UserPositionExportVM.class);
    }

}
