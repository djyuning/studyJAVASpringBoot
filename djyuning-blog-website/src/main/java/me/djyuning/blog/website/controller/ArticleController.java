package me.djyuning.blog.website.controller;

import me.djyuning.blog.entity.Contents;
import me.djyuning.blog.service.ContentsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/Article")
public class ArticleController extends BaseController {

    @Autowired
    private ContentsService contentsService;

    @GetMapping("")
    public String index(HttpServletRequest request, Model model) {

        model.addAttribute("articles", contentsService.all());

        return "Article/index";
    }

    @RequestMapping("/detail/{id}")
    public String detail(HttpServletRequest request, HttpServletResponse response, Model model,
                         @PathVariable Integer id)  {
        // 查询文章
        Contents article = contentsService.getById(id);
        model.addAttribute("article", article);

        return "Article/detail";
    }

}
