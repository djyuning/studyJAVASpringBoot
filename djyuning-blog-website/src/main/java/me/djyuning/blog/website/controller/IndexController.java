package me.djyuning.blog.website.controller;


import me.djyuning.blog.entity.Contents;
import me.djyuning.blog.service.ContentsService;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("")
public class IndexController extends BaseController {

    @Autowired
    private ContentsService contentsService;

    // 首页
    @GetMapping("")
    public String index(HttpServletRequest request,
                        @RequestParam(name = "p", required = false) String p,
                        Model model) {

        // 修正分页
        if (p == null || p.equals("")) {
            p = "1";
        }
        int pageNow = Integer.valueOf(p);
        model.addAttribute("pageNow", pageNow);

        // 当前页面信息
        Map<String, String> page = new HashMap<>();
        page.put("title", "首页");
        page.put("keyword", "博客,妖刀,djyuning,前端,设计师,全栈");
        page.put("description", "Hi~我的 djyuning，一个菜鸟级的前端码农，爱前端，爱生活！");

        model.addAttribute("page", page);

        super.pageInit(request, page, model);

        // 获取全部文章
        PageHelper.startPage(pageNow, 1);
        List<Contents> articles = contentsService.all();

        Page articlesPage = (Page) articles;
        model.addAttribute("articlesPage", articlesPage.getResult());

        model.addAttribute("articles", articles);

        return "Index/index";
    }

}
