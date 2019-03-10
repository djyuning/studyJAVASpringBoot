package me.djyuning.blog.website.controller;

import me.djyuning.blog.beans.ErrorType;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class BaseErrorController extends BaseController implements ErrorController {

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request, Model model) {
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        model.addAttribute("status", new ErrorType(statusCode));

        Map<String, String> page = new HashMap<>();
        page.put("title", "出错了");
        model.addAttribute("page", page);

        return "Error/index";
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }
}
