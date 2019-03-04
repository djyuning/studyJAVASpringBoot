package me.djyuning.blog.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Category {

    // 表名
    public static final String TABLE_NAME = "category";

    // 默认查询字段
    public static final String FIELDS = "id,pid,sort,name,alias,remark,status,created_at";

    // ID
    private int id;

    // 父级 ID
    private int pid;

    // 排序
    private int sort;

    // 分类名称
    private String name;

    // 分类别名
    private String alias;

    // 备注
    private String remark;
    // 创建日期
    private String created_at;
    // 最后更新日期
    private String update_at;
    // 状态
    private short status;

    public Category() {
    }

    // 使用基础信息实例化
    public Category(int pid, String name, String alias, String remark, short status) {
        this.pid = pid;
        this.name = name;
        this.alias = alias;
        this.remark = remark;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public int getSort() {
        return sort;
    }

    public void setSort(int sort) {
        this.sort = sort;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
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

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }
}
