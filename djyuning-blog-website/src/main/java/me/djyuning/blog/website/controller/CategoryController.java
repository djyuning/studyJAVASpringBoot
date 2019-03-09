package me.djyuning.blog.website.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import me.djyuning.blog.entity.Category;
import me.djyuning.blog.entity.Contents;
import me.djyuning.blog.service.CategoryService;
import me.djyuning.blog.service.ContentsService;
import me.djyuning.blog.website.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/Category")
public class CategoryController extends BaseController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    private ContentsService contentsService;

    @Autowired
    Pager pager;

    @GetMapping("")
    public String home(HttpServletRequest request, HttpServletResponse response, Model model) {
        return "";
    }

    @GetMapping("{alias}")
    public String alias(HttpServletRequest request, HttpServletResponse response,
                        @PathVariable String alias,
                        @RequestParam(name = "p", required = false) String p,
                        Model model) {

        // 当前页面信息
        Map<String, String> page = new HashMap<>();
        page.put("title", "首页");
        page.put("keyword", "博客,妖刀,djyuning,前端,设计师,全栈");
        page.put("description", "Hi~我的 djyuning，一个菜鸟级的前端码农，爱前端，爱生活！");
        super.pageInit(request, page, model);

        // 获取分类
        Category category = categoryService.getByAlias(alias);

        model.addAttribute("category", category);

        // 修正分页
        if (p == null || p.equals("")) {
            p = "1";
        }
        int pageNow = Integer.valueOf(p);
        model.addAttribute("pageNow", pageNow);

        // 获取全部文章
        PageHelper.startPage(pageNow, (int) pageSize);

        List<Contents> articles = contentsService.allByCid(category.getId());

        Page articlesPage = (Page) articles;

        model.addAttribute("articles", articlesPage.getResult());

        pager.setUrl(request.getRequestURI());
        pager.setPageNow(pageNow);
        pager.setPageSize(pageSize);
        pager.setRowsTotal(articlesPage.getTotal());
        model.addAttribute("pager", pager.create());

        return "CategoryList";
    }

}
