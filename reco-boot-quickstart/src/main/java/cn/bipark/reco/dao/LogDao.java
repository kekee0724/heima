package cn.bipark.reco.dao;

import cn.bipark.reco.domain.Log;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LogDao extends BaseMapper<Log> {
    @Insert("insert into bi_log (info,creteDate) values(#{info},now())")
    void log(String info);
}
