package cn.bipark.reco.service;

import cn.bipark.reco.config.SpringConfig;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = SpringConfig.class)
public class UserServiceTestCase {
    @Autowired
    private UserService userService;

    @Test
    public void TestFindAll() {
        System.out.println(userService.getAll());
    }

    @Test
    public void TestFindById() {
        System.out.println(userService.getById(1L));
    }
}
