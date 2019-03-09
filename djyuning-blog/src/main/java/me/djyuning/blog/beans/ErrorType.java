package me.djyuning.blog.beans;

import org.springframework.stereotype.Component;

@Component
public class ErrorType {
    // 代码
    private Integer code;
    // 标题
    private String title;
    // 描述
    private String description;

    public ErrorType() {}

    public ErrorType(Integer code, String title, String description) {
        this.code = code;
        this.title = title;
        this.description = description;
    }

    public ErrorType(Integer code) {
        switch (code) {

            case 403:
                this.code = 403;
                this.title = "403 Forbidden";
                this.description = "Access to this resource on the server is denied!";
                break;

            case 404:
                this.code = 404;
                this.title = "404 Not Found";
                this.description = "所请求的页面不存在或已被删除！";
                break;

            case 500:
                this.code = 500;
                this.title = "HTTP-Internal Server Error";
                this.description = "服务器内部错误，请联系系统管理员！";
                break;

            default:
                this.code = code;
                this.title = null;
        }

    }

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
