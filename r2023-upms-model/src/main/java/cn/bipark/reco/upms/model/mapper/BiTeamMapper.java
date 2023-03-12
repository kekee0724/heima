package cn.bipark.reco.upms.model.mapper;

import cn.bipark.reco.upms.model.query.TeamQuery;
import cn.bipark.reco.upms.model.viewmodel.list.TeamListVM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BiTeamMapper extends BiTeamTable {

    /**
     * 自定义SQL查询（常用于较复杂的关联查询），对应实现resources/mapper/BiTeamMapper.xml文件中定义的SQL
     * @query 查询条件
     * @return
     */
    List<TeamListVM> findBy(TeamQuery query);

}