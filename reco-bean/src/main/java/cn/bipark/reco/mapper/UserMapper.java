package cn.bipark.reco.mapper;

import cn.bipark.reco.domain.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface UserMapper {
    @Select("select * from bi_user where id = #{id}")
    User findById(Long id);

    @Select("select * from bi_user")
    List<User> findAll();

    @Update("update bi_user set money = money - #{money} where username = #{username}")
    void outMoney(@Param("username") String out, @Param("money") Double money);

    @Update("update bi_user set money = money + #{money} where username = #{username}")
    void inMoney(@Param("username") String in, @Param("money") Double money);
}
