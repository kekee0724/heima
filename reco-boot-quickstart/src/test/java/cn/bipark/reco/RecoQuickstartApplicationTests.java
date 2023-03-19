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
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

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
        /*userDao.deleteById(1637430792105078785L);*/
        ArrayList<Long> list = new ArrayList<>();
        Collections.addAll(list, 4L, 5L);
        userDao.deleteBatchIds(list);
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
        ArrayList<Long> list = new ArrayList<>();
        Collections.addAll(list, 4L, 5L);
        userDao.selectBatchIds(list);
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
        QueryWrapper qw1 = new QueryWrapper();
        qw1.lt("money", 18);
        List<User> userList1 = userDao.selectList(qw1);
        System.out.println(userList1);

        // 方式二：Lambda格式按条件查询
        QueryWrapper<User> qw2 = new QueryWrapper();
        // 查询投影: 查询结果包含模型类中部分属性
        qw2.select("id", "nick", "money", "password");
        qw2.lambda().lt(User::getMoney, 18);
        List<User> userList2 = userDao.selectList(qw2);
        System.out.println(userList2);

        // 方式三:Lambda格式按条件查询
        BigDecimal money = BigDecimal.valueOf(10);
        LambdaQueryWrapper<User> lqw1 = new LambdaQueryWrapper<>();
        // 查询投影: 查询结果包含模型类中部分属性
        lqw1.select(User::getId, User::getNick, User::getMoney);
        /*lqw1.lt(null != money, User::getMoney, 10)
                .or()
                .gt(null != money, User::getMoney, 30);*/
        //范围查询lt le gt ge eq between
        lqw1.between(User::getMoney, 10, 30);
        //模糊匹配Like
        lqw1.like(User::getUsername, "mi");

        List<User> userList3 = userDao.selectList(lqw1);
        System.out.println(userList3);

        QueryWrapper<User> lqw2 = new QueryWrapper<>();
        // 查询投影: 查询结果包含模型类中未定义的属性
        lqw2.select("count(*)as count,team");
        lqw2.groupBy("team");
        List<Map<String, Object>> userMaps = userDao.selectMaps(lqw2);
        System.out.println(userMaps);

        //条件查询
        LambdaQueryWrapper<User> lqw3 = new LambdaQueryWrapper<>();
        //等同于=
        lqw3.eq(User::getUsername, "Jerry").eq(User::getPassword, "jerry");
        User loginUser = userDao.selectOne(lqw3);
        System.out.println(loginUser);
    }
}
