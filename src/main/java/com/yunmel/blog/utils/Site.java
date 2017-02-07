package com.yunmel.blog.utils;


/**
 * Created by xu on 2017/2/7.
 */
public class Site {

    public static String theme = "default";

    public static String templete = "default";

    public static final String getResPath(){
        return "/assert/theme/" + theme;
    }

}
