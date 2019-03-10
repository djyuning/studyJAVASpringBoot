package me.djyuning.blog.website.controller;

import org.springframework.stereotype.Controller;

@Controller
public class BaseController {

    // 分页解析
    int pageNowParam(String page) {
        int now = 1;
        if (page != null && !page.equals("")) {
            now = page.matches("^\\d+$") ? Integer.valueOf(page) : 1;
        }
        return now;
    }

}
