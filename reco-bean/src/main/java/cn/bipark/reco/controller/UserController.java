package cn.bipark.reco.controller;

import cn.bipark.reco.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
public class UserController {
    //响应页面/跳转页面
    @RequestMapping("/toJumpPage")
    public String toJumpPage() {
        System.out.println("返回纯文本数据");
        return "page.jsp";
    }

    //响应文本数据
    @RequestMapping("/toText")
    @ResponseBody
    public String toText() {
        System.out.println("返回纯文本数据");
        return "response text";
    }

    @RequestMapping("/toJsonPojo")
    @ResponseBody
    public User toJsonPojo() {
        System.out.println("返回json对象数据");
        User user = new User();
        user.setUsername("可可");
        user.setPassword("0724");
        return user;
    }

    /**
     * HttpMessageConverter类型转换器 数据转换
     * 位置：SpringMVC控制器方法定义上方
     * 作用：设置当前控制器返回值作为响应体
     * jackson-databind提供的转换json功能
     * @return
     */
    @RequestMapping("/toJsonList")
    @ResponseBody
    public List<User> toJsonList() {
        System.out.println("返回json集合数据");
        User user1 = new User();
        user1.setUsername("可可");
        user1.setPassword("0724");

        User user2 = new User();
        user2.setUsername("乐乐");
        user2.setPassword("0520");

        ArrayList<User> userList = new ArrayList<>();
        userList.add(user1);
        userList.add(user2);
        return userList;
    }
}
