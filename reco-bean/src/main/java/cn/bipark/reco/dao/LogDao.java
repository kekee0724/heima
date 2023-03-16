package cn.bipark.reco.dao;

import org.apache.ibatis.annotations.Insert;

public interface LogDao {
    @Insert("insert into bi_log (info,creteDate) values(#{info},now())")
    void log(String info);
}
