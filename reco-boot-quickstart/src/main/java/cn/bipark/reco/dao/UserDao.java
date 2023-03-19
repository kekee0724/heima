package cn.bipark.reco.dao;

import cn.bipark.reco.domain.User;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface UserDao extends BaseMapper<User> {

    @Insert("insert into bi_user (username, password) values(#{username}, #{password})")
    void save(User user);

    @Update("update bi_user set username = #{username}, password = #{password} where id = #{id}")
    void update(User user);

    @Delete("delete from bi_user where id = #{id}")
    void delete(Long id);

    @Select("select * from bi_user where id = #{id}")
    User getById(Long id);

    @Select("select * from bi_user")
    List<User> getAll();

    @Update("update bi_user set money = money - #{money} where username = #{username}")
    void outMoney(@Param("username") String out, @Param("money") Double money);

    @Update("update bi_user set money = money + #{money} where username = #{username}")
    void inMoney(@Param("username") String in, @Param("money") Double money);
}
