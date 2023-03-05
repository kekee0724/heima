package cn.bipark.reco.order.domain.repository;

import cn.bipark.reco.core.domain.repository.BaseRepository;
import cn.bipark.reco.core.domain.repository.QueryHandler;
import cn.bipark.reco.core.model.valueobject.PagedList;
import cn.bipark.reco.core.util.PageUtils;
import cn.bipark.reco.order.model.entity.BiOrder;
import cn.bipark.reco.order.model.mapper.BiOrderMapper;
import cn.bipark.reco.order.model.query.OrderQuery;
import cn.bipark.reco.order.model.viewmodel.list.OrderListVM;
import org.springframework.stereotype.Component;

@Component
public class OrderRepository extends BaseRepository<BiOrder, BiOrderMapper>
        implements QueryHandler<OrderQuery, BiOrder> {
        
     /**
     * 分页查询（用于映射自定义SQL的分页查询）
     * @param query 查询条件
     * @return 
     */
    /*public PagedList<OrderListVM> findPaged(OrderQuery query) {
        return PageUtils.toPagedList(() -> resolve(BiOrderMapper.class).findBy(query), query);
    }*/
}
