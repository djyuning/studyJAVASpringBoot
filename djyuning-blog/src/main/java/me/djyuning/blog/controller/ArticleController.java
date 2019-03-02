package me.djyuning.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/Article")
public class ArticleController extends BaseController {

    @GetMapping("")
    public String index(HttpServletRequest request, Model model) {

        // 当前页面信息
        Map<String, String> page = new HashMap<>();
        page.put("title", "日志");

        model.addAttribute("page", page);

        super.pageInit(request, page, model);

        model.addAttribute("articles", new int[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12});

        return "Article/index";
    }

    @RequestMapping("/detail/{id}")
    public String detail(HttpServletRequest request, Model model, @PathVariable Integer id) {

        Map<String, String> page = new HashMap<>();
        page.put("title", "日志");

        model.addAttribute("page", page);

        super.pageInit(request, page, model);

        return "Article/detail";
    }

}
