package com.haikaTest.controller;

import groovy.util.logging.Log4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Log4j
@Controller
@RequestMapping("/")
public class IndexController {

    @RequestMapping("")
    public String temp(HttpServletRequest request, HttpServletResponse response, Map<String, Object> map) {
        return "Index/index";
    }

}
