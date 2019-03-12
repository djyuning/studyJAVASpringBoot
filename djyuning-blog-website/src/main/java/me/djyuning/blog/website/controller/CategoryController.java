package me.djyuning.blog.website.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import me.djyuning.blog.beans.ErrorType;
import me.djyuning.blog.entity.Category;
import me.djyuning.blog.entity.Contents;
import me.djyuning.blog.service.CategoryService;
import me.djyuning.blog.service.ContentsService;
import me.djyuning.blog.website.utils.Pager;
import org.apache.tomcat.jni.Error;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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

    // 每次显示多少页数据
    @Value("${pager.size}")
    int pageSize;

    @GetMapping("")
    public String home(HttpServletRequest request,
                       @RequestParam(name = "page", required = false) String page,
                       Model model) throws IOException {

        // 获取分页
        int pageNow = super.pageNowParam(page);

        // 获取全部文章
        PageHelper.startPage(pageNow, pageSize);
        List<Contents> articles = contentsService.all();
        Page articlesPaged = (Page) articles;
        model.addAttribute("articles", articlesPaged.getResult());

        // 分页设置
        pager.setUrl("/Category");
        pager.setPageNow(pageNow);
        pager.setPageSize(pageSize);
        pager.setRowsTotal(articlesPaged.getTotal());
        model.addAttribute("pager", pager.create());

        return "CategoryList";
    }

    @GetMapping("{alias}")
    public String alias(HttpServletRequest request, HttpServletResponse response,
                        @PathVariable String alias,
                        @RequestParam(name = "page", required = false) String page,
                        Model model) throws IOException {

        // 获取分页
        int pageNow = super.pageNowParam(page);

        // 获取分类信息
        Category category = categoryService.getByAlias(alias);
        model.addAttribute("category", category);
        if (category == null) {
            return "CategoryList";
        }

        // 获取全部文章
        PageHelper.startPage(pageNow, pageSize);
        List<Contents> articles = contentsService.allByCid(category.getId());
        Page articlesPaged = (Page) articles;
        model.addAttribute("articles", articlesPaged.getResult());

        // 分页设置
        pager.setUrl("/Category");
        pager.setPageNow(pageNow);
        pager.setPageSize(pageSize);
        pager.setRowsTotal(articlesPaged.getTotal());
        model.addAttribute("pager", pager.create());

        return "CategoryList";
    }

}
