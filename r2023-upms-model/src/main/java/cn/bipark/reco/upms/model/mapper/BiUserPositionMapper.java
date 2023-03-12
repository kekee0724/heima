package cn.bipark.reco.upms.model.mapper;

import cn.bipark.reco.upms.model.query.UserPositionQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserPositionListVM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BiUserPositionMapper extends BiUserPositionTable {

    /**
     * 自定义SQL查询（常用于较复杂的关联查询），对应实现resources/mapper/BiUserPositionMapper.xml文件中定义的SQL
     * @query 查询条件
     * @return
     */
    List<UserPositionListVM> findBy(UserPositionQuery query);

}