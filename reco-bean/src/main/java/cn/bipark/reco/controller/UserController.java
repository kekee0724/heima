package cn.bipark.reco.controller;

import cn.bipark.reco.domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * REST(Representational State Transfer),表现形式状态转换
 * ■传统风格资源描述形式
 * http://localhost/user/getById?id=1
 * http://localhost/user/saveUser
 * ■优点： 隐藏资源的访问行为，无法通过地址得知对资源是何种操作；书写简化。
 * ■按照REST风格访问资源时使用行为动作区分对资源进行了何种操作
 * http://localhost/users 查询全部用户信息GET(查询)
 * http://localhost/users/1 查询指定用户信息GET(查询)
 * http://localhost/users 添加用户信息 P0ST(新增/保存)
 * http://localhost/users 修改用户信息 PUT(修改/更新)
 * http://localhost/users/1 删除用户信息 DELETE(删除)
 */
@Controller
//@RequestMapping("/users")
public class UserController {

    @PostMapping("/users")
    @ResponseBody
    public String save() {
        System.out.println("user save...");
        return "{'module':'user save'}";
    }

    @DeleteMapping("/users/{id}")
    @ResponseBody
    public String delete(@PathVariable Integer id) {
        System.out.println("user delete..." + id);
        return "{'module':'user delete'}";
    }

    @PutMapping("/users")
    @ResponseBody
    public String update() {
        System.out.println("user update...");
        return "{'module':'user update'}";
    }

    @GetMapping("/users/{id}")
    @ResponseBody
    public String getById(@PathVariable Integer id) {
        System.out.println("user getById..." + id);
        return "{'module':'user getById'}";
    }

    @GetMapping("/users")
    @ResponseBody
    public String getAll() {
        System.out.println("user getAll...");
        return "{'module':'user getAll'}";
    }

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
     *
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
