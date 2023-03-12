package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.TeamRepository;
import cn.bipark.reco.upms.domain.service.TeamService;
import cn.bipark.reco.upms.model.entity.BiTeam;
import cn.bipark.reco.upms.model.mapper.BiTeamColumn;
import cn.bipark.reco.upms.model.query.TeamQuery;
import cn.bipark.reco.upms.model.viewmodel.list.TeamListVM;
import cn.bipark.reco.upms.model.viewmodel.form.TeamFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.TeamDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.TeamImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.TeamExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class TeamAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiTeamColumn.BiTeam tc = BiTeamColumn.biTeam;

    /**
     *根据ID获取团队详情
     * @param id
     * @return  团队详情VM
     */
    public TeamDetailVM get(Long id) {
        var entity = resolve(TeamRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, TeamDetailVM.class);
        return vm;
    }

    /**
     * 分页查询团队
     * @param query 查询条件
     * @return  团队列表VM
     */
    public PagedList<TeamListVM> getPaged(TeamQuery query) {
        return PageUtils.map(resolve(TeamRepository.class).getPaged(getQueryDsl(query), query), TeamListVM.class);
    }

    /**
     * 获取全部团队-不分页
     * @param query 查询条件
     * @return  团队列表VM
     */
    public List<TeamListVM> getAll(TeamQuery query) {
        return PageUtils.map(resolve(TeamRepository.class).getAll(getQueryDsl(query)), TeamListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(TeamQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的团队数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(TeamQuery query) {
        return resolve(TeamRepository.class).count(query);
    }

    /**
     * 新增团队
     * @param vm    团队表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(TeamFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(TeamService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新团队
     * @param vm    团队表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(TeamFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(TeamService.class).modify(vm, id);
    }

    /**
     * 根据ID删除团队
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(TeamRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(TeamService.class).remove(entity);
    }

    /**
     * 批量删除团队
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
    public boolean importList(List<TeamImportVM> list) {
        return resolve(TeamRepository.class).add(PageUtils.map(list, BiTeam.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<TeamExportVM> export(TeamQuery query) {
        return PageUtils.map(resolve(TeamRepository.class).getAll(getQueryDsl(query)), TeamExportVM.class);
    }

}
