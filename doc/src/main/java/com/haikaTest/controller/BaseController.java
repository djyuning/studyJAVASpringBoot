package com.haikaTest.controller;

import java.util.Map;

public class BaseController {

    // 全局模板数据
    void commonData(Map<String, Object> asset) {
        asset.put("copyright", "HaiKa Front-end XuYuzhong");
    }

}
