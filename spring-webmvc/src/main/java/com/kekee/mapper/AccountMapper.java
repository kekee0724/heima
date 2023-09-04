package com.kekee.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

public interface AccountMapper {
    @Update("update tb_account set money=money+#{money} where account_name=#{accountName}")
    public void incrMoney(@Param("accountName") String accountName, @Param("money") Integer money);

    @Update("update tb_account set money=money-#{money} where account_name=#{accountName}")
    public void decrMoney(@Param("accountName") String accountName, @Param("money") Integer money);

}
