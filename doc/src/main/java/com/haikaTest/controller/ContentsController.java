package com.haikaTest.controller;

import com.haikaTest.service.UserService;
import groovy.util.logging.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Log4j
@Controller
@RequestMapping("/Contents")
public class ContentsController {
    @Autowired
    private UserService userService;

    @RequestMapping("")
    public String index(HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
        return "Contents/index";
    }

    @RequestMapping("/category")
    public String category(HttpServletRequest request,  Map<String, Object> map) {
        return "Contents/category";
    }

}
