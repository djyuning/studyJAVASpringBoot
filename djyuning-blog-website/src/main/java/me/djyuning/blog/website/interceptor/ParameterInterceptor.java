package me.djyuning.blog.website.interceptor;

import me.djyuning.blog.beans.SessionApp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class ParameterInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    public SessionApp sessionApp;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        // 获取分页
        String queryPageNow = request.getParameter("p");
        long pageNow = queryPageNow == null ? 1 : Integer.valueOf(queryPageNow);
        modelAndView.addObject("pageNow", pageNow);

        // 读取 APP 信息
        String _sessionAppName = "app";
        HttpSession session = request.getSession();

        this.sessionApp = (SessionApp) session.getAttribute(_sessionAppName);

        if (this.sessionApp == null) {
            this.sessionApp = new SessionApp();
            this.sessionApp.setTitle("djyuning 的博客");
            this.sessionApp.setKeyword("博客,妖刀,djyuning,前端,设计师,全栈");
            this.sessionApp.setCopyright("tPeriod Tech");
            this.sessionApp.setCopyrightValidity("2011 - " + new SimpleDateFormat("yyyy").format(new Date()));
            session.setMaxInactiveInterval(30);
            session.setAttribute(_sessionAppName, this.sessionApp);
        }

        modelAndView.addObject("app", this.sessionApp);

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
