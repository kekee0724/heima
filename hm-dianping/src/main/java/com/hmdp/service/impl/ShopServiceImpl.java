package com.hmdp.service.impl;

import cn.hutool.core.util.BooleanUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hmdp.dto.Result;
import com.hmdp.entity.Shop;
import com.hmdp.mapper.ShopMapper;
import com.hmdp.service.IShopService;
import com.hmdp.utils.RedisData;
import lombok.SneakyThrows;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import static com.hmdp.utils.RedisConstants.*;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author 虎哥
 * @since 2021-12-22
 */
@Service
public class ShopServiceImpl extends ServiceImpl<ShopMapper, Shop> implements IShopService {

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @Override
    public Result queryShopById(Long id) {
        // 缓存穿透
        // Shop shop = queryWithPassThrough(id);
        // 互斥锁解决缓存击穿
        // Shop shop = queryWithMutex(id);
        // 逻辑过期解决缓存击穿
        Shop shop = queryWithLogicalExpire(id);
        if (shop == null) {
            // 返回一个错误信息
            return Result.fail("店铺信息不存在!");
        }
        // 返回
        return Result.ok(shop);
    }

    private static final ExecutorService CACHE_REBUILD_EXECUTOR = Executors.newFixedThreadPool(10);

    private Shop queryWithLogicalExpire(Long id) {
        // 1.从redis查询商铺缓存
        String key = CACHE_SHOP_KEY + id;
        String shopJson = stringRedisTemplate.opsForValue().get(key);
        // 2.判断是否存在
        if (StrUtil.isBlank(shopJson)) {
            // 3.不存在，直接返回
            return null;
        }
        // 4.命中，需要先把Json反序列化为对象
        // RedisData<Shop> redisData = JSONUtil.toBean(shopJson, RedisData.class);
        RedisData redisData = JSONUtil.toBean(shopJson, RedisData.class);
        Shop shop = JSONUtil.toBean((JSONObject) redisData.getData(), Shop.class);
        LocalDateTime expireTime = redisData.getExpireTime();
        // 5.判断是否过期
        if (expireTime.isAfter(LocalDateTime.now())) {
            // 5.1.未过期，直接返回店铺信息
            return shop;
        }
        // 5.2.己过期，需要缓存重建
        // 6.缓存重建
        // 6.1.获取互斥锁
        String lockKey = LOCK_SHOP_KEY + id;
        boolean isLock = tryLock(lockKey);
        // 6.2.判断是否获取锁成功
        if (isLock) {
            // 注意：获取锁成功应该再次检测redis 缓存是否过期，做DoubleCheck。 如果存在则无需重建缓存。
            // 6.3.成功，开启独立线程，实现缓存重建
            CACHE_REBUILD_EXECUTOR.submit(() -> {
                try {
                    // 重建缓存 3600L
                    saveShop2Redis(id, 20L);
                } catch (Exception e) {
                    throw new RuntimeException(e);
                } finally {
                    unlock(lockKey);
                }
            });
        }
        // 6.4.返回过期例商铺信息
        return shop;
    }

    private Shop queryWithMutex(Long id) {
        // 1.从redis查询商铺缓存
        String key = CACHE_SHOP_KEY + id;
        String shopJson = stringRedisTemplate.opsForValue().get(key);
        // 2.判断是否存在
        if (StrUtil.isNotBlank(shopJson)) {
            // 3.存在，直接返回
            Shop shop = JSONUtil.toBean(shopJson, Shop.class);
            return shop;
        }
        // 判断命中的是否是空值
        if (shopJson != null) {
            // 返回一个错误信息
            return null;
        }

        // 4.实现缓存重建
        String lockKey = LOCK_SHOP_KEY + id;
        Shop shop = null;
        try {
            // 4.1.获取互斥锁
            boolean isLock = tryLock(lockKey);
            // 4.2.判断是否获取成功
            if (!isLock) {
                // 4.3.失败，则休眠并重试
                Thread.sleep(50L);
                return queryWithMutex(id);
            }
            // 4.4.成功，根据id查询数据库
            // 注意：获取锁成功应该再次检测redis 缓存是否存在，做DoubleCheck。 如果存在则无需重建缓存。
            shopJson = stringRedisTemplate.opsForValue().get(key);
            // 2.判断是否存在
            if (StrUtil.isNotBlank(shopJson)) {
                // 3.存在，直接返回
                shop = JSONUtil.toBean(shopJson, Shop.class);
                return shop;
            }
            // 4.不存在，根据id查询数据库
            shop = getById(id);
            // 模拟重建的延迟
            Thread.sleep(200L);
            // 5.不存在，返回错误
            if (shop == null) {
                // 将空值写入redis
                stringRedisTemplate.opsForValue().set(key, "", CACHE_NULL_TTL, TimeUnit.MINUTES);
                return null;
            }
            // 6.存在，写入redis
            stringRedisTemplate.opsForValue().set(key, JSONUtil.toJsonStr(shop), CACHE_SHOP_TTL, TimeUnit.MINUTES);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        } finally {
            // 7.释放互斥锁
            unlock(lockKey);
        }
        // 7.返回
        return shop;
    }

    private Shop queryWithPassThrough(Long id) {
        // 1.从redis查询商铺缓存
        String key = CACHE_SHOP_KEY + id;
        String shopJson = stringRedisTemplate.opsForValue().get(key);
        // 2.判断是否存在
        if (StrUtil.isNotBlank(shopJson)) {
            // 3.存在，直接返回
            Shop shop = JSONUtil.toBean(shopJson, Shop.class);
            return shop;
        }
        // 判断命中的是否是空值
        if (shopJson != null) {
            // 返回一个错误信息
            return null;
        }

        // 4.不存在，根据id查询数据库
        Shop shop = getById(id);
        // 5.不存在，返回错误
        if (shop == null) {
            stringRedisTemplate.opsForValue().set(key, "", CACHE_NULL_TTL, TimeUnit.MINUTES);
            return null;
        }
        // 6.存在，写入redis
        stringRedisTemplate.opsForValue().set(key, JSONUtil.toJsonStr(shop), CACHE_SHOP_TTL, TimeUnit.MINUTES);
        // 7.返回
        return shop;
    }

    private boolean tryLock(String key) {
        return BooleanUtil.isTrue(stringRedisTemplate.opsForValue().setIfAbsent(key, "1", 10, TimeUnit.SECONDS));
    }

    private void unlock(String key) {
        stringRedisTemplate.delete(key);
    }

    // 在ShopServiceImpl新增此方法,利用单元测试进行缓存预热
    public void saveShop2Redis(Long id, Long expireSeconds) throws InterruptedException {
        // 1.查询店铺数据
        Shop shop = getById(id);
        // 模拟重建的延迟
        Thread.sleep(200L);
        // 2.封装逻辑过期时间
        RedisData<Shop> redisData = new RedisData();
        redisData.setData(shop);
        redisData.setExpireTime(LocalDateTime.now().plusSeconds(expireSeconds));
        // 3.写入Redis
        stringRedisTemplate.opsForValue().set(CACHE_SHOP_KEY + id, JSONUtil.toJsonStr(redisData));
    }

    @Override
    @Transactional
    public Result updateShop(Shop shop) {
        Long id = shop.getId();
        if (id == null) {
            return Result.fail("店铺id不能为空！");
        }
        // 1.更新数据库
        updateById(shop);
        // 2.刪除缓存
        stringRedisTemplate.expire(CACHE_SHOP_KEY + id, 0, TimeUnit.SECONDS);
        return Result.ok();
    }
}
