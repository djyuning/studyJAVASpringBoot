package me.djyuning.blog.website.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import me.djyuning.blog.entity.Contents;
import me.djyuning.blog.service.ContentsService;
import me.djyuning.blog.website.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("")
public class IndexController extends BaseController {

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
                       Model model) {
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

        return "Index/index";
    }

}
