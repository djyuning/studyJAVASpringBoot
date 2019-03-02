package me.djyuning.blog.beans;

import java.io.Serializable;

public class SessionApp implements Serializable {
    // 序列化ID
    private static final long serialVersionUID = 8087173753716322056L;

    // 站点名称
    private String title;
    // 站点关键字
    private String keyword;
    // 站点描述
    private String description;
    // 网站 URL
    private String url;
    // 备案号
    private String record;
    // 管理员邮箱
    private String adminEmail;
    // 版权归属
    private String copyright;
    // 版权有效期
    private String copyrightValidity;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getRecord() {
        return record;
    }

    public void setRecord(String record) {
        this.record = record;
    }

    public String getAdminEmail() {
        return adminEmail;
    }

    public void setAdminEmail(String adminEmail) {
        this.adminEmail = adminEmail;
    }

    public String getCopyright() {
        return copyright;
    }

    public void setCopyright(String copyright) {
        this.copyright = copyright;
    }

    public String getCopyrightValidity() {
        return copyrightValidity;
    }

    public void setCopyrightValidity(String copyrightValidity) {
        this.copyrightValidity = copyrightValidity;
    }



}
