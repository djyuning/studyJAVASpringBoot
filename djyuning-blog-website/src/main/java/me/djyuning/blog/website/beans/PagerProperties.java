package me.djyuning.blog.website.beans;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class PagerProperties {

    // 每次显示页数
    @Value("${pager.num}")
    private long num;

    // 每页显示数据条数
    @Value("${pager.size}")
    private long size;

    // 地址栏参数取值
    @Value("${pager.param}")
    private String param;

    public long getNum() {
        return num;
    }

    public void setNum(long num) {
        this.num = num;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public String getParam() {
        return param;
    }

    public void setParam(String param) {
        this.param = param;
    }
}
