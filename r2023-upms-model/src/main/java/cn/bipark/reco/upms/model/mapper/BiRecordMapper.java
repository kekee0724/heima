package cn.bipark.reco.upms.model.mapper;

import cn.bipark.reco.upms.model.query.RecordQuery;
import cn.bipark.reco.upms.model.viewmodel.list.RecordListVM;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BiRecordMapper extends BiRecordTable {

    /**
     * 自定义SQL查询（常用于较复杂的关联查询），对应实现resources/mapper/BiRecordMapper.xml文件中定义的SQL
     * @query 查询条件
     * @return
     */
    List<RecordListVM> findBy(RecordQuery query);

}