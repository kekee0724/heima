package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.UserRepository;
import cn.bipark.reco.upms.domain.service.UserService;
import cn.bipark.reco.upms.model.entity.BiUser;
import cn.bipark.reco.upms.model.mapper.BiUserColumn;
import cn.bipark.reco.upms.model.query.UserQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserListVM;
import cn.bipark.reco.upms.model.viewmodel.form.UserFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.UserDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.UserExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class UserAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiUserColumn.BiUser tc = BiUserColumn.biUser;

    /**
     *根据ID获取用户详情
     * @param id
     * @return  用户详情VM
     */
    public UserDetailVM get(Long id) {
        var entity = resolve(UserRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, UserDetailVM.class);
        return vm;
    }

    /**
     * 分页查询用户
     * @param query 查询条件
     * @return  用户列表VM
     */
    public PagedList<UserListVM> getPaged(UserQuery query) {
        return PageUtils.map(resolve(UserRepository.class).getPaged(getQueryDsl(query), query), UserListVM.class);
    }

    /**
     * 获取全部用户-不分页
     * @param query 查询条件
     * @return  用户列表VM
     */
    public List<UserListVM> getAll(UserQuery query) {
        return PageUtils.map(resolve(UserRepository.class).getAll(getQueryDsl(query)), UserListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(UserQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的用户数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(UserQuery query) {
        return resolve(UserRepository.class).count(query);
    }

    /**
     * 新增用户
     * @param vm    用户表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(UserFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(UserService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新用户
     * @param vm    用户表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(UserFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(UserService.class).modify(vm, id);
    }

    /**
     * 根据ID删除用户
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(UserRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(UserService.class).remove(entity);
    }

    /**
     * 批量删除用户
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
    public boolean importList(List<UserImportVM> list) {
        return resolve(UserRepository.class).add(PageUtils.map(list, BiUser.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<UserExportVM> export(UserQuery query) {
        return PageUtils.map(resolve(UserRepository.class).getAll(getQueryDsl(query)), UserExportVM.class);
    }

}
