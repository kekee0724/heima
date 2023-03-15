package cn.bipark.reco.service;

import cn.bipark.reco.domain.User;

import java.util.List;

public interface UserService {
    void save(User user);

    void delete(Long id);

    void update(User user);

    List<User> findAll();

    User findById(Long id);

    boolean openURL(String url, String password);
}
