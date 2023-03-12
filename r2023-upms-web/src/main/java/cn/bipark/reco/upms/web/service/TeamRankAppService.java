package cn.bipark.reco.upms.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.upms.domain.repository.TeamRankRepository;
import cn.bipark.reco.upms.domain.service.TeamRankService;
import cn.bipark.reco.upms.model.entity.BiTeamRank;
import cn.bipark.reco.upms.model.mapper.BiTeamRankColumn;
import cn.bipark.reco.upms.model.query.TeamRankQuery;
import cn.bipark.reco.upms.model.viewmodel.list.TeamRankListVM;
import cn.bipark.reco.upms.model.viewmodel.form.TeamRankFormVM;
import cn.bipark.reco.upms.model.viewmodel.detail.TeamRankDetailVM;
import cn.bipark.reco.upms.model.viewmodel.other.TeamRankImportVM;
import cn.bipark.reco.upms.model.viewmodel.other.TeamRankExportVM;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class TeamRankAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiTeamRankColumn.BiTeamRank tc = BiTeamRankColumn.biTeamRank;

    /**
     *根据ID获取团队排行榜详情
     * @param id
     * @return  团队排行榜详情VM
     */
    public TeamRankDetailVM get(Long id) {
        var entity = resolve(TeamRankRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, TeamRankDetailVM.class);
        return vm;
    }

    /**
     * 分页查询团队排行榜
     * @param query 查询条件
     * @return  团队排行榜列表VM
     */
    public PagedList<TeamRankListVM> getPaged(TeamRankQuery query) {
        return PageUtils.map(resolve(TeamRankRepository.class).getPaged(getQueryDsl(query), query), TeamRankListVM.class);
    }

    /**
     * 获取全部团队排行榜-不分页
     * @param query 查询条件
     * @return  团队排行榜列表VM
     */
    public List<TeamRankListVM> getAll(TeamRankQuery query) {
        return PageUtils.map(resolve(TeamRankRepository.class).getAll(getQueryDsl(query)), TeamRankListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(TeamRankQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的团队排行榜数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(TeamRankQuery query) {
        return resolve(TeamRankRepository.class).count(query);
    }

    /**
     * 新增团队排行榜
     * @param vm    团队排行榜表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(TeamRankFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(TeamRankService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新团队排行榜
     * @param vm    团队排行榜表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(TeamRankFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(TeamRankService.class).modify(vm, id);
    }

    /**
     * 根据ID删除团队排行榜
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(TeamRankRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(TeamRankService.class).remove(entity);
    }

    /**
     * 批量删除团队排行榜
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
    public boolean importList(List<TeamRankImportVM> list) {
        return resolve(TeamRankRepository.class).add(PageUtils.map(list, BiTeamRank.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<TeamRankExportVM> export(TeamRankQuery query) {
        return PageUtils.map(resolve(TeamRankRepository.class).getAll(getQueryDsl(query)), TeamRankExportVM.class);
    }

}
