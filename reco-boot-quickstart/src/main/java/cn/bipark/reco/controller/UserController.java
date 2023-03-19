package cn.bipark.reco.controller;

import cn.bipark.reco.domain.Result;
import cn.bipark.reco.domain.User;
import cn.bipark.reco.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
@RestController // 等同于@Controller与@ResponseBody两个注解组合功能 // 设置当前控制器返回值作为响应体
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping
    public Result save(@RequestBody User user) {
        System.out.println("user save is running..." + user);
        return Result.success(userService.save(user));
    }

    @DeleteMapping("/{id}")
    public Result delete(@PathVariable Long id) {
        System.out.println("user delete is running..." + id);
        return Result.success(userService.delete(id));
    }

    @PutMapping
    public Result update(@RequestBody User user) {
        System.out.println("user update is running..." + user);
        return Result.success(userService.update(user));
    }

    @GetMapping("/{id}")
    public Result getById(@PathVariable Long id) {
        System.out.println("user getById is running..." + id);
        return Result.success(userService.getById(id));
    }

    @GetMapping
    public Result getAll() {
        System.out.println("user getAll is running...");
        return Result.success(userService.getAll());
    }

}
