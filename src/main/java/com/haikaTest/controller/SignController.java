package com.haikaTest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@Controller
@RequestMapping("/Sign")
public class SignController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {

        return "Sign/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public void loginCheck(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect(request.getContextPath() + "/");
    }

}
