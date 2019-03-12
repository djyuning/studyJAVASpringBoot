package me.djyuning.blog.website.controller;

import me.djyuning.blog.beans.ErrorType;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BaseErrorController extends BaseController implements ErrorController {

    @Override
    public String getErrorPath() {
        return "/error";
    }

    @RequestMapping("/error")
    public String handleError(HttpServletRequest request, Model model) {
        Integer statusCode = (Integer) request.getAttribute("javax.servlet.error.status_code");
        model.addAttribute("status", new ErrorType(statusCode));
        return "Error/index";
    }

    @RequestMapping("/404")
    public String errorNotFound(Model model) {
        model.addAttribute("status", new ErrorType(404));
        return "Error/index";
    }

}
