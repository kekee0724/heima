package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.UserRankRepository;
import cn.bipark.reco.upms.domain.service.UserRankService;
import cn.bipark.reco.upms.model.entity.BiUserRank;
import cn.bipark.reco.upms.model.mapper.BiUserRankColumn;
import cn.bipark.reco.upms.model.query.UserRankQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserRankListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserRankFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserRankDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserRankImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserRankExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class UserRankAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiUserRankColumn.BiUserRank tc = BiUserRankColumn.biUserRank;

    /**
     *根据ID获取个人排行榜详情
     * @param id
     * @return  个人排行榜详情VM
     */
    public UserRankDetailVM get(Long id) {
        var entity = resolve(UserRankRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, UserRankDetailVM.class);
        return vm;
    }

    /**
     * 分页查询个人排行榜
     * @param query 查询条件
     * @return  个人排行榜列表VM
     */
    public PagedList<UserRankListVM> getPaged(UserRankQuery query) {
        return PageUtils.map(resolve(UserRankRepository.class).getPaged(getQueryDsl(query), query), UserRankListVM.class);
    }

    /**
     * 获取全部个人排行榜-不分页
     * @param query 查询条件
     * @return  个人排行榜列表VM
     */
    public List<UserRankListVM> getAll(UserRankQuery query) {
        return PageUtils.map(resolve(UserRankRepository.class).getAll(getQueryDsl(query)), UserRankListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(UserRankQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的个人排行榜数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(UserRankQuery query) {
        return resolve(UserRankRepository.class).count(query);
    }

    /**
     * 新增个人排行榜
     * @param vm    个人排行榜表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(UserRankFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(UserRankService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新个人排行榜
     * @param vm    个人排行榜表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(UserRankFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(UserRankService.class).modify(vm, id);
    }

    /**
     * 根据ID删除个人排行榜
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(UserRankRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(UserRankService.class).remove(entity);
    }

    /**
     * 批量删除个人排行榜
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
    public boolean importList(List<UserRankImportVM> list) {
        return resolve(UserRankRepository.class).add(PageUtils.map(list, BiUserRank.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<UserRankExportVM> export(UserRankQuery query) {
        return PageUtils.map(resolve(UserRankRepository.class).getAll(getQueryDsl(query)), UserRankExportVM.class);
    }

}
