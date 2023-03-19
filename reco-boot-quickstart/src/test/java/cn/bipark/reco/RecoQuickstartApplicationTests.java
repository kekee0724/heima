package cn.bipark.reco;

import cn.bipark.reco.dao.UserDao;
import cn.bipark.reco.domain.User;
import cn.bipark.reco.service.UserService;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;
import java.util.List;

@SpringBootTest
public class RecoQuickstartApplicationTests {

    @Autowired
    private UserService userService;

    @Autowired
    private UserDao userDao;

    @Test
    void contextLoads() {
        System.out.println(userService.getById(1L));
    }

    @Test
    void testSave() {
        User user = new User();
        user.setNick("黑马程序员");
        user.setPassword("itheima");
        user.setTeam("12");
        user.setPhone("4006184000");
        userDao.insert(user);
    }

    @Test
    void testDeleteById() {
        userDao.deleteById(1637430792105078785L);
    }

    @Test
    void testUpdateById() {
        User user = new User();
        user.setId(1L);
        user.setNick("Tom666");
        user.setPassword("tom888");
        userDao.updateById(user);
    }

    @Test
    void testSelectById() {
        System.out.println(userDao.selectById(1L));
    }

    @Test
    void testGetById() {
        System.out.println(userDao.getById(1L));
    }

    @Test
    void testSelectList() {
        System.out.println(userDao.selectList(null));
    }

    @Test
    void testGetByPage() {
        IPage page = new Page(1, 5);
        userDao.selectPage(page, null);
        System.out.println("当前页码值:" + page.getCurrent());
        System.out.println("每页显示数:" + page.getSize());
        System.out.println("一共多少页:" + page.getPages());
        System.out.println("一共多少条数据:" + page.getTotal());
        System.out.println("数据:" + page.getRecords());
    }

    @Test
    void testGetAll() {
        //按条件查询
        /*QueryWrapper qw = new QueryWrapper();
        qw.lt("money",18);
        List<User> userList = userDao.selectList(qw);
        System.out.println(userList);*/

        //方式二：Lambda格式按条件查询
        /*QueryWrapper<User> qw = new QueryWrapper();
        qw.lambda().lt(User::getMoney, 18);
        List<User> userList = userDao.selectList(qw);
        System.out.println(userList);*/

        //方式三:Lambda格式按条件查询
        BigDecimal money = BigDecimal.valueOf(10);
        LambdaQueryWrapper<User> lqw = new LambdaQueryWrapper<>();
        /*lqw.lt(User::getMoney, 30).gt(User::getMoney, 10);*/
        lqw.lt(null != money, User::getMoney, 10)
                .or()
                .gt(null != money, User::getMoney, 30);
        List<User> userList = userDao.selectList(lqw);
        System.out.println(userList);
    }
}
