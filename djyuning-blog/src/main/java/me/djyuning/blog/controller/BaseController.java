package me.djyuning.blog.controller;

import me.djyuning.blog.beans.SessionApp;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
public class BaseController {

    public SessionApp sessionApp;

    /**
     * 应用初始化检测
     */
    public void appInit(HttpServletRequest request) {
        SessionApp _sessionApp = (SessionApp) request.getSession().getAttribute("app");
        if (_sessionApp == null) {
            this.sessionApp = new SessionApp();
            this.sessionApp.setTitle("djyuning 的博客");
            this.sessionApp.setKeyword("博客,妖刀,djyuning,前端,设计师,全栈");
            request.getSession().setAttribute("app", this.sessionApp);
            System.out.println(this.sessionApp);
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
        model.addAttribute("page", pageInfo);
    }
}
