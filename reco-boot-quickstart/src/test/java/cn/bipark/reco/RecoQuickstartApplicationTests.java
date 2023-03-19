package cn.bipark.reco;

import cn.bipark.reco.dao.UserDao;
import cn.bipark.reco.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class RecoQuickstartApplicationTests {

    @Autowired
    private UserService userService;

    @Autowired
    private UserDao userDao;

    @Test
    void contextLoads() {
        userService.getById(1L);
    }

    @Test
    void testGetById() {
        userDao.getById(1L);
    }
}
