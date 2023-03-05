package cn.bipark.reco.order.model.mapper;

import cn.bipark.reco.order.model.query.OrderQuery;
import cn.bipark.reco.order.model.viewmodel.list.OrderListVM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BiOrderMapper extends BiOrderTable {

    /**
     * 自定义SQL查询（常用于较复杂的关联查询），对应实现resources/mapper/BiOrderMapper.xml文件中定义的SQL
     * @query 查询条件
     * @return
     */
    List<OrderListVM> findBy(OrderQuery query);

}