package me.djyuning.blog.controller;

import me.djyuning.blog.beans.SessionApp;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class BaseController {

    public SessionApp sessionApp;

    /**
     * 应用初始化检测
     */
    public void appInit(HttpServletRequest request) {
        String _sessionAppName = "app";
        HttpSession session = request.getSession();

        this.sessionApp = (SessionApp) session.getAttribute(_sessionAppName);

        if (this.sessionApp == null) {
            this.sessionApp = new SessionApp();
            this.sessionApp.setTitle("djyuning 的博客");
            this.sessionApp.setKeyword("博客,妖刀,djyuning,前端,设计师,全栈");
            this.sessionApp.setCopyright("tPeriod Tech");
            this.sessionApp.setCopyrightValidity("2011 - "+ new SimpleDateFormat("yyyy").format(new Date()));

            session.setMaxInactiveInterval(30);
            session.setAttribute(_sessionAppName, this.sessionApp);
        }

    }

    /**
     * 格式化页面信息
     *
     * @param request HttpServletRequest
     * @param page    页面对应的信息对象
     * @param model   模型上下文，为模板赋值
     */
    public void pageInit(HttpServletRequest request, Map page, Model model) {
        this.appInit(request);

        Map<String, String> pageInfo = new HashMap<>();
        pageInfo.put("title", page.get("title") + " - " + this.sessionApp.getTitle());

        model.addAttribute("app", this.sessionApp);
        model.addAttribute("pageInfo", pageInfo);
    }
}
