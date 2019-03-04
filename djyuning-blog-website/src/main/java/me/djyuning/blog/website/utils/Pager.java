package me.djyuning.blog.website.utils;

public class Pager {

    // URL
    private String url;
    // 数据总数
    private long rowsTotal;
    // 每页显示数据条数
    private long pageSize;
    // 当前显示第几页
    private long pageNow;
    // 每页显示条数
    private long pageNum;
    // 分页模板
    private String tpl;

    public Pager() {
    }

    public String getUrl() {
        return url;
    }

    // 计算分页总数
    public long pageTotal() {
        return (long) Math.floor(this.rowsTotal / this.pageSize);
    }

    // 输出分页代码
    public String pageOut() {
        String out = "<ul class=\"pagination post-pagination\">";

        if (this.pageNow > this.pageNum) {
            out += "<li><a href=\"" + this.url + "\">首页</a></li>";
            out += "<li><a href=\"" + this.url + "?p=" + (Math.max(1, (this.pageNow - 1))) + "\">上一页</a></li>";
        }

        long pageStart = 1;
        if (this.pageNow > this.pageNum) {
            pageStart = this.pageNow - (this.pageNum / 2);
        }
        long pageEnd = Math.min(pageStart + this.pageNum, this.pageTotal());
        for (long i = pageStart; i <= pageEnd; i++) {
            if (this.pageNow == i) {
                out += "<li class=\"active\">";
            } else {
                out += "<li>";
            }
            out += "<a href=\"" + this.url + "?p=" + i + "\">" + i + "</a>";
            out += "</li>";
        }

        if (this.pageNow < this.pageTotal()) {
            out += "<li><a href=\"" + this.url + "?p=" + (Math.min(this.pageTotal(), (this.pageNow + 1))) + "\">下一页</a></li>";
        }
        out += "<li><a href=\"" + this.url + "?p=" + this.pageTotal() + "\">最后一页</a></li>";

        out += "</ul>";

        return out;
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

    public String getTpl() {
        return tpl;
    }

    public void setTpl(String tpl) {
        this.tpl = tpl;
    }
}
