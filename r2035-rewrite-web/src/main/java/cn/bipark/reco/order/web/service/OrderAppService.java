package cn.bipark.reco.order.web.service;

import cn.bipark.reco.core.data.QueryDSL;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.core.web.service.BaseAppService;
import cn.bipark.reco.order.domain.repository.OrderRepository;
import cn.bipark.reco.order.domain.service.OrderService;
import cn.bipark.reco.order.model.entity.BiOrder;
import cn.bipark.reco.order.model.mapper.BiOrderColumn;
import cn.bipark.reco.order.model.query.OrderQuery;
import cn.bipark.reco.order.model.viewmodel.list.OrderListVM;
import cn.bipark.reco.order.model.viewmodel.form.OrderFormVM;
import cn.bipark.reco.order.model.viewmodel.detail.OrderDetailVM;
import cn.bipark.reco.order.model.viewmodel.other.OrderImportVM;
import cn.bipark.reco.order.model.viewmodel.other.OrderExportVM;
import lombok.var;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.List;

@Service
public class OrderAppService extends BaseAppService {
    private static final String ORDER_BY = "id desc";
    private final BiOrderColumn.BiOrder tc = BiOrderColumn.biOrder;

    /**
     *根据ID获取未知对象详情
     * @param id
     * @return  未知对象详情VM
     */
    public OrderDetailVM get(Long id) {
        var entity = resolve(OrderRepository.class).get(id);
        if (entity == null) return null;
        var vm = PageUtils.map(entity, OrderDetailVM.class);
        return vm;
    }

    /**
     * 分页查询未知对象
     * @param query 查询条件
     * @return  未知对象列表VM
     */
    public PagedList<OrderListVM> getPaged(OrderQuery query) {
        return PageUtils.map(resolve(OrderRepository.class).getPaged(getQueryDsl(query), query), OrderListVM.class);
    }

    /**
     * 获取全部未知对象-不分页
     * @param query 查询条件
     * @return  未知对象列表VM
     */
    public List<OrderListVM> getAll(OrderQuery query) {
        return PageUtils.map(resolve(OrderRepository.class).getAll(getQueryDsl(query)), OrderListVM.class);
    }

    /**
     * 查询条件通用处理
     * @param query 查询条件
     * @return  查询条件定义
     */
    private QueryDSL getQueryDsl(OrderQuery query) {
        if (StringUtils.isEmpty(query.getOrderBy())) {
            query.setOrderBy(ORDER_BY);
        }
        var dsl = query.query();
        return dsl;
    }

    /**
     * 获取符合查询条件的未知对象数量
     * @param query 查询条件
     * @return  数量
     */
    public long count(OrderQuery query) {
        return resolve(OrderRepository.class).count(query);
    }

    /**
     * 新增未知对象
     * @param vm    未知对象表单VM
     * @return  新对象ID
     */
    @Transactional
    public Long post(OrderFormVM vm) {
        //TODO 涉及其他领域（模块）的新增操作前置处理       
        var entity = resolve(OrderService.class).create(vm);
        return entity.getId();
    }

    /**
     * 根据ID更新未知对象
     * @param vm    未知对象表单VM
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean put(OrderFormVM vm, Long id) {
        //TODO 涉及其他领域（模块）的修改操作前置处理        
        return resolve(OrderService.class).modify(vm, id);
    }

    /**
     * 根据ID删除未知对象
     * @param id    对象ID
     * @return  是否成功
     */
    @Transactional
    public boolean delete(Long id) {
        var entity = this.resolve(OrderRepository.class).get(id);
        if (entity == null){
//            throw new RecordNotExistException();      //【建议】因该异常尚未加入基础框架，如使用请自行定义
            return false;
        }
        //TODO 涉及其他领域（模块）的删除操作前置处理
        return resolve(OrderService.class).remove(entity);
    }

    /**
     * 批量删除未知对象
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
    public boolean importList(List<OrderImportVM> list) {
        return resolve(OrderRepository.class).add(PageUtils.map(list, BiOrder.class));
    }

    /**
     * 按条件获取可导出的对象列表
     * @param query
     * @return
     */
    public List<OrderExportVM> export(OrderQuery query) {
        return PageUtils.map(resolve(OrderRepository.class).getAll(getQueryDsl(query)), OrderExportVM.class);
    }

}
