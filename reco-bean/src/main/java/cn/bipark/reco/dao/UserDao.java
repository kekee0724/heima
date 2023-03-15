package cn.bipark.reco.dao;

@Deprecated
public interface UserDao {
    void update();

    int select();

    String findName(int id);

}
