package cn.bipark.reco.upms.model.mapper;

import cn.bipark.reco.upms.model.query.UserRankQuery;
import cn.bipark.reco.upms.model.viewmodel.list.UserRankListVM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BiUserRankMapper extends BiUserRankTable {

    /**
     * 自定义SQL查询（常用于较复杂的关联查询），对应实现resources/mapper/BiUserRankMapper.xml文件中定义的SQL
     * @query 查询条件
     * @return
     */
    List<UserRankListVM> findBy(UserRankQuery query);

}