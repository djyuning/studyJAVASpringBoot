package me.djyuning.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/Index")
public class IndexController extends BaseController {

    @GetMapping("/index")
    public String index(HttpServletRequest request, Model model) {

        // 当前页面信息
        Map<String, String> page = new HashMap<>();
        page.put("title", "首页");
        page.put("keyword", "博客,妖刀,djyuning,前端,设计师,全栈");
        page.put("description", "Hi~我的 djyuning，一个菜鸟级的前端码农，爱前端，爱生活！");
        super.pageInit(request, page, model);

        return "Index/index";
    }

}
