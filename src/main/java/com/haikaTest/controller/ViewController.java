package com.haikaTest.controller;

import com.haikaTest.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/")
public class ViewController {
    @Autowired
    private UserService userService;

    @RequestMapping("")
    public String temp(Map<String, Object> map) {
        // 设置模板变量
        map.put("hello", "这是控制器中定义的数据");

        // 对象数据
        HashMap<String, Object> refer = new HashMap<>();
        refer.put("name", "It works");
        refer.put("version", "0.0.1");
        refer.put("copyright", "HaiKa Tech");
        map.put("refer", refer);

        // 查询用户数据
        map.put("users", userService.findAll());

        return "hello";
    }

    @RequestMapping("/user-edit")
    public String userEdit(@RequestParam int id, Map<String, Object> map) {

        // 查询用户数据
        map.put("user", userService.findUserById(id));

        return "user-edit";
    }

}
