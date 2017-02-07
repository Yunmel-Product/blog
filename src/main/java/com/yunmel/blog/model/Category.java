package com.yunmel.blog.model;

/**
 * Created by xu on 2017/2/7.
 */
public class Category {

    private String id;
    private String name;

    public Category(){}

    public Category(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
