package cn.bipark.reco.mapper;

import org.apache.ibatis.annotations.Insert;

public interface LogMapper {
    @Insert("insert into bi_log (info,creteDate) values(#{info},now())")
    void log(String info);
}
