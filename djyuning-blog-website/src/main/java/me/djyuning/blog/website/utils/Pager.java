package me.djyuning.blog.website.utils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class Pager {

    // URL
    private String url;
    // 分页参数
    @Value("${pager.param}")
    private String query;
    // 数据总数
    private long rowsTotal;
    // 每页显示数据条数
    @Value("${pager.size}")
    private long pageSize;
    // 当前显示第几页
    private long pageNow;
    // 每页显示条数
    @Value("${pager.num}")
    private long pageNum;

    // 计算分页总数
    private long pageTotal() {
        return (long) Math.ceil((float) rowsTotal / pageSize);
    }

    // 输出分页代码
    public String create() {
        // 如果小于不足 1 页，则不予显示
        if (pageTotal() <= 1) return "";

        String out = "<ul class=\"pagination post-pagination\">";

        if (pageNow > 1) {
            out = out.concat("<li><a href=\"" + this.url + "\">首页</a></li>");
            out = out.concat("<li><a href=\"" + this.url + "?p=" + (Math.max(1, (this.pageNow - 1))) + "\">上一页</a></li>");
        }

        // 创建页码
        out = out.concat(pages());

        if (pageNow < pageTotal()) {
            out = out.concat("<li><a href=\"" + this.url + "?p=" + (Math.min(this.pageTotal(), (this.pageNow + 1))) + "\">下一页</a></li>");
            out = out.concat("<li><a href=\"" + this.url + "?p=" + this.pageTotal() + "\">最后一页</a></li>");
        }

        out = out.concat("</ul>");

        return out;
    }

    // 创建页码
    private String pages() {
        String pages = "";

        // 起始页码
        long offset = (long) Math.ceil((float) pageNum / 2);
        long start = 0;
        if (pageNow < pageNum) {
            start = 0;
        } else if (pageNow > pageTotal() - pageNum) {
            start = pageTotal() - pageNum;
        } else {
            start = pageNow - offset;
        }

        long end = Math.min(start + pageNum, pageTotal());

        // 创建分页
        for (; start < end; start++) {
            long p = start + 1;
            pages = pages.concat(pageNow == p ? "<li class=\"active\">" : "<li>");
            pages = pages.concat("<a href=\"" + href(p) + "\">" + p + "</a>");
            pages = pages.concat("</li>");
        }

        return pages;
    }

    private String href(long page) {
        query = query == null ? "p" : query;
        return url + "?" + query + "=" + page;
    }

    ////////////////////////////////////////////////////////


    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public long getRowsTotal() {
        return rowsTotal;
    }

    public void setRowsTotal(long rowsTotal) {
        this.rowsTotal = rowsTotal;
    }

    public long getPageSize() {
        return pageSize;
    }

    public void setPageSize(long pageSize) {
        this.pageSize = pageSize;
    }

    public long getPageNow() {
        return pageNow;
    }

    public void setPageNow(long pageNow) {
        this.pageNow = pageNow;
    }

    public long getPageNum() {
        return pageNum;
    }

    public void setPageNum(long pageNum) {
        this.pageNum = pageNum;
    }
}
