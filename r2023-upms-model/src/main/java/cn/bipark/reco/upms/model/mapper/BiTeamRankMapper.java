package cn.bipark.reco.upms.model.mapper;

import cn.bipark.reco.upms.model.query.TeamRankQuery;
import cn.bipark.reco.upms.model.viewmodel.list.TeamRankListVM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BiTeamRankMapper extends BiTeamRankTable {

    /**
     * 自定义SQL查询（常用于较复杂的关联查询），对应实现resources/mapper/BiTeamRankMapper.xml文件中定义的SQL
     * @query 查询条件
     * @return
     */
    List<TeamRankListVM> findBy(TeamRankQuery query);

}