package com.haikaTest.interceptor;

import com.haikaTest.beans.User;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        if (request.getRequestURI().contains("/user")) {
            User loginUser = (User) request.getSession().getAttribute("user");
            if (loginUser == null) {
                response.sendRedirect(request.getContextPath() + "/Sign/login");
                return false;
            }
        }
        return true;
    }

}
