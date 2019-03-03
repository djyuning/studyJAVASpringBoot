package me.djyuning.blog.website.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/About")
public class AboutController extends BaseController {

    @GetMapping("")
    public String index(HttpServletRequest request, HttpServletResponse response, Model model) {

        Map<String, String> page = new HashMap<>();
        page.put("title", "关于我");
        model.addAttribute("page", page);

        super.pageInit(request, page, model);

        return "About/index";
    }

}
