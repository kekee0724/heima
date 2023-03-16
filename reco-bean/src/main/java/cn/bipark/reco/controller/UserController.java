package cn.bipark.reco.controller;

import cn.bipark.reco.domain.User;
import cn.bipark.reco.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
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
//@Controller
//@ResponseBody // 设置当前控制器返回值作为响应体
@RestController // 等同于@Controller。与@ResponseBodyi两个注解组合功能
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping
    public boolean save(@RequestBody User user) {
        System.out.println("user save is running..." + user);
        return userService.save(user);
    }

    @DeleteMapping("/{id}")
    public boolean delete(@PathVariable Long id) {
        System.out.println("user delete is running..." + id);
        return userService.delete(id);
    }

    @PutMapping
    public boolean update(@RequestBody User user) {
        System.out.println("user update is running..." + user);
        return userService.update(user);
    }

    @GetMapping("/{id}")
    public User getById(@PathVariable Long id) {
        System.out.println("user getById is running..." + id);
        return userService.getById(id);
    }

    @GetMapping
    public List<User> getAll() {
        System.out.println("user getAll is running...");
        return userService.getAll();
    }

    //响应页面/跳转页面
    @RequestMapping("/toJumpPage")
    public String toJumpPage() {
        System.out.println("返回纯文本数据");
        return "page.jsp";
    }

    //响应文本数据
    @RequestMapping("/toText")
    public String toText() {
        System.out.println("返回纯文本数据");
        return "response text";
    }

    @RequestMapping("/toJsonPojo")
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
    public List<User> toJsonList() {
        System.out.println("返回json集合数据");
        return userService.getAll();
    }
}
