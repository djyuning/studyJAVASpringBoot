package me.djyuning.blog.beans;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Contents {

    // 表名
    public static final String TABLE_NAME = "contents";

    // ID
    private int id;
    // 分类 ID
    private int cid;
    // 作者 ID
    private int aid;
    // 标题
    private String title;
    // 概述
    private String overview;
    // 封面
    private String cover;
    // 正文
    private String contents;
    // 创建日期
    private String created_at;
    // 更新日期
    private String update_at;
    // 密码
    private String password;
    // 状态 0 草稿 | 1 已发布
    private short status;

    // 分类
    private Category category;

    // 作者
    private User author;

    public Contents() {
    }

    public Contents(int cid, int aid, String title, String overview, String cover, String contents, String created_at, String update_at, String password, short status) {
        this.cid = cid;
        this.aid = aid;
        this.title = title;
        this.overview = overview;
        this.cover = cover;
        this.contents = contents;
        this.created_at = created_at;
        this.update_at = update_at;
        this.password = password;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getAid() {
        return aid;
    }

    public void setAid(int aid) {
        this.aid = aid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getContents() {
        return contents;
    }

    public void setContents(String contents) {
        this.contents = contents;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        if (created_at == null) {
            created_at = new SimpleDateFormat("yyyy-MM-dd hh:ii:ss").format(new Date());
        }
        this.created_at = created_at;
    }

    public String getUpdate_at() {
        return update_at;
    }

    public void setUpdate_at(String update_at) {
        if (update_at == null) {
            update_at = new SimpleDateFormat("yyyy-MM-dd hh:ii:ss").format(new Date());
        }
        this.update_at = update_at;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }
}
