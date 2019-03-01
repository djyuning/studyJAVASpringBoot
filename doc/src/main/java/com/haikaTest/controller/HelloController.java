package com.haikaTest.controller;

import com.haikaTest.beans.User;
import com.haikaTest.beans.Response;
import com.haikaTest.service.UserService;

import groovy.util.logging.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Log4j
@RestController
@RequestMapping(value = "/api/user")
public class HelloController extends BaseController {
    @Autowired
    private UserService userService;

    // 获取全部用户
    @RequestMapping(value = "", method = RequestMethod.GET)
    public Response getAll(HttpServletRequest request) {
        Response<User[]> res = new Response<>();

        HttpSession session = request.getSession();
        if (session.getAttribute("uid") == null) {
            System.out.println("请登录");
        }

        User[] users = userService.findAll();
        res.setData(users);
        return res;
    }

    @RequestMapping(value = "/id", method = RequestMethod.GET)
    public Response getUserById(@RequestParam(value = "id", required = true) int id) {
        Response res = new Response();

        // 查询用户
        User user = userService.findUserById(id);

        if (user == null) {
            res.setCode("000003");
            res.setMsg("查询的用户不存在");
            return res;
        }

        res.setData(user);
        return res;
    }

    @RequestMapping(value = "/email", method = RequestMethod.GET)
    public Response getUserByEmail(@RequestParam(value = "email", required = true) String email) {
        Response res = new Response();

        // 参数修正
        if (email.isEmpty()) {
            res.setCode("000001");
            res.setMsg("请输入用户邮箱");
            return res;
        }

        // 验证邮箱格式
        Pattern p = Pattern.compile("[a-zA-Z0-9]+[@]{1}[a-zA-Z0-9]+[.][a-z]+");
        Matcher m = p.matcher(email);
        if (!m.matches()) {
            res.setCode("000002");
            res.setMsg("邮箱格式错误，请重新输入");
            return res;
        }

        // 查询用户
        User user = userService.findUserByEmail(email);
        if (user == null) {
            res.setCode("000003");
            res.setMsg("用户不存在，请检查输入的邮箱");
            return res;
        }

        res.setData(user);
        return res;
    }

    // 添加用户
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public Response addUser(User user) {
        Response res = new Response();

        String username = user.getUsername();
        String email = user.getEmail();
        String mobile = user.getMobile();
        String password = user.getPassword();

        // 是否存在用户
        User extendUser = userService.findUserByUsername(username);
        if (extendUser != null) {
            res.setCode("000002");
            res.setMsg("用户已存在，请尝试其他用户名");
            return res;
        }

        // 邮箱验证
        extendUser = userService.findUserByEmail(email);
        if (extendUser != null) {
            res.setCode("000002");
            res.setMsg("邮箱已存在，请尝试其他邮箱");
            return res;
        }

        // 邮箱验证
        extendUser = userService.findUserByMobile(mobile);
        if (extendUser != null) {
            res.setCode("000002");
            res.setMsg("手机号已存在，请尝试其他手机号");
            return res;
        }

        // 生成用户密码
        user.setPassword(DigestUtils.md5DigestAsHex(password.getBytes()));
        DateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        user.setCreated_at(f.format(new Date()));

        // 新增用户
        boolean flag = userService.addUser(user);
        if (!flag) {
            res.setCode("000001");
            res.setMsg("用户添加失败，请重试");
            return res;
        }

        res.setData(userService.findUserByUsername(username));
        return res;
    }

    // 删除用户
    @RequestMapping(value = "/delete", method = RequestMethod.DELETE)
    public Response deleteUser(int id) {
        Response res = new Response();

        // 新增用户
        boolean flag = userService.deleteUser(id);

        if (!flag) {
            res.setCode("000001");
            res.setMsg("用户删除失败，用户不存在或已被删除。");
            return res;
        }

        return res;
    }

}
