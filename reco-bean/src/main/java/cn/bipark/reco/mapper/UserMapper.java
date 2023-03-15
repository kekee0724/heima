package cn.bipark.reco.mapper;

import cn.bipark.reco.domain.User;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {
    @Select("select *from bi_user where id = #{id}")
    User findById(Long id);

    @Select("select * from bi_user")
    List<User> findAll();
}
