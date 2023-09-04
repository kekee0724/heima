package com.study.mapper;

import com.study.pojo.User;

import java.util.List;
import java.util.Map;

public interface UserMapper {
    List<User> getUserList();

    User getUser(String id);

    List<User> getUserBy(Map<String,Object> map);

    List<User> getUserPage(Integer page,Integer size);

    int addUser(User user);

    int delUser(String id);

    int updateUser(User user);
}
