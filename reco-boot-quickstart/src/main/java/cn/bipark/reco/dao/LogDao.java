package cn.bipark.reco.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LogDao {
    @Insert("insert into bi_log (info,creteDate) values(#{info},now())")
    void log(String info);
}
