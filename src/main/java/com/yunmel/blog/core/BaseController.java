package com.yunmel.blog.core;

import com.yunmel.blog.utils.Site;

/**
 * Created by xu on 2017/2/7.
 */
public class BaseController {

    /**
     * 返回前端页面
     * @param path
     * @return
     */
    protected String site(String path) {
        return "site/" + Site.templete + "/" + path;
    }

    /**
     * 返回后端页面
     * @param path
     * @return
     */
    protected String admin(String path) {
        return "admin/" + path;
    }

}
