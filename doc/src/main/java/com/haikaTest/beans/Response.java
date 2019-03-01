package com.haikaTest.beans;

public class Response<T> {
    // 状态码
    private String code = "000000";

    // 状态消息
    private String msg = "Success";

    // 数据
    private T data;

    public Response() {}

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
