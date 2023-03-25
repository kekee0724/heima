package cn.bipark.reco;

import cn.bipark.reco.domain.User;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;

import java.math.BigDecimal;

@SpringBootTest
public class RedisTest {
    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Test
    void testString() {
        // 写入一条String数据
        redisTemplate.opsForValue().set("name", "虎哥");
        // 获取string数据
        Object name = redisTemplate.opsForValue().get("name");
        System.out.println("name = " + name);
    }

    @Test
    void testSaveUser() {
        // 创建对象
        User user = new User();
        user.setUsername("虎哥");
        user.setMoney(BigDecimal.valueOf(21));
        // 写入数据
        redisTemplate.opsForValue().set("user:200", user);
        // 获取数据
        User user1 = (User) redisTemplate.opsForValue().get("user:200");
        System.out.println("user1 = " + user1);
    }
}
