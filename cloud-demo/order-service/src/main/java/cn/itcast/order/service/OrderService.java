package cn.itcast.order.service;

import cn.itcast.order.mapper.OrderMapper;
import cn.itcast.order.pojo.Order;
import cn.itcast.order.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;

@Service
public class OrderService {

    @Autowired
    private OrderMapper orderMapper;

    @Autowired
    private RestTemplate restTemplate;

    public Order queryOrderById(Long orderId) {
        // 1.查询订单
        Order order = orderMapper.findById(orderId);
        // 2.利用RestTemplate发起http请求，查询用户
        // 2.1.Url路径
        String url = "http://userserver/user/" + order.getUserId();
        System.out.println(url);
        // 2.2.发送郑ttp请求，实现远程调用
        User user = restTemplate.getForObject(url, User.class);
        // 3.封装User
        order.setUser(user);
        // 4.返回
        return order;
    }
}
