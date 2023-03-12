package cn.bipark.reco.upms.model.mapper;

import cn.bipark.reco.upms.model.query.LevelQuery;
import cn.bipark.reco.upms.model.viewmodel.list.LevelListVM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BiLevelMapper extends BiLevelTable {

    /**
     * 自定义SQL查询（常用于较复杂的关联查询），对应实现resources/mapper/BiLevelMapper.xml文件中定义的SQL
     * @query 查询条件
     * @return
     */
    List<LevelListVM> findBy(LevelQuery query);

}